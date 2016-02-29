<?php
$Allitems = $eshop->getItems($_GET['category'], 'cena');
if(count($Allitems) < 6){
	$pocetSloupcu = count($Allitems);
	$pocetRadku = 1;
} else {
	$pocetSloupcu = ceil(sqrt(count($Allitems)));
	$pocetRadku = ceil(count($Allitems)/$pocetSloupcu);
}

return include 'views/eshop/allItems.php';