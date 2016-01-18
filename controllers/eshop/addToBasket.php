<?php
function __autoload($name){
    include_once("../../models/Classes/$name.class.php");
}
$ip = $_SERVER["REMOTE_ADDR"];
$eshop = new Eshop($ip);
$basket = $eshop->getBasket($ip);

$items = explode("_;_", $basket['item']);

$count = explode("_;_", $basket['count']);


$saved = 0;
for($number = 0; $number < count($items); $number++){
    if($items[$number] == $_GET['id']){
        $count[$number] += $_GET['count'];
        $saved = 1;
        break;
    }
}
if($saved == 0){
    $count[count($items)] = $_GET['count'];
    $items[count($items)] = $_GET['id'];
}


$items = implode("_;_", $items);
$count = implode("_;_", $count);

$eshop->addToBasket($count, $items, $ip);

$item = $eshop->getItem($_GET['id']);

echo "{$item['cz']} - úspěšně přidáno do košíku";