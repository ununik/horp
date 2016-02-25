<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 3.11.15
 * Time: 15:05
 */
$faktura = "<h2>Faktura</h2>";

$faktura .= "<table class='udaje'>";
$faktura .= "<th colspan='2'>$fakturacniUdaje</th><th colspan='2'>$dodaciAdresa</th>";
$faktura .= "<tr><td class='popis'>$jmenoTranslation:</td><td class='left_part'>{$basket['jmeno']}</td><td class='popis'>$jmenoTranslation:</td><td>{$basket['jmeno_dodaci']}</td></tr>";
$faktura .= "<tr><td class='popis'>$prijmeniTranslation:</td><td class='left_part'>{$basket['prijmeni']}</td><td class='popis'>$prijmeniTranslation:</td><td>{$basket['prijmeni_dodaci']}</td></tr>";
$faktura .= "<tr><td class='popis'>$adresaTranslation:</td><td class='left_part'>{$basket['adresa']}</td><td class='popis'>$adresaTranslation:</td><td>{$basket['adresa_dodaci']}</td></tr>";
$faktura .= "<tr><td class='popis'>$mestoTranslation:</td><td class='left_part'>{$basket['mesto']}</td><td class='popis'>$mestoTranslation:</td><td>{$basket['mesto_dodaci']}</td></tr>";
$faktura .= "<tr><td class='popis'>$PSCTranslation:</td><td class='left_part'>{$basket['psc']}</td><td class='popis'>$PSCTranslation:</td><td>{$basket['psc_dodaci']}</td></tr>";
$faktura .= "<tr><td class='popis'>Mail:</td><td class='left_part'>{$basket['mail']}</td><td colspan='2'></td></tr>";
$faktura .= "<tr><td class='popis'>Tel:</td><td class='left_part'>{$basket['tel']}</td><td colspan='2'></td></tr>";
$faktura .= "<tr><td class='popis'>Firma:</td><td class='left_part'>{$basket['firma']}</td><td colspan='2'></td></tr>";
$faktura .= "<tr><td class='popis'>$ico:</td><td class='left_part'>{$basket['ic']}</td><td colspan='2'></td></tr>";
$faktura .= "<tr><td class='popis'>$dic:</td><td class='left_part'>{$basket['dic']}</td><td colspan='2'></td></tr>";
$faktura .= "<tr><td class='popis'>$menaSlovo:</td><td class='left_part'>$mena</td><td colspan='2'></td></tr>";
$faktura .= "</table>";
$faktura .= "<h3>$mujKosik</h3>";
$faktura .= "<table class='basket_table faktura_basket'><th class='nazev'>$nazev</th><th>$cenaZaKus<br><small>$bezDPH</small></th><th>$cenaZaKus<br><small>$sDPH</small></th><th>$pocetKusu</th><th>$cenaPrice<br><small>$bezDPH</small></th><th>Cena<br><small>$sDPH</small></th><th></th>";
foreach($items as $item){
    $faktura .= "<tr><td class='nazev'>{$item['item']} ({$item['category']})</td>
                <td class='cena'>{$item['cenaZaKusBezDPH']} $mena</td>
                <td class='cena'>{$item['cenaZaKusSDPH']} $mena</td>

                <td  class='pocetKusu'><span>{$item['count']}</span></td>
                <td class='cena'>{$item['cenaBezDPH']} $mena</td>
                <td class='cena'>{$item['cenaSDPH']} $mena</td>
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
    $faktura .= "<tr><td colspan='4'>$slevaTranslation ($sleva%)</td><td class='cena'>-$slevaBezDPH $mena</td><td class='cena'>-$slevaSDPH $mena</td>";
}
$cenaBezDPH = number_format($cenaBezDPH, 2, '.', '');
$cenaSDPH = number_format($cenaSDPH, 2, '.', '');
$faktura .= "<tr><td colspan='4'>$dopravneABalneTranslation: {$doprava[$lang]}</td><td class='cena'>$cena $mena</td><td class='cena'>$cena $mena</td>";
$faktura .= "<tr  class='celkem' style='font-weight: bold; border-top: 2px solid black;'><td colspan='4'>$celkem</td><td class='cena'>$cenaBezDPH $mena</td><td class='cena'>$cenaSDPH $mena</td>";
$faktura .= "</table>";
$faktura .= "<h3>$poznamka</h3>";
$poznamka = nl2br($basket['comment']);

$faktura .= "<div>{$poznamka}</div>";
if(!isset($mail) || $mail!=true){
$faktura.= "<a href='index.php?page=eshop&subpage=basket'><button class='objednat'>$backToEshop</button></a> <button class='objednat' onclick='objednat()'>$odeslat</button>";
}
return $faktura;