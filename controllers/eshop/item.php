<?php
$id = $_GET['id'];
$item = $eshop->getItem($id);

$title = $item[$lang] . ' | ';

return include_once('views/eshop/item.php');