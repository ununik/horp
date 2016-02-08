<?php


function __autoload($name){
include_once("../../models/Classes/$name.class.php");
}
session_start();
if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
	$obsahKosiku = 'Basket';
	$polozek = 'items';
	$mena = 'EUR';
	$languageDB = 'EN';
} else {
	$obsahKosiku = 'Obsah košíku';
	$polozek = 'položek';
	$mena = 'Kč';
	$languageDB = '';
}
$ip = $_SERVER["REMOTE_ADDR"];
$eshop = new Eshop($ip);
$basket = $eshop->getBasket($ip);

$items = explode("_;_", $basket['item']);

$count = explode("_;_", $basket['count']);

$howMuch = 0;
$manyItems = count($items);
for($number = 0; $number < $manyItems; $number++){
    $thisItem = $eshop->getItem($items[$number]);
    $howMuch += $count[$number]*$thisItem['cenaSDPH'.$basket['mena']];
}

$manyItems--;

$howMuch = number_format($howMuch, 2, '.', '');
$menaArray = array('' => 'Kč', 'EN' => 'EUR');


echo "$obsahKosiku:<p><b>$manyItems</b> $polozek<br><b>$howMuch {$menaArray[$basket['mena']]}</b></p>";