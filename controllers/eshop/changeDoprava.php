<?php
function __autoload($name){
    include_once("../../models/Classes/$name.class.php");
}
$ip = $_SERVER["REMOTE_ADDR"];
$eshop = new Eshop($ip);
$doprava = $_GET['doprava'];
$eshop->changeDoprava($doprava, $ip);
