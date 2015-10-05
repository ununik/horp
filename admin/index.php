<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 10:29
 */
session_start();
if(isset($_GET['page']) && $_GET['page'] != ""){

}else{
    $getPage = 'home';
}
$title = 'HORP - výroba lezeckých chytů';
$content = include_once("controllers/$getPage.php");


print include_once("views/page.php  ");