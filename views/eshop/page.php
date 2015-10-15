<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 12:15
 */
$container = "<div id='eshop_panel'></div><script>showBasket()</script><ul id='eshop_navigation'>$eshop_navigation</ul><div id='successMessage'></div>";

$container .= "$body";

return $container;