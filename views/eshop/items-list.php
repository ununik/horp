<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 14:14
 */
$body = "<h1>$subcategory[$lang]</h1>";
foreach($items as $item){
    $body .= '<div>';
    $body .= "<h2>$item[$lang]</h2>";
    $body .= "<table>";
    $body .= "<tr><td>cena za 1ks <small>(bez DPH)</small></td><td>{$item['cenaBezDPH']}</td></tr>";
    $body .= "<tr><td>cena za 1ks <small>(s DPH)</small></td><td>{$item['cenaSDPH']}</td></tr>";
    if($item['montazniPrvek'] != "" ){
        $body .= "<tr><td>montážní prvek</td><td>{$item['montazniPrvek']}</td></tr>";
    }
    if($item['rozmery'] != "" ){
        $body .= "<tr><td>rozměry</td><td>{$item['rozmery']}</td></tr>";
    }
    if($item['popis'] != "" ){
        $body .= "<tr><td>popis</td><td>{$item['popis']}</td></tr>";
    }
    if($item['poznamka'] != "" ){
        $body .= "<tr><td>poznámka</td><td>{$item['poznamka']}</td></tr>";
    }
    $body .= "</table>";
    $body .= "počet kusů: <input type='text' id='kosik_{$item['id']}' value='1'>";


    $body .= "<select id='color_{$item['id']}'>";
    $color = $eshop->getAllColors();

    foreach($color as $color){
        $body .= "<option value='{$color['id']}'>{$color[$lang]}</option>";
    }
    $body .= "</select>";


    $body .= "<button onclick='addToBasket({$item['id']})'>Přidat do košíku</button>";
    $body .= '</div>';
}

return $body;