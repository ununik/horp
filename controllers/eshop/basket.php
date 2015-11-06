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

$items = array();
$number = -1;
$celkovaCena['sDPH'] = 0;
$celkovaCena['bezDPH'] = 0;
$celkovaHmotnost = 0;
for($num = 0; $num < count($itemsAll); $num++){
    if($itemsAll[$num] != "" && $countAll[$num] != "" && $countAll[$num] != "0" ) {
        $number++;
        $thisItem = $eshop->getItem($itemsAll[$num]);

        $items[$number]['item'] = $thisItem['cz'];
        $items[$number]['subcategory'] = $eshop->getSubcategory($thisItem['subcategory']);
        $items[$number]['subcategory'] = $items[$number]['subcategory']['category'];
        $items[$number]['category'] = $eshop->getCategory($items[$number]['subcategory']);
        $items[$number]['category'] = $items[$number]['category']['cz'];
        $items[$number]['id'] = $itemsAll[$num];
        $items[$number]['count'] = $countAll[$num];
        $items[$number]['cenaZaKusBezDPH'] = number_format($thisItem['cenaBezDPH'], 2, '.', '');
        $items[$number]['cenaZaKusSDPH'] = number_format($thisItem['cenaSDPH'], 2, '.', '');
        $items[$number]['cenaBezDPH'] = number_format($countAll[$num]*$thisItem['cenaBezDPH'], 2, '.', '');
        $items[$number]['cenaSDPH'] = number_format($countAll[$num]*$thisItem['cenaSDPH'], 2, '.', '');
        $celkovaCena['sDPH'] += $items[$number]['cenaSDPH'];
        $celkovaCena['bezDPH'] += $items[$number]['cenaBezDPH'];
        $celkovaHmotnost += $thisItem['hmotnost']*$items[$number]['count'];
    }
}
$celkovaCena['sDPH'] = number_format($celkovaCena['sDPH'], 2, '.', '');
    $celkovaCena['bezDPH'] = number_format($celkovaCena['bezDPH'], 2, '.', '');
$celkovaHmotnostKg = $celkovaHmotnost/1000;
$celkovaHmotnostKg = number_format($celkovaHmotnostKg, 2, ',', '');
$doprava = include('controllers/eshop/doprava_radio.php');


return include_once('views/eshop/basket-html.php');