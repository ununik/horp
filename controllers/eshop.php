<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 11:49
 */
if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
    $lang = 'en';
}else{
    $lang = 'cz';
}
$javascript .= "<script src='".WWW."/js/eshop.js'></script>";
/**
 * NAVIGATION
 */
$ip = $_SERVER["REMOTE_ADDR"];
$eshop = new Eshop($ip);
$eshop_nav = $eshop->getAllCategories();
$basketItem = $eshop->getBasket($ip);

if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
    $eshop_navigation = "<li class='menuEshop nav_basket'><a href='".WWW."/eshop/basket'>Basket</a></li>";
    //$eshop_navigation .= "<li class='menuEshop nav_basket'><a href='index.php?page=eshop&subpage=jak_nakupovat'>How to shopping</a></li>";
    $nahoru = "top";
    $razeni = 'Sort';
    $podleCeny = 'by price';
    $podleVelikosti = 'by size';
    $rozmery = 'dimensions';
    $montazniPrvek = 'hardware';
    $cenaZaKus = 'price per 1 piece';
    $bezDPH = 'without tax';
    $sDPH = 'with tax';
    $pocetKusu = 'quantity';
    $poznamka = 'comment';
    $popis = 'description';
    $daleDoporucujeme = 'Recommends';
    $languageForDb = "EN";
    $mena = 'EUR';
}else{
    $eshop_navigation = "<li  class='menuEshop'><a href='".WWW."/eshop/basket'>Košík</a></li>";
    $eshop_navigation .= "<li  class='menuEshop'><a href='".WWW."/eshop/jak_nakupovat'>Jak nakupovat</a></li>";
    $eshop_navigation .= "<li class='menuEshop nav_basket'><a href='".WWW."/eshop/obchodni_podminky'>Obchodní podmínky</a></li>";
    $nahoru = "nahoru";
    $razeni = 'Řazení';
    $podleCeny = 'podle ceny';
    $podleVelikosti = 'podle velikosti';
    $rozmery = 'rozměry';
    $montazniPrvek = 'montážní prvek';
    $cenaZaKus = 'cena za 1ks';
    $bezDPH = 'bez DPH';
    $sDPH = 's DPH';
    $pocetKusu = 'počet kusů';
    $poznamka = 'poznámka';
    $popis = 'popis';
    $daleDoporucujeme = 'Dále doporučujeme';
    $languageForDb = "";
    $mena = 'Kč';
}
$menaArray = array('' => 'Kč', 'EN' => 'EUR');
$i = 0;
foreach($eshop_nav as $nav){
	$i++;
	$eshop_navigation .= "<li id='navigation_$i'>";
	$eshop_navigation .= "</li>";
    $eshop_navigation .= "<li>$nav[$lang]";
        $subcategory = $eshop->getAllSubcategories($nav['id']);
        $eshop_navigation .= "<ul>";
        foreach($subcategory as $subcategory){
        	if($subcategory["active"] != false) {
	            if(isset($_GET['category']) && $_GET['category'] == $subcategory["id"]){
	                $eshop_navigation .= "<li class='active_eshop_navigation'><a href='".WWW."/eshop/category/{$subcategory["id"]}/'>$subcategory[$lang]</a></li>";
	            }else{
	                $eshop_navigation .= "<li><a href='".WWW."/eshop/category/{$subcategory["id"]}/'>$subcategory[$lang]</a></li>";
	            }
        	}
        }
        $eshop_navigation .= "</ul>";
    $eshop_navigation .= "</li>";
}
/**
 * PAGE CONTENT
 */
$allImages = "";
if(isset($_GET['category']) && $_GET['category'] != ""){
	if(!isset($_GET['id']) || $_GET['id']==""){
	    if(isset($_GET['order']) && $_GET['order']!=""){
	        $order = $_GET['order'];
	    } else{
	        $order = 'cena';
	    }
	    $allImages = include_once('controllers/eshop/allItemsOnOneSite.php');
	    $body = include_once('controllers/eshop/category.php');
	}else{
		$body = include_once('controllers/eshop/item.php');
	}

}elseif(isset($_GET['subpage']) && $_GET['subpage'] == "basket"){
    $body = include('controllers/eshop/basket.php');
}elseif(isset($_GET['subpage']) && $_GET['subpage'] == "jak_nakupovat"){
    $body = include('views/eshop/jak_nakupovat.php');
}elseif(isset($_GET['subpage']) && $_GET['subpage'] == "obchodni_podminky"){
    $body = include('views/eshop/obchodni_podminky.php');
} elseif(isset($_GET['subpage']) && $_GET['subpage'] == "end"){
	$body = include('views/eshop/end.php');
}else {
    $body = include('controllers/eshop/page-home.php');
}

return include('views/eshop/page.php');