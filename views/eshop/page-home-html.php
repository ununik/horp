<?php
$body = "<h1>Eshop</h1>";
$body .= "<h2>$nejoblibenejsi</h2><div class='nejWrapper'>";
foreach ($eshop->getNejoblibenejsi() as $item) {
	$body .= "<a href='".WWW."/eshop/category={$item['subcategory']}/{$item['id']}/' class='nej'><h4>{$item[$lang]}</h4>";
	$body .= "<img src='".WWW."/images/eshop/foto/{$item['subcategory']}/250/{$item['img1']}'></a>";
}
$body .= "</div>";

$body .= "<h2>$nejprodavanejsi</h2><div class='nejWrapper'>";
foreach ($eshop->getNejprodavanejsi() as $item) {
	$body .= "<a href='index.php?page=eshop&category={$item['subcategory']}&id={$item['id']}' class='nej'><h4>{$item[$lang]}</h4>";
	$body .= "<img src='".WWW."/images/eshop/foto/{$item['subcategory']}/250/{$item['img1']}'></a>";
}
$body .= "</div>";

return $body;