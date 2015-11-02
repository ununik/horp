<?php
function __autoload($name){
    include_once("../../models/Classes/$name.class.php");
}
$ip = $_SERVER["REMOTE_ADDR"];
$eshop = new Eshop();
if($eshop->checkIPBasket($ip) == false) {
    $eshop->newBasket($ip);
}
$basket = $eshop->getBasket($ip);

$items = explode("_;_", $basket['item']);
$count = explode("_;_", $basket['count']);

$num = 0;
for($number = 0; $number < count($items); $number++){
    if($items[$number] == $_GET['id']) {
    }else{
        $countNew[$num] = $count[$number];
        $itemsNew[$num] = $items[$number];
        $num++;
    }

}


$items = implode("_;_", $itemsNew);
$count = implode("_;_", $countNew);

$eshop->addToBasket($count, $items, $ip);

$item = $eshop->getItem($_GET['id']);

echo "{$item['cz']} - úspěšně odstraněno z košíku";