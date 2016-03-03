<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 14:14
 */
$body = "<h1>$subcategory[$lang]</h1>";
$body .= "<div><b>$razeni:</b> $podleCeny: <a href='".WWW."/eshop/category/{$subcategory['id']}/order/cena/' class='vzestupne'></a><a href='".WWW."/eshop/category/{$subcategory['id']}/order/cenaDESC/' class='sestupne'></a> $podleVelikosti: <a href='".WWW."/eshop/category/{$subcategory['id']}/order/velikost/' class='vzestupne'></a><a href='".WWW."/eshop/category/{$subcategory['id']}/order/velikostDESC/' class='sestupne'></a>";
if($eshop->pagesOfItems($items) > 1) {
    $body .= "<div id='strankovani_nahore'>Strana: ";
    for ($i = 1; $i <= $eshop->pagesOfItems($items); $i++) {
        if ($eshop->pageNumber == $i) {
            $body .= "<a href='".WWW."/eshop/category/{$subcategory['id']}/order/$order/pageNumber/$i/' class='activePageNumber'>$i</a>";

        } else {
            $body .= "<a href='".WWW."/eshop/category/{$subcategory['id']}/order/$order/pageNumber/$i/'>$i</a>";
        }
    }
    $body .= "</div>";
}
$body .= "<div class='horizontal_line'></div>";
$body .= '<table class="itemListTable">';
$colNumber = 0;
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
    $body .= "<img src='".WWW."/images/eshop/foto/{$items[$i]['subcategory']}/250/{$items[$i]['img1']}' class='obrazek_nahled_table'>";
    $body .= "<table class='tableForItem'><tr><td class='popisItemList'>$cenaZaKus:<br><small>($bezDPH)</small></td><td class='cenaItemList'>$cenaBezDPH {$menaArray[$basketItem['mena']]}</td></tr>";
    $body .= "<tr><td class='popisItemList'>$cenaZaKus:<br><small>($sDPH)</small></td><td class='cenaItemList'>$cenaSDPH {$menaArray[$basketItem['mena']]}</td></tr>";
    $body .= "<tr><td colspan='2' class='pocetKsTd'>
    <div class='pocetKusuAll'><input type='text' class='pocetKusuItemList' onkeypress='validateNumber(event)' id='kosik_{$items[$i]['id']}' value='1'>
    <div class='pocet_kusu_up' onclick='pocetKsPlus(\"{$items[$i]['id']}\")'></div><div class='pocet_kusu_down'  onclick='pocetKsMinus(\"{$items[$i]['id']}\")'></div></div>
    <button onclick='addToBasket({$items[$i]['id']})' class='basket'>Přidat do košíku</button>
    </td></tr></table>";
    $body .= "<a href='".WWW."/eshop/category/{$items[$i]['subcategory']}/{$items[$i]['id']}/' class='viceInfo_itemlist'>...vice informaci</a>";
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
if($colNumber < 2) {  
	for($colNumber; $colNumber < 3; $colNumber++){
		$body .= '<td></td>';
	}
	$body .= '</tr>';
}
$body .= '</table>';

    /*$body .= "<div class='item'>";
    $body .= "<h3>{$items[$i][$lang]}</h3>";
    $body .= "<table class='itemList'>";
    if($items[$i]['montazniPrvek'.$languageForDb] != "" ){
        $body .= "<tr><td class='left'>$montazniPrvek:</td><td colspan='2'>{$items[$i]['montazniPrvek'.$languageForDb]}</td>";
    }else{
    	$body .= "<tr><td class='left'></td><td colspan='2'></td>";
    }
     $body .= "<td rowspan='7' class='image_item'><div class='images_rightAlign'>";
        if($items[$i]['img1'] != "" ) {
            $body .= "<a href='".WWW."/images/eshop/foto/{$items[$i]['subcategory']}/1000/{$items[$i]['img1']}' rel='lightbox[{$items[$i]['img1']}]'>";
            $body .= "<img src='".WWW."/images/eshop/foto/{$items[$i]['subcategory']}/250/{$items[$i]['img1']}' class='obrazek'>";
            $body .= "</a>";
        }
        if($items[$i]['img2'] != "" ) {
            $body .= "<a href='".WWW."/images/eshop/foto/{$items[$i]['subcategory']}/1000/{$items[$i]['img2']}' rel='lightbox[{$items[$i]['img1']}]'>";
            $body .= "<img src='".WWW."/images/eshop/foto/{$items[$i]['subcategory']}/250/{$items[$i]['img2']}' class='obrazek_nahled'>";
            $body .= "</a>";
        }
        if($items[$i]['img3'] != "" ) {
            $body .= "<a href='".WWW."/images/eshop/foto/{$items[$i]['subcategory']}/1000/{$items[$i]['img3']}' rel='lightbox[{$items[$i]['img1']}]'>";
            $body .= "<img src='".WWW."/images/eshop/foto/{$items[$i]['subcategory']}/250/{$items[$i]['img3']}' class='obrazek_nahled'>";
            $body .= "</a>";
        }
        if($items[$i]['img4'] != "" ) {
            $body .= "<a href='".WWW."/images/eshop/foto/{$items[$i]['subcategory']}/1000/{$items[$i]['img4']}' rel='lightbox[{$items[$i]['img1']}]'>";
            $body .= "<img src='".WWW."/images/eshop/foto/{$items[$i]['subcategory']}/250/{$items[$i]['img4']}' class='obrazek_nahled'>";
            $body .= "</a>";
        }
        if($items[$i]['img5'] != "" ) {
            $body .= "<a href='".WWW."/images/eshop/foto/{$items[$i]['subcategory']}/1000/{$items[$i]['img5']}' rel='lightbox[{$items[$i]['img1']}]'>";
            $body .= "<img src='".WWW."/images/eshop/foto/{$items[$i]['subcategory']}/250/{$items[$i]['img5']}' class='obrazek_nahled'>";
            $body .= "</a>";
        }
    $body .= "</div></td></tr>";

    if($items[$i]['rozmery'.$languageForDb] != "" ){
        $body .= "<tr><td class='left'>$rozmery:</td><td colspan='2'>{$items[$i]['rozmery'.$languageForDb]}</td></tr>";
    }
    if($items[$i]['popis'.$languageForDb] != "" ){
        $body .= "<tr><td class='left'>$popis:</td><td colspan='2'>{$items[$i]['popis'.$languageForDb]}</td></tr>";
    }
    if($items[$i]['poznamka'.$languageForDb] != "" ){
        $body .= "<tr><td class='left'>$poznamka:</td><td colspan='2'>{$items[$i]['poznamka'.$languageForDb]}</td></tr>";
    }
    $body .= "<tr><td class='left'>$cenaZaKus:<br><small>($bezDPH)</small></td><td colspan='2'><strong>$cenaBezDPH {$menaArray[$basketItem['mena']]}</strong></td></tr>";
    $body .= "<tr><td class='left'>$cenaZaKus:<br><small>($sDPH)</small></td><td colspan='2'><strong>$cenaSDPH {$menaArray[$basketItem['mena']]}</strong></td></tr>";
    $body .= "<tr><td class='left'>$pocetKusu:</small></td><td class='pocet_kusu'><input type='text' onkeypress='validateNumber(event)' id='kosik_{$items[$i]['id']}' value='1'><div class='pocet_kusu_up' onclick='pocetKsPlus(\"{$items[$i]['id']}\")'></div><div class='pocet_kusu_down'  onclick='pocetKsMinus(\"{$items[$i]['id']}\")'></div></div></td><td><button onclick='addToBasket({$items[$i]['id']})' class='basket'>Přidat do košíku</button></td></tr>";
    $body .= "<tr class='doporuceni' id='doporuceni_{$items[$i]['id']}'><td colspan='4'  class='daleDoporuceno_all'>$daleDoporucujeme:<div>";
    $nextItem = explode("_;_", $items[$i]['dalsi_zbozi']);
    foreach($nextItem as $id){
    	if($id != ""){
	    	$nextItem = $eshop->getItem($id);
	    	$body .= "<a href='".WWW."/eshop/category/{$nextItem['subcategory']}/{$nextItem['id']}'><div class='doporuceni_polozka'><img src='".WWW."/images/eshop/foto/{$nextItem['subcategory']}/250/{$nextItem['img1']}' class='next_item_obrazek_nahled'><div>$nextItem[$lang]</div></div></a>";
    	}
    }
    $body .= "</div></td></tr>";
    $body .= "</table>";


    $body .= '</div>';*/
if($eshop->pagesOfItems($items) > 1) {
    $body .= "<div id='strankovani'>";
    if($eshop->pageNumber != 1){
        $previousPage = $eshop->pageNumber - 1;
        $body .= "<a href='".WWW."/eshop/category/{$subcategory['id']}/order/$order/pageNumber/$previousPage/' class='previousAndNextPage'><</a>";
    }
    for ($i = 1; $i <= $eshop->pagesOfItems($items); $i++) {
        if ($eshop->pageNumber == $i) {
            $body .= "<a href='".WWW."/eshop/category/{$subcategory['id']}/order/$order/pageNumber/$i/' class='activePageNumber'>$i</a>";

        } else {
            $body .= "<a href='".WWW."/eshop/category/{$subcategory['id']}/order/$order/pageNumber/$i/'>$i</a>";
        }
    }
    if($eshop->pageNumber != $eshop->pagesOfItems($items)){
        $nextPage = $eshop->pageNumber + 1;
        $body .= "<a href='".WWW."/eshop/category/{$subcategory['id']}/order/$order/pageNumber/$nextPage/' class='previousAndNextPage'>></a>";
    }
    $body .= "</div>";
}
$body .= "<span onclick='goNahoru()' class='nahoru'>$nahoru</span>";
return $body;