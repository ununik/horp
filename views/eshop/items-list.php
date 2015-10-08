<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 14:14
 */
$body = "<h1>$subcategory[$lang]</h1>";
foreach($items as $item){
    $cenaBezDPH = number_format($item['cenaBezDPH'], 2, '.', '');
    $cenaSDPH = number_format($item['cenaSDPH'], 2, '.', '');
    $col = "<select id='color_{$item['id']}'>";
    $color = $eshop->getAllColors();

    foreach($color as $color){
        $col .= "<option value='{$color['id']}'>{$color[$lang]}</option>";
    }
    $col .= "</select>";

    $body .= '<div>';
    $body .= "<h3>$item[$lang]</h3>";
    $body .= "<table class='itemList'>";
    if($item['montazniPrvek'] != "" ){
        $body .= "<tr><td class='left'>montážní prvek</td><td colspan='2'>{$item['montazniPrvek']}</td></tr>";
    }
    if($item['rozmery'] != "" ){
        $body .= "<tr><td class='left'>rozměry</td><td colspan='2'>{$item['rozmery']}</td></tr>";
    }
    if($item['popis'] != "" ){
        $body .= "<tr><td class='left'>popis</td><td colspan='2'>{$item['popis']}</td></tr>";
    }
    if($item['poznamka'] != "" ){
        $body .= "<tr><td class='left'>poznámka</td><td colspan='2'>{$item['poznamka']}</td></tr>";
    }
    $body .= "<tr><td class='left'>cena za 1ks <br><small>(bez DPH)</small></td><td colspan='2'>$cenaBezDPH Kč</td></tr>";
    $body .= "<tr><td class='left'>cena za 1ks <br><small>(s DPH)</small></td><td colspan='2'>$cenaSDPH Kč</td></tr>";
    $body .= "<tr><td class='left'>počet kusů</small></td><td class='pocet_kusu'><input type='text' id='kosik_{$item['id']}' value='1'></td><td rowspan='2'><button onclick='addToBasket({$item['id']})' class='basket'>Přidat do košíku</button></td></tr>";
    $body .= "<tr><td class='left'>barva</small></td><td>$col</td></tr>";
    $body .= "</table>";


    $body .= '</div>';
}

return $body;