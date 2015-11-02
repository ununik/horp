<?php
$doprava = $eshop->getAllTypesDoprava();
$cont = "";
foreach($doprava as $doprava){
    $zbytek = $celkovaHmotnost%20000;
    $ostatni = (int) ($celkovaHmotnost - $zbytek)/20000;
    $cena = $doprava['cenaZaGram']*$zbytek + $doprava['cenaZaGram']*$ostatni + ($ostatni + 1)*$doprava['cenaZaJdenBalik'];
    $cena = (int) $cena;
    $cont .= "<input type='radio' name='doprava' id='doprava_{$doprava["id"]}' onclick='changeDoprava(this)' value='{$doprava['id']}' ";
    if($basketItem['doprava'] == $doprava['id']){
        $cont .= " checked ";
    }
    $cont .= " ><label for='doprava_{$doprava["id"]}'>{$doprava[$lang]} $cena,-Kc</label><br>";
}

return $cont;