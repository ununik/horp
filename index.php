<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 10:29
 */
ini_set('error_reporting', E_ALL);

if($_SERVER['HTTP_HOST'] == 'localhost' || $_SERVER['HTTP_HOST'] == '127.0.0.1') {
    define('WWW', 'http://localhost/horp');
}else{
    define('WWW', 'http://test.horp.cz');
}
session_start();
$title = '';
function __autoload($name){
    include_once("models/Classes/$name.class.php");
}


if(isset($_GET['page']) && $_GET['page'] != ""){
    $getPage = $_GET['page'];
}else{
    $getPage = 'home';
}
$javascript = "<script src='".WWW."/js/ajax.js'></script>";
$javascript .= "<script src='".WWW."/js/language.js'></script>";
$javascript .= '<script src="'.WWW.'/js/jquery-1.7.2.min.js"></script>
                <script src="'.WWW.'/js/lightbox.js"></script>';
$background = "background1.png";
if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
    $subtitle = 'Climbing holds production';
}else{
    $subtitle = 'Výroba lezeckých chytů';
}
$footer = include_once("controllers/footer.php");
$navigation = include_once("views/navigation.php");
if(file_exists("controllers/$getPage.php")){
	$content = include_once("controllers/$getPage.php");
} else {
	$content = include_once("controllers/noPageFound.php");
}

if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
    $title .= 'HORP - climbing holds production';
}else{
    $title .= 'HORP - výroba lezeckých chytů';
}
$meta = 'Výroba a prodej horolezeckých chytů.';

print include_once("views/page.php");