<?php

$background = "background3.png";
$psc = '407 22';
$email = 'horp@seznam.cz';
$name = 'Petr Horyna';

if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
    $header = "Contact";
    $street = 'Valkericka 536';
    $city = 'Benesov nad Ploucnici';
    $mobil1 = "";
    $mobil2 = "";
    $title = "Contact | HORP - climbing holder making";
}else{
    $header = "Kontakt";
    $street = 'Valkeřická 536';
    $city = 'Benešov nad Ploučnicí';
    $mobil1 = "+420 605 008 341";
    $mobil2 = "+420 724 435 349";
    $title = "Kontakt | HORP - výroba lezeckých chytů";
}

$content = include_once('views/contact/contact-html.php');
return $content;