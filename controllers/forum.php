<?php
$title = "Diskuzní fórum | HORP - výroba lezeckých chytů";
$javascript .= "<script src='".WWW."/js/forum.js'></script>";


if(isset($_GET['subpage']) && $_GET['subpage']!=""){
	$pageContent = include 'controllers/forum/' . $_GET['subpage'] . '.php';
} else {
	$pageContent = '';
}

return include 'views/forum/basic.php';