<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 10:31
 */
if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){

    return "en";
}else{
    return "cz";
}