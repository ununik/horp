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
$javascript .= "<script src='js/eshop.js'></script>";
/**
 * NAVIGATION
 */
$ip = $_SERVER["REMOTE_ADDR"];
$eshop = new Eshop($ip);
$eshop_nav = $eshop->getAllCategories();
if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
    $eshop_navigation = "<li class='menuEshop'><a href='index.php?page=eshop&subpage=basket'>Basket</a></li>";
    $eshop_navigation .= "<li class='menuEshop nav_basket'><a href='index.php?page=eshop&subpage=jak_nakupovat'>How to shopping</a></li>";
    $nahoru = "up";
}else{
    $eshop_navigation = "<li  class='menuEshop'><a href='index.php?page=eshop&subpage=basket'>Košík</a></li>";
    $eshop_navigation .= "<li  class='menuEshop'><a href='index.php?page=eshop&subpage=jak_nakupovat'>Jak nakupovat</a></li>";
    $eshop_navigation .= "<li class='menuEshop nav_basket'><a href='index.php?page=eshop&subpage=obchodni_podminky'>Obchodní podmínky</a></li>";
    $nahoru = "nahoru";
}
$i = 0;
foreach($eshop_nav as $nav){
	$i++;
	$eshop_navigation .= "<li id='navigation_$i'>";
	$eshop_navigation .= "</li>";
    $eshop_navigation .= "<li>$nav[$lang]";
        $subcategory = $eshop->getAllSubcategories($nav['id']);
        $eshop_navigation .= "<ul>";
        foreach($subcategory as $subcategory){
            if(isset($_GET['category']) && $_GET['category'] == $subcategory["id"]){
                $eshop_navigation .= "<li class='active_eshop_navigation'><a href='index.php?page=eshop&category={$subcategory["id"]}'>$subcategory[$lang]</a></li>";
            }else{
                $eshop_navigation .= "<li><a href='index.php?page=eshop&category={$subcategory["id"]}'>$subcategory[$lang]</a></li>";
            }
        }
        $eshop_navigation .= "</ul>";
    $eshop_navigation .= "</li>";
}
/**
 * PAGE CONTENT
 */

if(isset($_GET['category']) && $_GET['category'] != ""){
	if(!isset($_GET['id']) || $_GET['id']==""){
	    if(isset($_GET['order']) && $_GET['order']!=""){
	        $order = $_GET['order'];
	    } else{
	        $order = 'cena';
	    }
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
    $body = include('views/eshop/page-home-html.php');
}

return include('views/eshop/page.php');