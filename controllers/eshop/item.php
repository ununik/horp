<?php
$id = $_GET['id'];
$item = $eshop->getItem($id);

return include_once('views/eshop/item.php');