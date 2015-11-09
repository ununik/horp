<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 14:14
 */
$body = "<h1>$subcategory[$lang]</h1>";
$body .= "<div><b>Řazení:</b> podle ceny: <a href='index.php?page=eshop&category={$subcategory['id']}&order=cena' class='vzestupne'></a><a href='index.php?page=eshop&category={$subcategory['id']}&order=cenaDESC' class='sestupne'></a> podle velikosti: <a href='index.php?page=eshop&category={$subcategory['id']}&order=velikost' class='vzestupne'></a><a href='index.php?page=eshop&category={$subcategory['id']}&order=velikostDESC' class='sestupne'></a>";
foreach($items as $item){
    $cenaBezDPH = number_format($item['cenaBezDPH'], 2, '.', '');
    $cenaSDPH = number_format($item['cenaSDPH'], 2, '.', '');

    $body .= "<div class='item'>";
    $body .= "<h3>$item[$lang]</h3>";
    $body .= "<table class='itemList'>";
    if($item['montazniPrvek'] != "" ){
        $body .= "<tr><td class='left'>montážní prvek:</td><td colspan='2'>{$item['montazniPrvek']}</td>";
    }
     $body .= "<td rowspan='7' class='image_item'>";
        if($item['img1'] != "" ) {
            $body .= "<img src='images/eshop/foto/{$item['subcategory']}/250/{$item['img1']}'>";
        }
        if($item['img2'] != "" ) {
            $body .= "<img src='images/eshop/foto/{$item['subcategory']}/30/{$item['img2']}'>";
        }
        if($item['img3'] != "" ) {
            $body .= "<img src='images/eshop/foto/{$item['subcategory']}/30/{$item['img3']}'>";
        }
        if($item['img4'] != "" ) {
            $body .= "<img src='images/eshop/foto/{$item['subcategory']}/30/{$item['img4']}'>";
        }
        if($item['img5'] != "" ) {
            $body .= "<img src='images/eshop/foto/{$item['subcategory']}/30/{$item['img5']}'>";
        }
    $body .= "</td></tr>";

    if($item['rozmery'] != "" ){
        $body .= "<tr><td class='left'>rozměry:</td><td colspan='2'>{$item['rozmery']}</td></tr>";
    }
    if($item['popis'] != "" ){
        $body .= "<tr><td class='left'>popis:</td><td colspan='2'>{$item['popis']}</td></tr>";
    }
    if($item['poznamka'] != "" ){
        $body .= "<tr><td class='left'>poznámka:</td><td colspan='2'>{$item['poznamka']}</td></tr>";
    }
    $body .= "<tr><td class='left'>cena za 1ks:<br><small>(bez DPH)</small></td><td colspan='2'>$cenaBezDPH Kč</td></tr>";
    $body .= "<tr><td class='left'>cena za 1ks:<br><small>(s DPH)</small></td><td colspan='2'>$cenaSDPH Kč</td></tr>";
    $body .= "<tr><td class='left'>počet kusů:</small></td><td class='pocet_kusu'><input type='text' onkeypress='validateNumber(event)' id='kosik_{$item['id']}' value='1'><div class='pocet_kusu_up' onclick='pocetKsPlus(\"{$item['id']}\")'></div><div class='pocet_kusu_down'  onclick='pocetKsMinus(\"{$item['id']}\")'></div></div></td><td rowspan='2'><button onclick='addToBasket({$item['id']})' class='basket'>Přidat do košíku</button></td></tr>";
    $body .= "</table>";


    $body .= '</div>';
}
$body .= "<span onclick='goNahoru()' class='nahoru'>$nahoru</span>";
return $body;