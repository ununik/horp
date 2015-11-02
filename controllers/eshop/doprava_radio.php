<?php
$doprava = $eshop->getAllTypesDoprava();
$cont = "";
foreach($doprava as $doprava){
    $zbytek = $celkovaHmotnost%20000;
    $ostatni = (int) ($celkovaHmotnost - $zbytek)/20000;
    $cena = $doprava['cenaZaGram']*$zbytek + $doprava['cenaZaGram']*$ostatni;
    $cont .= "<input type='radio' name='doprava' onclick='changeDoprava(this)' value='{$doprava['id']}' ";
    if($basketItem['doprava'] == $doprava['id']){
        $cont .= " checked ";
    }
    $cont .= " >{$doprava[$lang]} $cena,-Kc<br>";
}

return $cont;