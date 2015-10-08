<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 15:50
 */
$ip = $_SERVER["REMOTE_ADDR"];
if($eshop->checkIPBasket($ip)) {
    $eshop->newBasket($ip);
}
$basketItem = $eshop->getBasket($ip);


$itemsAll = explode("_;_", $basketItem['item']);

$countAll = explode("_;_", $basketItem['count']);

$colorAll = explode("_;_", $basketItem['color']);

$items = array();
$number = -1;
$celkovaCena['sDPH'] = 0;
$celkovaCena['bezDPH'] = 0;
for($num = 0; $num < count($itemsAll); $num++){
    if($itemsAll[$num] != "" && $countAll[$num] != "" && $countAll[$num] != "0" ) {
        $number++;
        $thisItem = $eshop->getItem($itemsAll[$num]);

        $items[$number]['item'] = $thisItem['cz'];
        $items[$number]['id'] = $itemsAll[$num];
        $items[$number]['colorId'] = $colorAll[$num];
        $items[$number]['barva'] = $eshop->getColor($colorAll[$num])['cz'];
        $items[$number]['color'] = $eshop->getColor($colorAll[$num])['color'];
        $items[$number]['count'] = $countAll[$num];
        $items[$number]['cenaZaKusBezDPH'] = number_format($thisItem['cenaBezDPH'], 2, '.', '');
        $items[$number]['cenaZaKusSDPH'] = number_format($thisItem['cenaSDPH'], 2, '.', '');
        $items[$number]['cenaBezDPH'] = number_format($countAll[$num]*$thisItem['cenaBezDPH'], 2, '.', '');
        $items[$number]['cenaSDPH'] = number_format($countAll[$num]*$thisItem['cenaSDPH'], 2, '.', '');
        $celkovaCena['sDPH'] += $items[$number]['cenaSDPH'];
        $celkovaCena['bezDPH'] += $items[$number]['cenaBezDPH'];
    }
}
$celkovaCena['sDPH'] = number_format($celkovaCena['sDPH'], 2, '.', '');
    $celkovaCena['bezDPH'] = number_format($celkovaCena['bezDPH'], 2, '.', '');
$doprava = include('controllers/eshop/doprava_radio.php');


return include_once('views/eshop/basket-html.php');