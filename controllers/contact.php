<?php
$psc = '407 22';
$email = 'horp@seznam.cz';
$name = 'Petr Horyna';

if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
    $header = "Contact";
    $street = 'Valkericka 536';
    $city = 'Benesov nad Ploucnici';
    $mobil1 = "";
    $mobil2 = "";
}else{
    $header = "Contact";
    $street = 'Valkeřická 536';
    $city = 'Benešov nad Ploučnicí';
    $mobil1 = "+420 605 008 341";
    $mobil2 = "+420 724 435 349";
}

$content = include_once('views/contact/contact-html.php');
return $content;