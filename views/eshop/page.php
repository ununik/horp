<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 12:15
 */
$container = "<a href='index.php?page=eshop&subpage=basket'><div id='eshop_panel'></div></a><script>showBasket()</script><ul id='eshop_navigation'>$eshop_navigation</ul><div id='successMessage'></div>";

$container .= "<div id='eshop_body'>$body</div>";

return $container;