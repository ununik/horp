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
$eshop = new Eshop();
$eshop_nav = $eshop->getAllCategories();
if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
    $eshop_navigation = "<li><a href='index.php?page=eshop&subpage=basket'>Basket</a></li>";
    $eshop_navigation .= "<li class='nav_basket'><a href='index.php?page=eshop&subpage=jak_nakupovat'>How to shopping</a></li>";
    $nahoru = "up";
}else{
    $eshop_navigation = "<li><a href='index.php?page=eshop&subpage=basket'>Košík</a></li>";
    $eshop_navigation .= "<li class='nav_basket'><a href='index.php?page=eshop&subpage=jak_nakupovat'>Jak nakupovat</a></li>";
    $nahoru = "nahoru";
}
foreach($eshop_nav as $nav){
    $eshop_navigation .= "<li>$nav[$lang]";
        $subcategory = $eshop->getAllSubcategories($nav['id']);
        $eshop_navigation .= "<ul>";
        foreach($subcategory as $subcategory){
            $eshop_navigation .= "<li><a href='index.php?page=eshop&category={$subcategory["id"]}'>$subcategory[$lang]</a></li>";
        }
        $eshop_navigation .= "</ul>";
    $eshop_navigation .= "</li>";
}

/**
 * PAGE CONTENT
 */

if(isset($_GET['category']) && $_GET['category'] != ""){
    if(isset($_GET['order']) && $_GET['order']!=""){
        $order = $_GET['order'];
    } else{
        $order = 'cena';
    }
    $body = include_once('controllers/eshop/category.php');
}elseif(isset($_GET['subpage']) && $_GET['subpage'] == "basket"){
    $body = include('controllers/eshop/basket.php');
}elseif(isset($_GET['subpage']) && $_GET['subpage'] == "jak_nakupovat"){
    $body = include('views/eshop/jak_nakupovat.php');
} else {
    $body = include('views/eshop/page-home-html.php');
}

return include('views/eshop/page.php');