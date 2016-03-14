<?php
$container = "<h1>$header</h1>";
$container .= "$body";

$container .= "<div id='imgWrapper'>";
foreach ($eshop->getPopularItem() as $item) {
	$container .= "
			<a href='".WWW."/eshop/category/{$item['subcategory']}/{$item['id']}/'>
			<img src='". WWW."/images/eshop/foto/{$item['subcategory']}/{$item['presentationImage']}' class='home_img'>
			</a>";
}
$container .= "</div>";
return $container;