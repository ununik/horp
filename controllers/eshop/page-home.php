<?php
if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
	$vyberSiMenu = 'You can select currency:';
} else {
	$vyberSiMenu = 'Můžete si vybrat měnu:';
}
if($basketItem['mena'] == "EN")
{
	$activeCurrencyKC = '';
	$activeCurrencyEUR = ' activeCurrency';
} else {
	$activeCurrencyKC = ' activeCurrency';
	$activeCurrencyEUR = '';
}
return include('views/eshop/page-home-html.php');