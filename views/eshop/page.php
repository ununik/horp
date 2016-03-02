<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 12:15
 */
$container = "<a href='".WWW."/eshop/basket/'><div id='eshop_panel'></div></a><script>showBasket()</script><ul id='eshop_navigation'>$eshop_navigation<div id='menuButton' onclick='tabletMenu()'>MENU</div></ul><div id='successMessage'></div>";

$container .= "<div id='eshop_body'>$body</div>";

$container .= $allImages;

$container.= '<script>if(window.innerWidth <= 1177){tabletMenu()}</script>';


return $container;