<?php
function __autoload($name){
    include_once("../../models/Classes/$name.class.php");
}
$ip = $_SERVER["REMOTE_ADDR"];
$eshop = new Eshop();
if($eshop->checkIPBasket($ip) == false) {
    $eshop->newBasket($ip);
}

$value = $_GET['value'];
$input = $_GET['input'];
$eshop->changeUdaje($value, $input, $ip);
echo ":P";
