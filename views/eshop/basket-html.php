<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 15:53
 */
$basket = "<h1>$kosik</h1>
            <div id='Basket-step_1'>
            <div id='step1'><div class='step1'></div>
            <div class='step2' onclick='nextstep(\"Basket-step_2\")'></div>
            <div class='step3' style='cursor: auto;'></div>
            </div>
            <h2>$mujKosik</h2>";
$basket .= "<table class='basket_table'><th class='nazev'>$nazev</th><th>$cenaZaKus<br><small>$bezDPH</small></th><th>$cenaZaKus<br><small>$sDPH</small></th><th>$pocetKusu</th><th>$cenaPrice<br><small>$bezDPH</small></th><th>$cenaPrice<br><small>$sDPH</small></th><th></th>";
foreach($items as $item){
    $basket .= "<tr><td class='nazev'>";
    		$basket .= "<a href='images/eshop/foto/{$item['categoryNumber']}/1000/{$item['img1']}' rel='lightbox[{$item['img1']}]'>";
            $basket .= "<img src='images/eshop/foto/{$item['categoryNumber']}/30/{$item['img1']}' class='basket_nahled'>";
            $basket .= "</a>";
    $basket .= "<a href='index.php?page=eshop&category={$item['categoryNumber']}&id={$item['id']}'>{$item['item']} ({$item['category']})</a></td>
                <td class='cena'>{$item['cenaZaKusBezDPH']} {$menaArray[$basketItem['mena']]}</td>
                <td class='cena'>{$item['cenaZaKusSDPH']} {$menaArray[$basketItem['mena']]}</td>

                <td  class='pocetKusu'><span>{$item['count']}</span><span class='upravit' onclick='upravit_count(this, {$item['id']}, {$item['count']})'>$upravit</span><span class='basket_count_input'><input type='text' onkeypress='validateNumber(event)' id='kosik_{$item['id']}' value='{$item['count']}'><div class='pocet_kusu_up' onclick='pocetKsPlus(\"{$item['id']}\")'></div><div class='pocet_kusu_down'  onclick='pocetKsMinus(\"{$item['id']}\")'></div></div><span onclick='saveNewCount(this, \"{$item['id']}\")' class='save'></span></span></td>
                <td class='cena'>{$item['cenaBezDPH']} {$menaArray[$basketItem['mena']]}</td>
                <td class='cena'>{$item['cenaSDPH']} {$menaArray[$basketItem['mena']]}</td>
                <td><span onclick='deleteFromBasket({$item['id']})' class='basket_odstranit'>$odstranit</span></td>
                </tr>";
}
$basket .= "<tr class='celkem'><td colspan='4'>$celkem</td><td class='cena'>{$celkovaCena['bezDPH']} {$menaArray[$basketItem['mena']]}</td><td class='cena'>{$celkovaCena['sDPH']} {$menaArray[$basketItem['mena']]}</td><td></td></tr>";
$basket .= "</table>";
$basket .= "<div id='eshop_poznamka_div'>$poznamka:<div id='poznamka_saved'></div><textarea id='eshop_poznamka' onchange='addPoznamka(this)'>{$basketItem['comment']}</textarea></div>";

$basket .= "<button onclick='nextstep(\"Basket-step_2\")' class='nextStep'></button></div>";


$basket .= "<div id='Basket-step_2'><div id='step2'><div class='step1' onclick='nextstep(\"Basket-step_1\")'></div>
        <div class='step2'></div>
        <div class='step3' onclick='nextstep(\"Basket-step_3\")'></div>
        </div><h2>$dopravaAPlatba</h2>";
$basket .= "$celkovaHmotnostTranslation - {$celkovaHmotnostKg}kg<br>";
$basket .= "<p>$doprava</p>";
$basket .= "<button onclick='nextstep(\"Basket-step_1\")' class='previousStep'></button><button onclick='nextstep(\"Basket-step_3\")' class='nextStep'></button></div>";

$basket .= "<div id='Basket-step_3'><div id='step3'><div class='step1' onclick='nextstep(\"Basket-step_1\")'></div>
            <div class='step2' onclick='nextstep(\"Basket-step_2\")'></div>
            <div class='step3'></div>
            </div><h2>$fakturacniUdaje</h2>";
