<?php
function __autoload($name){
    include_once("../../models/Classes/$name.class.php");
}
$ip = $_SERVER["REMOTE_ADDR"];
$eshop = new Eshop();
if($eshop->checkIPBasket($ip) == false) {
    $eshop->newBasket($ip);
}
$comment = $_GET['text'];


$eshop->addCommentToBasket($comment, $ip);


echo " (uloženo)";