<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 10:31
 */
$background = "background4.png";

if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
    $content = include_once('views/info/infoEN-html.php');
    $title = "Info Holds | HORP - climbing holds production";

}else{
    $content = include_once('views/info/info-html.php');
    $title = "Časté dotazy | HORP - výroba lezeckých chytů";
}


return $content;