$basket .= "<table>";
$basket .= "<th colspan='2'>$fakturacniUdaje</th>";
$basket .= "<tr><td class='faktur_left'>$jmenoTranslation*:</td><td><input type='text' class='basket_text_input' id='jmeno' name='jmeno' onchange='udaje_change(this)' value='{$basketItem['jmeno']}'><span></span></td></tr>";
$basket .= "<tr><td class='faktur_left'>$prijmeniTranslation*:</td><td><input type='text' class='basket_text_input' id='prijmeni'  name='prijmeni' onchange='udaje_change(this)' value='{$basketItem['prijmeni']}'><span></span></td></tr>";
$basket .= "<tr><td class='faktur_left'>$adresaTranslation*:</td><td><input type='text' class='basket_text_input' id='adresa' name='adresa' onchange='udaje_change(this)' value='{$basketItem['adresa']}'><span></span></td></tr>";
$basket .= "<tr><td class='faktur_left'>$mestoTranslation*:</td><td><input type='text' class='basket_text_input' id='mesto' name='mesto' onchange='udaje_change(this)' value='{$basketItem['mesto']}'><span></span></td></tr>";
$basket .= "<tr><td class='faktur_left'>$PSCTranslation*:</td><td><input type='text' class='basket_text_input' id='psc' name='psc' onchange='udaje_change(this)' value='{$basketItem['psc']}'><span></span></td></tr>";
$basket .= "<tr><td class='faktur_left'>$statTranslation:</td><td><input type='text' class='basket_text_input' name='stat' onchange='udaje_change(this)' value='{$basketItem['stat']}'></td></tr>";
$basket .= "<tr><td class='faktur_left'>Mail*:</td><td><input type='text' class='basket_text_input' id='mail' name='mail' onchange='udaje_change(this)' value='{$basketItem['mail']}'><span></span></td></tr>";
$basket .= "<tr><td class='faktur_left'>Tel:</td><td><input type='text' class='basket_text_input' name='tel' onchange='udaje_change(this)' value='{$basketItem['tel']}'></td></tr>";
$basket .= "<tr><td class='faktur_left'>Firma:</td><td><input type='text' class='basket_text_input'  name='firma' onchange='udaje_change(this)' value='{$basketItem['firma']}'></td></tr>";
$basket .= "<tr><td class='faktur_left'>$ico:</td><td><input type='text' class='basket_text_input'  name='ic' onchange='udaje_change(this)' value='{$basketItem['ic']}'></td></tr>";
$basket .= "<tr><td class='faktur_left'>$dic:</td><td><input type='text' class='basket_text_input'  name='dic' onchange='udaje_change(this)' value='{$basketItem['dic']}'></td></tr>";

$basket .= "<tr><td class='faktur_left'>$menaSlovo:</td><td><select class='basket_text_input' name='mena' onchange='udaje_change(this)' value='{$basketItem['mena']}'>$menaSelect</select></td></tr>";

$basket .= "</table>";

$basket .= "<table>";
$basket .= "<th colspan='2'>$dodaciAdresa</th>";
$basket .= "<tr><td class='faktur_left'>$jmenoTranslation:</td><td><input type='text' class='basket_text_input' name='jmeno_dodaci' onchange='udaje_change(this)' value='{$basketItem['jmeno_dodaci']}'></td></tr>";
$basket .= "<tr><td class='faktur_left'>$prijmeniTranslation:</td><td><input type='text' class='basket_text_input' name='prijmeni_dodaci' onchange='udaje_change(this)' value='{$basketItem['prijmeni_dodaci']}'></td></tr>";
$basket .= "<tr><td class='faktur_left'>$adresaTranslation:</td><td><input type='text' class='basket_text_input'  name='adresa_dodaci' onchange='udaje_change(this)' value='{$basketItem['adresa_dodaci']}'></td></tr>";
$basket .= "<tr><td class='faktur_left'>$mestoTranslation:</td><td><input type='text' class='basket_text_input'  name='mesto_dodaci' onchange='udaje_change(this)' value='{$basketItem['mesto_dodaci']}'></td></tr>";
$basket .= "<tr><td class='faktur_left'>$PSCTranslation:</td><td><input type='text' class='basket_text_input'  name='psc_dodaci' onchange='udaje_change(this)' value='{$basketItem['psc_dodaci']}'></td></tr>";
$basket .= "</table>";
$basket .= "<h2>$ostatniTranslation</h2><div id='basket_ostatni'>";
$basket .= "<div><label for='voacher'>$voucher: </label><input type='text' onchange='udaje_change(this)' name='voacher' id='voacher' value='{$basketItem['voacher']}'></div>";
$basket .= "<div><input type='checkbox' onchange='udaje_change_checkbox(this)' name='mailing' id='mailing' $mailingValidation> <label for='mailing'>$mailiningTranslation</label></div>";
$basket .= "</div>";

$basket .= "<button onclick='nextstep(\"Basket-step_2\")'  class='previousStep'></button><button onclick='faktura()' class='objednat rekapituace'>$rekapituace</button></div>";

$basket .= "<div id='Basket-step_4'></div>";

return $basket;