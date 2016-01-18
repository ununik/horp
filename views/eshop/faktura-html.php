<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 3.11.15
 * Time: 15:05
 */
$faktura = "<h2>Faktura</h2>";

$faktura .= "<table class='udaje'>";
$faktura .= "<th colspan='2'>Fakturační údaje</th><th colspan='2'>Dodací adresa (liší-li se od fakturačních údajů)</th>";
$faktura .= "<tr><td class='popis'>Jméno:</td><td class='left_part'>{$basket['jmeno']}</td><td class='popis'>Jméno:</td><td>{$basket['jmeno_dodaci']}</td></tr>";
$faktura .= "<tr><td class='popis'>Příjmení:</td><td class='left_part'>{$basket['prijmeni']}</td><td class='popis'>Příjmení:</td><td>{$basket['prijmeni_dodaci']}</td></tr>";
$faktura .= "<tr><td class='popis'>Adresa:</td><td class='left_part'>{$basket['adresa']}</td><td class='popis'>Adresa:</td><td>{$basket['adresa_dodaci']}</td></tr>";
$faktura .= "<tr><td class='popis'>Město:</td><td class='left_part'>{$basket['mesto']}</td><td class='popis'>Město:</td><td>{$basket['mesto_dodaci']}</td></tr>";
$faktura .= "<tr><td class='popis'>PSČ:</td><td class='left_part'>{$basket['psc']}</td><td class='popis'>PSČ:</td><td>{$basket['psc_dodaci']}</td></tr>";
$faktura .= "<tr><td class='popis'>Mail:</td><td class='left_part'>{$basket['mail']}</td><td colspan='2'></td></tr>";
$faktura .= "<tr><td class='popis'>Tel:</td><td class='left_part'>{$basket['tel']}</td><td colspan='2'></td></tr>";
$faktura .= "<tr><td class='popis'>Firma:</td><td class='left_part'>{$basket['firma']}</td><td colspan='2'></td></tr>";
$faktura .= "<tr><td class='popis'>IČ:</td><td class='left_part'>{$basket['ic']}</td><td colspan='2'></td></tr>";
$faktura .= "<tr><td class='popis'>DIČ:</td><td class='left_part'>{$basket['dic']}</td><td colspan='2'></td></tr>";
$faktura .= "</table>";
$faktura .= "<h3>Obsah košíku</h3>";
$faktura .= "<table class='basket_table faktura_basket'><th class='nazev'>Název</th><th>Cena za kus<br><small>bez DPH</small></th><th>Cena za kus<br><small>s DPH</small></th><th>Počet kusů</th><th>Cena<br><small>bez DPH</small></th><th>Cena<br><small>s DPH</small></th><th></th>";
foreach($items as $item){
    $faktura .= "<tr><td class='nazev'>{$item['item']} ({$item['category']})</td>
                <td class='cena'>{$item['cenaZaKusBezDPH']} Kč</td>
                <td class='cena'>{$item['cenaZaKusSDPH']} Kč</td>

                <td  class='pocetKusu'><span>{$item['count']}</span></td>
                <td class='cena'>{$item['cenaBezDPH']} Kč</td>
                <td class='cena'>{$item['cenaSDPH']} Kč</td>
                <td></td>
                </tr>";
    $cenaBezDPH += $item['cenaBezDPH'];
    $cenaSDPH += $item['cenaSDPH'];
}
$sleva = $eshop->getSleva($cenaBezDPH);
if($sleva != 0){
    $procenta = (100 - $sleva)/100;
    $cenaBezDPH = $cenaBezDPH * $procenta;
    $cenaSDPH = $cenaSDPH * $procenta;
    $slevaBezDPH = $cenaBezDPH * ($sleva /100);
    $slevaSDPH = $cenaSDPH * ($sleva /100);
    $slevaBezDPH = number_format($slevaBezDPH, 2, '.', '');
    $slevaSDPH = number_format($slevaSDPH, 2, '.', '');
    $faktura .= "<tr><td colspan='4'>Sleva ($sleva%)</td><td class='cena'>-$slevaBezDPH Kč</td><td class='cena'>-$slevaSDPH Kč</td>";
}
$cenaBezDPH = number_format($cenaBezDPH, 2, '.', '');
$cenaSDPH = number_format($cenaSDPH, 2, '.', '');
$faktura .= "<tr><td colspan='4'>Poštovné a balné: {$doprava['cz']}</td><td class='cena'>$cena Kč</td><td class='cena'>$cena Kč</td>";
$faktura .= "<tr  class='celkem' style='font-weight: bold; border-top: 2px solid black;'><td colspan='4'>Celkem</td><td class='cena'>$cenaBezDPH Kč</td><td class='cena'>$cenaSDPH Kč</td>";
$faktura .= "</table>";
$faktura .= "<h3>Poznámka</h3>";
$poznamka = nl2br($basket['comment']);

$faktura .= "<div>{$poznamka}</div>";
if(!isset($mail) || $mail!=true){
$faktura.= "<a href='index.php?page=eshop&subpage=basket'><button class='objednat'>Zpět k objednávce</button></a> <button class='objednat' onclick='objednat()'>Objednat</button>";
}
return $faktura;