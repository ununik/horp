<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 13:56
 */
$subcategory = $eshop->getSubcategory($_GET['category']);
$category = $eshop->getCategory($subcategory['category']);

$items = $eshop->getItems($subcategory['id'], $order);
if(isset($_GET['pageNumber']) && $_GET['pageNumber']!=""){
    $eshop->pageNumber = $_GET['pageNumber'];
}

$title = $subcategory[$lang] . ' | ';

$itemsOnPage = array(6, 12, 21, 45, 60, 90);
$itemOnPageOptions = '';
foreach($itemsOnPage as $item) {
    $itemOnPageOptions .= '<option value="' . $item .'" ';
    if(isset($_SESSION['itemsOnPage']) && $_SESSION['itemsOnPage'] == $item) {
        $itemOnPageOptions .= 'selected';
        $eshop->titlesOnPage = $item;
    }
    $itemOnPageOptions .= '>' . $item . '</option>';
}

return include_once('views/eshop/items-list.php');