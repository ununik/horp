<?php
function __autoload($name){
    include_once("../../models/Classes/$name.class.php");
}
$ip = $_SERVER["REMOTE_ADDR"];
$eshop = new Eshop($ip);
$basket = $eshop->getBasket($ip);

if((($basket['jmeno'] == "" || $basket['prijmeni'] == "") && $basket['firma'] == "" )){// || $basket['adresa'] == "" || $basket['mesto'] == "" || $basket['psc'] == ""){
    print include_once('../../views/eshop/faktura-neni_vyplneno.php');
    return;
}

$itemsAll = explode("_;_", $basket['item']);
$countAll = explode("_;_", $basket['count']);

$items = array();
$number = -1;
$celkovaCena['sDPH'] = 0;
$celkovaCena['bezDPH'] = 0;
$celkovaHmotnost = 0;
for($num = 0; $num < count($itemsAll); $num++){
    if($itemsAll[$num] != "" && $countAll[$num] != "" && $countAll[$num] != "0" ) {
        $number++;
        $thisItem = $eshop->getItem($itemsAll[$num]);

        $items[$number]['item'] = $thisItem['cz'];
        $items[$number]['id'] = $itemsAll[$num];
        $items[$number]['count'] = $countAll[$num];
        $items[$number]['subcategory'] = $eshop->getSubcategory($thisItem['subcategory']);
        $items[$number]['subcategory'] = $items[$number]['subcategory']['category'];
        $items[$number]['category'] = $eshop->getCategory($items[$number]['subcategory']);
        $items[$number]['category'] = $items[$number]['category']['cz'];
        $items[$number]['cenaZaKusBezDPH'] = number_format($thisItem['cenaBezDPH'], 2, '.', '');
        $items[$number]['cenaZaKusSDPH'] = number_format($thisItem['cenaSDPH'], 2, '.', '');
        $items[$number]['cenaBezDPH'] = number_format($countAll[$num]*$thisItem['cenaBezDPH'], 2, '.', '');
        $items[$number]['cenaSDPH'] = number_format($countAll[$num]*$thisItem['cenaSDPH'], 2, '.', '');
        $celkovaCena['sDPH'] += $items[$number]['cenaSDPH'];
        $celkovaCena['bezDPH'] += $items[$number]['cenaBezDPH'];
        $celkovaHmotnost += $thisItem['hmotnost']*$items[$number]['count'];
    }
}
$celkovaCena['sDPH'] = number_format($celkovaCena['sDPH'], 2, '.', '');
$celkovaCena['bezDPH'] = number_format($celkovaCena['bezDPH'], 2, '.', '');
$celkovaHmotnostKg = $celkovaHmotnost/1000;
$celkovaHmotnostKg = number_format($celkovaHmotnostKg, 2, ',', '');
$doprava = $eshop->getDoprava($basket['doprava']);
$zbytek = $celkovaHmotnost%20000;
$ostatni = (int) ($celkovaHmotnost - $zbytek)/20000;
$cena = $doprava['cenaZaGram']*$zbytek + $doprava['cenaZaGram']*$ostatni + ($ostatni + 1)*$doprava['cenaZaJdenBalik'];
$cena = (int) $cena;
$cena = number_format($cena, 2, '.', '');
$cenaBezDPH = $cena;
$cenaSDPH = $cena;


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
$faktura .= "<tr  class='celkem'><td colspan='4'>Celkem</td><td class='cena'>$cenaBezDPH Kč</td><td class='cena'>$cenaSDPH Kč</td>";
$faktura .= "</table>";
$faktura .= "<h3>Poznámka</h3>";
$poznamka = nl2br($basket['comment']);
$faktura .= "<div>{$poznamka}</div>";


$content = "<h1>Vážený zákazníku,</h1>
            přijali jsme Vaši objednávku. O dalším průběhu Vás budeme informovat přes tento mail případně telefonicky.";
$content .= $faktura;


//Email information
$admin_email = $basket['mail'];
$subject = "HORP - objednávka";
$header = "From: ununik@gmail.com\r\n";
$header.= "MIME-Version: 1.0\r\n";
$header.= "Content-Type: text/html; charset=utf-8\r\n";
$header.= "X-Priority: 1\r\n";

//send email
mail($admin_email, "$subject", $content, $header);