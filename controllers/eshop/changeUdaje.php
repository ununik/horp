<?php
function __autoload($name){
    include_once("../../models/Classes/$name.class.php");
}
$ip = $_SERVER["REMOTE_ADDR"];
$eshop = new Eshop($ip);

$value = $_GET['value'];
$input = $_GET['input'];
$eshop->changeUdaje($value, $input, $ip);
echo ":P";
