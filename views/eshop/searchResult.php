<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 14:14
 */
$body = "<h1>$hledani: $searchWords</h1>";
$body .= "<div>";
$body .= "<div id='strankovani_nahore'><span class='pocetPolozekNaStranu'>Počet položek na stránku: <select onchange='changeItemsOnPage(this)'>$itemOnPageOptions</select></span>";
if($eshop->pagesOfItems($items) > 1) {
    $body .= "Strana: ";
    for ($i = 1; $i <= $eshop->pagesOfItems($items); $i++) {
        if ($eshop->pageNumber == $i) {
            $body .= "<a href='".WWW."/eshop/pageNumber/$i/search/$searchWords/' class='activePageNumber'>$i</a>";

        } else {
            $body .= "<a href='".WWW."/eshop/pageNumber/$i/search/$searchWords/'>$i</a>";
        }
    }
    
}
$body .= "</div>";
$body .= "<div class='horizontal_line'></div>";
$body .= '<table class="itemListTable">';
$colNumber = 0;
if(count($items) < 1) {
    $body .= $zadnyVysledek . '.';
} else {
for($i = $eshop->getFirstItemOnPage(); $i < $eshop->getLastItemOnPage($items); $i++){
	if ($colNumber == 0){
		$body .= '<tr>';
	}
    $cenaBezDPH = number_format($items[$i]['cenaBezDPH'.$basketItem['mena']], 2, '.', '');
    $cenaSDPH = number_format($items[$i]['cenaSDPH'.$basketItem['mena']], 2, '.', '');
//   Telo bunky 
switch ($colNumber){
        case 0:
            $body .= '<td class="itemListLEFT">';
            break;
            
        case 1:
            $body .= '<td class="itemListCENTER">';
            break;
                
        case 2:
            $body .= '<td class="itemListRIGHT">';
            break;
            
        default:
            $body .= '<td>';
    }
    $body .= "<div class='listItem'>";
    $body .= "<h4>{$items[$i][$lang]}</h4>";
    $body .= "<a href='".WWW."/eshop/category/{$items[$i]['subcategory']}/{$items[$i]['id']}/' class='viceInfo_itemlist'>"
            ."<img src='".WWW."/images/eshop/foto/{$items[$i]['subcategory']}/250/{$items[$i]['img1']}' class='obrazek_nahled_table'></a>";
    $body .= "<table class='tableForItem'><tr><td class='popisItemList'>$cenaZaKus:<br><small>($bezDPH)</small></td><td class='cenaItemList'>$cenaBezDPH {$menaArray[$basketItem['mena']]}</td></tr>";
    $body .= "<tr><td class='popisItemList'>$cenaZaKus:<br><small>($sDPH)</small></td><td class='cenaItemList'>$cenaSDPH {$menaArray[$basketItem['mena']]}</td></tr>";
    $body .= "<tr><td colspan='2' class='pocetKsTd'>
    <div class='pocetKusuAll'><input type='text' class='pocetKusuItemList' onkeypress='validateNumber(event)' id='kosik_{$items[$i]['id']}' value='1'>
    <div class='pocet_kusu_up' onclick='pocetKsPlus(\"{$items[$i]['id']}\")'></div><div class='pocet_kusu_down'  onclick='pocetKsMinus(\"{$items[$i]['id']}\")'></div></div>
    <button onclick='addToBasket({$items[$i]['id']})' class='basket'>Přidat do košíku</button>
    </td></tr></table>";
    $body .= "<a href='".WWW."/eshop/category/{$items[$i]['subcategory']}/{$items[$i]['id']}/' class='viceInfo_itemlist'>...$viceInformaci</a>";
    $body .= "</div>";
    $body .= "</td>";
//  konec tela bunky  
    if ($colNumber >= 2){
    	$body .= '</tr>';
    	$colNumber = 0;
    } else {
    	$colNumber++;
    }
}  
}
if($colNumber < 2) {  
	for($colNumber; $colNumber < 3; $colNumber++){
		$body .= '<td></td>';
	}
	$body .= '</tr>';
}
$body .= '</table>';

if($eshop->pagesOfItems($items) > 1) {
    $body .= "<div id='strankovani'>";
    if($eshop->pageNumber != 1){
        $previousPage = $eshop->pageNumber - 1;
        $body .= "<a href='".WWW."/eshop/pageNumber/$previousPage/search/$searchWords/' class='previousAndNextPage'><</a>";
    }
    for ($i = 1; $i <= $eshop->pagesOfItems($items); $i++) {
        if ($eshop->pageNumber == $i) {
            $body .= "<a href='".WWW."/eshop/pageNumber/$i/search/$searchWords/' class='activePageNumber'>$i</a>";

        } else {
            $body .= "<a href='".WWW."/eshop/pageNumber/$i/search/$searchWords/'>$i</a>";
        }
    }
    if($eshop->pageNumber != $eshop->pagesOfItems($items)){
        $nextPage = $eshop->pageNumber + 1;
        $body .= "<a href='".WWW."/eshop/pageNumber/$nextPage/search/$searchWords/' class='previousAndNextPage'>></a>";
    }
    $body .= "</div>";
}
$body .= "<span onclick='goNahoru()' class='nahoru'>$nahoru</span>";
return $body;