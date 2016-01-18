<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 14:14
 */
$body = "<h1>$item[$lang]</h1>";

    $cenaBezDPH = number_format($item['cenaBezDPH'], 2, '.', '');
    $cenaSDPH = number_format($item['cenaSDPH'], 2, '.', '');

    $body .= "<div class='item'>";
    $body .= "<table class='itemList'>";
    if($item['montazniPrvek'] != "" ){
        $body .= "<tr><td class='left'>montážní prvek:</td><td colspan='2'>{$item['montazniPrvek']}</td>";
    }else{
    	$body .= "<tr><td class='left'></td><td colspan='2'></td>";
    }
     $body .= "<td rowspan='7' class='image_item'><div class='images_rightAlign'>";
        if($item['img1'] != "" ) {
            $body .= "<a href='images/eshop/foto/{$item['subcategory']}/1000/{$item['img1']}' rel='lightbox[{$item['img1']}]'>";
            $body .= "<img src='images/eshop/foto/{$item['subcategory']}/250/{$item['img1']}' class='obrazek'>";
            $body .= "</a>";
        }
        if($item['img2'] != "" ) {
            $body .= "<a href='images/eshop/foto/{$item['subcategory']}/1000/{$item['img2']}' rel='lightbox[{$item['img1']}]'>";
            $body .= "<img src='images/eshop/foto/{$item['subcategory']}/250/{$item['img2']}' class='obrazek_nahled'>";
            $body .= "</a>";
        }
        if($item['img3'] != "" ) {
            $body .= "<a href='images/eshop/foto/{$item['subcategory']}/1000/{$item['img3']}' rel='lightbox[{$item['img1']}]'>";
            $body .= "<img src='images/eshop/foto/{$item['subcategory']}/250/{$item['img3']}' class='obrazek_nahled'>";
            $body .= "</a>";
        }
        if($item['img4'] != "" ) {
            $body .= "<a href='images/eshop/foto/{$item['subcategory']}/1000/{$item['img4']}' rel='lightbox[{$item['img1']}]'>";
            $body .= "<img src='images/eshop/foto/{$item['subcategory']}/250/{$item['img4']}' class='obrazek_nahled'>";
            $body .= "</a>";
        }
        if($item['img5'] != "" ) {
            $body .= "<a href='images/eshop/foto/{$item['subcategory']}/1000/{$item['img5']}' rel='lightbox[{$item['img1']}]'>";
            $body .= "<img src='images/eshop/foto/{$item['subcategory']}/250/{$item['img5']}' class='obrazek_nahled'>";
            $body .= "</a>";
        }
    $body .= "</div></td></tr>";

    if($item['rozmery'] != "" ){
        $body .= "<tr><td class='left'>rozměry:</td><td colspan='2'>{$item['rozmery']}</td></tr>";
    }
    if($item['popis'] != "" ){
        $body .= "<tr><td class='left'>popis:</td><td colspan='2'>{$item['popis']}</td></tr>";
    }
    if($item['poznamka'] != "" ){
        $body .= "<tr><td class='left'>poznámka:</td><td colspan='2'>{$item['poznamka']}</td></tr>";
    }
    $body .= "<tr><td class='left'>cena za 1ks:<br><small>(bez DPH)</small></td><td colspan='2'><strong>$cenaBezDPH Kč</strong></td></tr>";
    $body .= "<tr><td class='left'>cena za 1ks:<br><small>(s DPH)</small></td><td colspan='2'><strong>$cenaSDPH Kč</strong></td></tr>";
    $body .= "<tr><td class='left'>počet kusů:</small></td><td class='pocet_kusu'><input type='text' onkeypress='validateNumber(event)' id='kosik_{$item['id']}' value='1'><div class='pocet_kusu_up' onclick='pocetKsPlus(\"{$item['id']}\")'></div><div class='pocet_kusu_down'  onclick='pocetKsMinus(\"{$item['id']}\")'></div></div></td><td><button onclick='addToBasket({$item['id']})' class='basket'>Přidat do košíku</button></td></tr>";
    $body .= "<tr><td colspan='4'>Dále doporučujeme:<div>";
    $nextItem = explode("_;_", $item['dalsi_zbozi']);
    foreach($nextItem as $id){
    	if($id != ""){
	    	$nextItem = $eshop->getItem($id);
	    	$body .= "<a href='index.php?page=eshop&category={$nextItem['subcategory']}&id={$nextItem['id']}'><div class='doporuceni_polozka'><img src='images/eshop/foto/{$nextItem['subcategory']}/250/{$nextItem['img1']}' class='next_item_obrazek_nahled'><div>$nextItem[$lang]</div></div></a>";
    	}
    }
    $body .= "</div></td></tr>";
    $body .= "</table>";


    $body .= '</div>';

return $body;