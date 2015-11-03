<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 3.11.15
 * Time: 15:05
 */
$faktura = "<h2>Faktura</h2>";

$faktura .= "<table>";
$faktura .= "<th colspan='2'>Fakturační údaje</th><th colspan='2'>Dodací adresa (liší-li se od fakturačních údajů)</th>";
$faktura .= "<tr><td>Jméno:</td><td>{$basket['jmeno']}</td><td>Jméno:</td><td>{$basket['jmeno_dodaci']}</td></tr>";
$faktura .= "<tr><td>Příjmení:</td><td>{$basket['prijmeni']}</td><td>Příjmení:</td><td>{$basket['prijmeni_dodaci']}</td></tr>";
$faktura .= "<tr><td>Adresa:</td><td>{$basket['adresa']}</td><td>Adresa:</td><td>{$basket['adresa_dodaci']}</td></tr>";
$faktura .= "<tr><td>Město:</td><td>{$basket['mesto']}</td><td>Město:</td><td>{$basket['mesto_dodaci']}</td></tr>";
$faktura .= "<tr><td>PSČ:</td><td>{$basket['psc']}'></td><td>PSČ:</td><td>{$basket['psc_dodaci']}</td></tr>";
$faktura .= "<tr><td>Firma:</td><td>{$basket['firma']}'></td><td colspan='2'></td></tr>";
$faktura .= "<tr><td>IČ:</td><td>{$basket['ic']}'></td><td colspan='2'></td></tr>";
$faktura .= "<tr><td>DIČ:</td><td>{$basket['dic']}'></td><td colspan='2'></td></tr>";
$faktura .= "</table>";

$faktura .= "<table class='basket_table'><th class='nazev'>Název</th><th>Cena za kus<br><small>bez DPH</small></th><th>Cena za kus<br><small>s DPH</small></th><th>Počet kusů</th><th>Cena<br><small>bez DPH</small></th><th>Cena<br><small>s DPH</small></th><th></th>";
foreach($items as $item){
    $faktura .= "<tr><td class='nazev'>{$item['item']}</td>
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
$cenaBezDPH = number_format($cenaBezDPH, 2, '.', '');
$cenaSDPH = number_format($cenaSDPH, 2, '.', '');
$faktura .= "<tr><td colspan='4'>Poštovné a balné: {$doprava['cz']}</td><td class='cena'>$cena Kč</td><td class='cena'>$cena Kč</td>";
$faktura .= "<tr  class='celkem'><td colspan='4'>Celkem</td><td class='cena'>$cenaBezDPH Kč</td><td class='cena'>$cenaSDPH Kč</td>";
$faktura .= "</table>";
$faktura.= "<button>Storno</button><button>Objednat</button>";

return $faktura;