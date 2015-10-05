<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 10:31
 */
if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
    $content = include_once('views/info/infoEN-html.php');

}else{
    $content = include_once('views/info/info-html.php');

}


return $content;