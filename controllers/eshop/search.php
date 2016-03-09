<?php
$noUsefull = array(".", ",", "-", "_", "'", '"', "?", "!", "@", "/");
if(!isset($_GET['search'])) {
    $searchWords = ' ';
} else {
    $searchWords = $_GET['search'];
}
$search = explode(" ", strtolower(str_replace($noUsefull, " ",$searchWords)));

$result = array();
foreach ($search as $word) {
    $word = str_replace(" ", "", $word);
    
    if($word == "") {
        continue;
    }
    
   array_push($result, $eshop->searchInItems($word));
   $result = unique_multidim_array($result, 'id');
}
if(isset($result[0])) {
    $AllItems = $result[0];
    $items = array();
    $i = 0;
    foreach($AllItems as $item) {
        $items[$i] = $item;
        $i++;
    }
} else {
    $items = array();
}



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

if(isset($_GET['pageNumber']) && $_GET['pageNumber']!=""){
    $eshop->pageNumber = $_GET['pageNumber'];
}

$order = 'search';
return include('views/eshop/searchResult.php');