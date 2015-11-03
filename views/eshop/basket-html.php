<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 15:53
 */
$basket = "<h1>Košík</h1>
            <div id='Basket-step_1'>
            <div id='step1'><div class='step1'></div>
            <div class='step2' onclick='nextstep(\"Basket-step_2\")'></div>
            <div class='step3' onclick='nextstep(\"Basket-step_3\")'></div>
            </div>
            <h2>Můj košík</h2>";
$basket .= "<table class='basket_table'><th class='nazev'>Název</th><th>Cena za kus<br><small>bez DPH</small></th><th>Cena za kus<br><small>s DPH</small></th><th>Počet kusů</th><th>Cena<br><small>bez DPH</small></th><th>Cena<br><small>s DPH</small></th><th></th>";
foreach($items as $item){
    $basket .= "<tr><td class='nazev'>{$item['item']}</td>
                <td class='cena'>{$item['cenaZaKusBezDPH']} Kč</td>
                <td class='cena'>{$item['cenaZaKusSDPH']} Kč</td>

                <td  class='pocetKusu'><span>{$item['count']}</span><span class='upravit' onclick='upravit_count(this, {$item['id']}, {$item['count']})'>upravit</span><span class='basket_count_input'><input type='text' onkeypress='validateNumber(event)' id='kosik_{$item['id']}' value='{$item['count']}'><div class='pocet_kusu_up' onclick='pocetKsPlus(\"{$item['id']}\")'></div><div class='pocet_kusu_down'  onclick='pocetKsMinus(\"{$item['id']}\")'></div></div><span onclick='saveNewCount(this, \"{$item['id']}\")'>S</span></span></td>
                <td class='cena'>{$item['cenaBezDPH']} Kč</td>
                <td class='cena'>{$item['cenaSDPH']} Kč</td>
                <td><span onclick='deleteFromBasket({$item['id']})' class='basket_odstranit'>odstranit</span></td>
                </tr>";
}
$basket .= "<tr class='celkem'><td colspan='4'>Celkem</td><td class='cena'>{$celkovaCena['bezDPH']} Kč</td><td class='cena'>{$celkovaCena['sDPH']} Kč</td><td></td></tr>";
$basket .= "</table>";
$basket .= "<div id='eshop_poznamka_div'>Poznámka:<div id='poznamka_saved'></div><textarea id='eshop_poznamka' onchange='addPoznamka(this)'>{$basketItem['comment']}</textarea></div>";

$basket .= "<button onclick='nextstep(\"Basket-step_2\")' class='nextStep'></button></div>";


$basket .= "<div id='Basket-step_2'><div id='step2'><div class='step1' onclick='nextstep(\"Basket-step_1\")'></div>
        <div class='step2'></div>
        <div class='step3' onclick='nextstep(\"Basket-step_3\")'></div>
        </div><h2>Doprava a platba</h2>";
$basket .= "Celková hmotnost - {$celkovaHmotnostKg}kg<br>";
$basket .= "<p>$doprava</p>";
$basket .= "<button onclick='nextstep(\"Basket-step_1\")' class='previousStep'></button><button onclick='nextstep(\"Basket-step_3\")' class='nextStep'></button></div>";

$basket .= "<div id='Basket-step_3'><div id='step3'><div class='step1' onclick='nextstep(\"Basket-step_1\")'></div>
            <div class='step2' onclick='nextstep(\"Basket-step_2\")'></div>
            <div class='step3'></div>
            </div><h2>Fakturační údaje</h2>";
$basket .= "<table>";
$basket .= "<th colspan='2'>Fakturační údaje</th>";
$basket .= "<tr><td>Jméno*:</td><td><input type='text' name='jmeno' onchange='udaje_change(this)' value='{$basketItem['jmeno']}'></td></tr>";
$basket .= "<tr><td>Příjmení*:</td><td><input type='text'  name='prijmeni' onchange='udaje_change(this)' value='{$basketItem['prijmeni']}'></td></tr>";
$basket .= "<tr><td>Firma:</td><td><input type='text'  name='firma' onchange='udaje_change(this)' value='{$basketItem['firma']}'></td></tr>";
$basket .= "<tr><td>IČ:</td><td><input type='text'  name='ic' onchange='udaje_change(this)' value='{$basketItem['ic']}'></td></tr>";
$basket .= "<tr><td>DIČ:</td><td><input type='text'  name='dic' onchange='udaje_change(this)' value='{$basketItem['dic']}'></td></tr>";
$basket .= "<tr><td>Adresa*:</td><td><input type='text' name='adresa' onchange='udaje_change(this)' value='{$basketItem['adresa']}'></td></tr>";
$basket .= "<tr><td>Město*:</td><td><input type='text' name='mesto' onchange='udaje_change(this)' value='{$basketItem['mesto']}'></td></tr>";
$basket .= "<tr><td>PSČ*:</td><td><input type='text' name='psc' onchange='udaje_change(this)' value='{$basketItem['psc']}'></td></tr>";
$basket .= "</table>";

$basket .= "<table>";
$basket .= "<th colspan='2'>Dodací adresa (liší-li se od fakturačních údajů)</th>";
$basket .= "<tr><td>Jméno:</td><td><input type='text' name='jmeno_dodaci' onchange='udaje_change(this)' value='{$basketItem['jmeno_dodaci']}'></td></tr>";
$basket .= "<tr><td>Příjmení:</td><td><input type='text' name='prijmeni_dodaci' onchange='udaje_change(this)' value='{$basketItem['prijmeni_dodaci']}'></td></tr>";
$basket .= "<tr><td>Adresa:</td><td><input type='text'  name='adresa_dodaci' onchange='udaje_change(this)' value='{$basketItem['adresa_dodaci']}'></td></tr>";
$basket .= "<tr><td>Město:</td><td><input type='text'  name='mesto_dodaci' onchange='udaje_change(this)' value='{$basketItem['mesto_dodaci']}'></td></tr>";
$basket .= "<tr><td>PSČ:</td><td><input type='text'  name='psc_dodaci' onchange='udaje_change(this)' value='{$basketItem['psc_dodaci']}'></td></tr>";
$basket .= "</table>";
$basket .= "<button onclick='nextstep(\"Basket-step_2\")'  class='previousStep'></button><button onclick='faktura()' class='objednat'>Rekapituace</button></div>";

$basket .= "<div id='Basket-step_4'></div>";

return $basket;