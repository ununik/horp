<?php

$background = "background3.png";
$psc = '407 22';
$email = 'horp@seznam.cz';
$name = 'Petr Horyna';

if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
    $header = "Contact";
    $street = 'Valkericka 536';
    $city = 'Benesov nad Ploucnici';
    $state = "Czech Republic";
    $mobil1 = "";
    $mobil2 = "";
    $title = "Contact | HORP - climbing holds production";
    $account = "Account: 2600105374/2010";
    $ico = "Company registration number: 46793721";
    $dic = "TAX ID: CZ7306252371";
}else{
    $header = "Kontakt";
    $street = 'Valkeřická 536';
    $city = 'Benešov nad Ploučnicí';
    $state = "";
    $mobil1 = "+420 605 008 341";
    $mobil2 = "+420 724 435 349";
    $title = "Kontakt | HORP - výroba lezeckých chytů";
    $account = "Účet: 2600105374/2010";
    $ico = "IČO: 46793721";
    $dic = "DIČ: CZ7306252371";
}
$mapa = include_once('controllers/contact/mapa.php');
$content = include_once('views/contact/contact-html.php');
return $content;