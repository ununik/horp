<?php
$title = "Diskuzní fórum | HORP - výroba lezeckých chytů";
$javascript .= "<script src='".WWW."/js/forum.js' type=\"text/javascript\"></script>";


if(isset($_GET['subpage']) && $_GET['subpage']!=""){
	$pageContent = include 'controllers/forum/' . $_GET['subpage'] . '.php';
} else {
	$pageContent = include 'controllers/forum/home.php';
}

return include 'views/forum/basic.php';