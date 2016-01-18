<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 14:14
 */
$body = "<h1>$subcategory[$lang]</h1>";
$body .= "<div><b>Řazení:</b> podle ceny: <a href='index.php?page=eshop&category={$subcategory['id']}&order=cena' class='vzestupne'></a><a href='index.php?page=eshop&category={$subcategory['id']}&order=cenaDESC' class='sestupne'></a> podle velikosti: <a href='index.php?page=eshop&category={$subcategory['id']}&order=velikost' class='vzestupne'></a><a href='index.php?page=eshop&category={$subcategory['id']}&order=velikostDESC' class='sestupne'></a>";
if($eshop->pagesOfItems($items) > 1) {
    $body .= "<div id='strankovani_nahore'>Strana: ";
    for ($i = 1; $i <= $eshop->pagesOfItems($items); $i++) {
        if ($eshop->pageNumber == $i) {
            $body .= "<a href='index.php?page=eshop&category={$subcategory['id']}&order=$order&pageNumber=$i' class='activePageNumber'>$i</a>";

        } else {
            $body .= "<a href='index.php?page=eshop&category={$subcategory['id']}&order=$order&pageNumber=$i'>$i</a>";
        }
    }
    $body .= "</div>";
}
$body .= "<div class='horizontal_line'></div>";
for($i = $eshop->getFirstItemOnPage(); $i < $eshop->getLastItemOnPage($items); $i++){
    $cenaBezDPH = number_format($items[$i]['cenaBezDPH'], 2, '.', '');
    $cenaSDPH = number_format($items[$i]['cenaSDPH'], 2, '.', '');

    $body .= "<div class='item'>";
    $body .= "<h3>{$items[$i][$lang]}</h3>";
    $body .= "<table class='itemList'>";
    if($items[$i]['montazniPrvek'] != "" ){
        $body .= "<tr><td class='left'>montážní prvek:</td><td colspan='2'>{$items[$i]['montazniPrvek']}</td>";
    }else{
    	$body .= "<tr><td class='left'></td><td colspan='2'></td>";
    }
     $body .= "<td rowspan='7' class='image_item'><div class='images_rightAlign'>";
        if($items[$i]['img1'] != "" ) {
            $body .= "<a href='images/eshop/foto/{$items[$i]['subcategory']}/1000/{$items[$i]['img1']}' rel='lightbox[{$items[$i]['img1']}]'>";
            $body .= "<img src='images/eshop/foto/{$items[$i]['subcategory']}/250/{$items[$i]['img1']}' class='obrazek'>";
            $body .= "</a>";
        }
        if($items[$i]['img2'] != "" ) {
            $body .= "<a href='images/eshop/foto/{$items[$i]['subcategory']}/1000/{$items[$i]['img2']}' rel='lightbox[{$items[$i]['img1']}]'>";
            $body .= "<img src='images/eshop/foto/{$items[$i]['subcategory']}/250/{$items[$i]['img2']}' class='obrazek_nahled'>";
            $body .= "</a>";
        }
        if($items[$i]['img3'] != "" ) {
            $body .= "<a href='images/eshop/foto/{$items[$i]['subcategory']}/1000/{$items[$i]['img3']}' rel='lightbox[{$items[$i]['img1']}]'>";
            $body .= "<img src='images/eshop/foto/{$items[$i]['subcategory']}/250/{$items[$i]['img3']}' class='obrazek_nahled'>";
            $body .= "</a>";
        }
        if($items[$i]['img4'] != "" ) {
            $body .= "<a href='images/eshop/foto/{$items[$i]['subcategory']}/1000/{$items[$i]['img4']}' rel='lightbox[{$items[$i]['img1']}]'>";
            $body .= "<img src='images/eshop/foto/{$items[$i]['subcategory']}/250/{$items[$i]['img4']}' class='obrazek_nahled'>";
            $body .= "</a>";
        }
        if($items[$i]['img5'] != "" ) {
            $body .= "<a href='images/eshop/foto/{$items[$i]['subcategory']}/1000/{$items[$i]['img5']}' rel='lightbox[{$items[$i]['img1']}]'>";
            $body .= "<img src='images/eshop/foto/{$items[$i]['subcategory']}/250/{$items[$i]['img5']}' class='obrazek_nahled'>";
            $body .= "</a>";
        }
    $body .= "</div></td></tr>";

    if($items[$i]['rozmery'] != "" ){
        $body .= "<tr><td class='left'>rozměry:</td><td colspan='2'>{$items[$i]['rozmery']}</td></tr>";
    }
    if($items[$i]['popis'] != "" ){
        $body .= "<tr><td class='left'>popis:</td><td colspan='2'>{$items[$i]['popis']}</td></tr>";
    }
    if($items[$i]['poznamka'] != "" ){
        $body .= "<tr><td class='left'>poznámka:</td><td colspan='2'>{$items[$i]['poznamka']}</td></tr>";
    }
    $body .= "<tr><td class='left'>cena za 1ks:<br><small>(bez DPH)</small></td><td colspan='2'><strong>$cenaBezDPH Kč</strong></td></tr>";
    $body .= "<tr><td class='left'>cena za 1ks:<br><small>(s DPH)</small></td><td colspan='2'><strong>$cenaSDPH Kč</strong></td></tr>";
    $body .= "<tr><td class='left'>počet kusů:</small></td><td class='pocet_kusu'><input type='text' onkeypress='validateNumber(event)' id='kosik_{$items[$i]['id']}' value='1'><div class='pocet_kusu_up' onclick='pocetKsPlus(\"{$items[$i]['id']}\")'></div><div class='pocet_kusu_down'  onclick='pocetKsMinus(\"{$items[$i]['id']}\")'></div></div></td><td><button onclick='addToBasket({$items[$i]['id']})' class='basket'>Přidat do košíku</button></td></tr>";
    $body .= "<tr class='doporuceni' id='doporuceni_{$items[$i]['id']}'><td colspan='4'>Dále doporučujeme:<div>";
    $nextItem = explode("_;_", $items[$i]['dalsi_zbozi']);
    foreach($nextItem as $id){
    	if($id != ""){
	    	$nextItem = $eshop->getItem($id);
	    	$body .= "<a href='index.php?page=eshop&category={$nextItem['subcategory']}&id={$nextItem['id']}'><div class='doporuceni_polozka'><img src='images/eshop/foto/{$nextItem['subcategory']}/250/{$nextItem['img1']}' class='next_item_obrazek_nahled'><div>$nextItem[$lang]</div></div></a>";
    	}
    }
    $body .= "</div></td></tr>";
    $body .= "</table>";


    $body .= '</div>';
}
if($eshop->pagesOfItems($items) > 1) {
    $body .= "<div id='strankovani'>";
    if($eshop->pageNumber != 1){
        $previousPage = $eshop->pageNumber - 1;
        $body .= "<a href='index.php?page=eshop&category={$subcategory['id']}&order=$order&pageNumber=$previousPage' class='previousAndNextPage'><</a>";
    }
    for ($i = 1; $i <= $eshop->pagesOfItems($items); $i++) {
        if ($eshop->pageNumber == $i) {
            $body .= "<a href='index.php?page=eshop&category={$subcategory['id']}&order=$order&pageNumber=$i' class='activePageNumber'>$i</a>";

        } else {
            $body .= "<a href='index.php?page=eshop&category={$subcategory['id']}&order=$order&pageNumber=$i'>$i</a>";
        }
    }
    if($eshop->pageNumber != $eshop->pagesOfItems($items)){
        $nextPage = $eshop->pageNumber + 1;
        $body .= "<a href='index.php?page=eshop&category={$subcategory['id']}&order=$order&pageNumber=$nextPage' class='previousAndNextPage'>></a>";
    }
    $body .= "</div>";
}
$body .= "<span onclick='goNahoru()' class='nahoru'>$nahoru</span>";
return $body;