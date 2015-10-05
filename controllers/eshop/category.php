<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 13:56
 */
$subcategory = $eshop->getSubcategory($_GET['category']);
$category = $eshop->getCategory($subcategory['category']);

$items = $eshop->getItems($subcategory['id']);





return include_once('views/eshop/items-list.php');