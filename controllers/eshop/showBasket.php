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

$howMuch = 0;
$manyItems = count($items);
for($number = 0; $number < $manyItems; $number++){
    $thisItem = $eshop->getItem($items[$number]);
    $howMuch += $count[$number]*$thisItem['cenaSDPH'];
}

$manyItems--;

$howMuch = number_format($howMuch, 2, '.', '');

echo "V košíku je <b>$manyItems</b> položek za <b>$howMuch Kč</b>";