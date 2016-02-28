<?php
if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
	$vyberSiMenu = 'You can select currency:';
	$nejoblibenejsi = 'Favourite TOP 3';
	$nejprodavanejsi = 'Bestsellers TOP 3';
} else {
	$vyberSiMenu = 'Můžete si vybrat měnu:';
	$nejoblibenejsi = 'Nejoblíbenější zboží';
	$nejprodavanejsi = 'Nejprodávanější zboží';
}

return include('views/eshop/page-home-html.php');