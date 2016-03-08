<?php
function __autoload($name){
    include_once("../../models/Classes/$name.class.php");
}
session_start();
$ip = $_SERVER["REMOTE_ADDR"];
$eshop = new Eshop($ip);
$item = $eshop->getItem($_POST['id']);
$subcategory = $eshop->getSubcategory($item['subcategory']);
$category = $eshop->getCategory($subcategory['category']);

$subject = 'Dotaz - ' . $item['cz'] . ' | ' . $subcategory['cz'] . ' | ' . $category['cz'];
$message = nl2br ($_POST['message']) . '<br><br>' . $_POST['jmeno'];

$header = "From: {$_POST['email']}\r\n";
$header.= "MIME-Version: 1.0\r\n";
$header.= "Content-Type: text/html; charset=utf-8\r\n";
$header.= "X-Priority: 1\r\n";

//send email
mail('horp@seznam.cz', "$subject", $message, $header);