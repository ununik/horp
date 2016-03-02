<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 10:31
 */
$background = "background4.png";

if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
    $title = "Catalog | HORP - climbing holds production";

}else{
    $title = "Katalog | HORP - výroba lezeckých chytů";
}
$content = include_once('views/katalog/basic.php');


return $content;