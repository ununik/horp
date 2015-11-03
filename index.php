<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 10:29
 */
ini_set('error_reporting', E_ALL);
session_start();
function __autoload($name){
    include_once("models/Classes/$name.class.php");
}


if(isset($_GET['page']) && $_GET['page'] != ""){
    $getPage = $_GET['page'];
}else{
    $getPage = 'home';
}
$javascript = "<script src='js/ajax.js'></script>";
$language = explode('@', $getPage);
if(isset($language[1])){
    switch($language[1]){
        case 'en':
            $_SESSION['horp']['language'] = 'en';
            break;

        default:
            $_SESSION['horp']['language'] = 'cz';
            break;
    }
    $getPage = $language[0];
}
$language_link = "";
$background = "background1.png";
foreach($_GET as $get => $value){
    if($get != "page"){
        $language_link .= "&$get=$value";
    }
}
if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
    $subtitle = 'Climbing holds production';
    $title = 'HORP - climbing holds production';
}else{
    $subtitle = 'Výroba lezeckých chytů';
    $title = 'HORP - výroba lezeckých chytů';
}
$footer = include_once("controllers/footer.php");
$navigation = include_once("views/navigation.php");
$content = include_once("controllers/$getPage.php");


print include_once("views/page.php");