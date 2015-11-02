<?php
/**
 * Created by PhpStorm.
 * User: Martin
 * Date: 31. 10. 2015
 * Time: 7:59
 */
$authorWeb = "http://ununik.wz.cz";
if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
    $author = "author - ununik";
}else{
    $author = "autor - ununik";
}
return include_once("views/footer/footer.php");