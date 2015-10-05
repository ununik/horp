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

$color = explode("_;_", $basket['color']);

$saved = 0;
for($number = 0; $number < count($items); $number++){
    if($items[$number] == $_GET['id'] && $color[$number] == $_GET['color']){
        $count[$number] += $_GET['count'];
        $saved = 1;
        break;
    }
}
if($saved == 0){
    $count[count($items)] = $_GET['count'];
    $items[count($items)] = $_GET['id'];
    $color[count($items)] = $_GET['color'];
}


$items = implode("_;_", $items);
$count = implode("_;_", $count);
$color = implode("_;_", $color);

$eshop->addToBasket($count, $items, $color, $ip);

$item = $eshop->getItem($_GET['id']);

echo "{$item['cz']} - úspěšně přidáno do košíku";