<?php
$doprava = $eshop->getAllTypesDoprava();
$cont = "";
foreach($doprava as $doprava){
    $cont .= "<input type='radio' name='doprava' onclick='changeDoprava(this)' value='{$doprava['id']}' ";
    if($basketItem['doprava'] == $doprava['id']){
        $cont .= " checked ";
    }
    $cont .= " >{$doprava[$lang]}<br>";
}

return $cont;