<?php
$doprava = $eshop->getAllTypesDoprava();
$cont = "";
foreach($doprava as $doprava){
    $zbytek = $celkovaHmotnost%20000;
    $ostatni = (int) ($celkovaHmotnost - $zbytek)/20000;
    $cena = $doprava['cenaZaGram'.$basketItem['mena']]*$zbytek + $doprava['cenaZaGram'.$basketItem['mena']]*$ostatni + ($ostatni + 1)*$doprava['cenaZaJdenBalik'.$basketItem['mena']];
    $cena =  number_format($cena, 2, '.', '');
    $cont .= "<div class='doprava_row'><input type='radio' name='doprava' id='doprava_{$doprava["id"]}' onclick='changeDoprava(this)' value='{$doprava['id']}' ";
    if($basketItem['doprava'] == $doprava['id']){
        $cont .= " checked ";
    }
    $cont .= " ><label for='doprava_{$doprava["id"]}'>{$doprava[$lang]} <b>$cena {$menaArray[$basketItem['mena']]}</b></label></div>";
}

return $cont;