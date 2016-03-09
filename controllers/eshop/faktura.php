<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 3.11.15
 * Time: 15:01
 */
function __autoload($name){
    include("../../models/Classes/$name.class.php");
}

$ip = $_SERVER["REMOTE_ADDR"];
$eshop = new Eshop($ip);
session_start();
$basket = $eshop->getBasket($ip);

if((($basket['jmeno'] == "" || $basket['prijmeni'] == "") && $basket['firma'] == "")  || $basket['adresa'] == "" || $basket['mesto'] == "" || $basket['psc'] == ""   || $basket['item'] == "" || $basket['item'] == "_;_" || $basket['mail'] == "" || $eshop->validateEMAIL($basket['mail']) != true){
    print include_once('../../views/eshop/faktura-neni_vyplneno.php');
    return;
}

if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
    $lang = 'en';
    $nahoru = "top";
    $razeni = 'Sort';
    $podleCeny = 'by price';
    $podleVelikosti = 'by size';
    $rozmery = 'dimensions';
    $montazniPrvek = 'hardware';
    $cenaZaKus = 'price per 1 piece';
    $bezDPH = 'without tax';
    $sDPH = 'with tax';
    $pocetKusu = 'quantity';
    $poznamka = 'comment';
    $popis = 'description';
    $daleDoporucujeme = 'Recommends';
    $languageForDb = "EN";
    $mena = 'EUR';
	$kosik = 'Basket';
	$mujKosik = 'My basket';
	$nazev = 'name';
	$cenaPrice = 'price';
	$celkem = 'Total';
	$dopravaAPlatba = 'Shipping and payment';
	$dopravneABalneTranslation = 'Shipping';
	$celkovaHmotnostTranslation = 'Total weight';
	$fakturacniUdaje = 'Billing information';
	$jmenoTranslation = 'Firstname';
	$prijmeniTranslation = 'Lastname';
	$adresaTranslation = 'Adress';
	$mestoTranslation = 'City';
	$PSCTranslation = 'ZIP code';
	$statTranslation = 'Country';
	$dodaciAdresa = 'Delivery address (if different from billing information)';
	$upravit = 'change';
	$odstranit = 'delete';
	$menaSlovo = 'Currency';
	$rekapituace = 'Next';
	$ico = 'Company registration number';
	$dic = 'TAX ID';
	$slevaTranslation = 'discount';
	$backToEshop = 'Back';
	$odeslat = 'Send';
} else {
    $lang = 'cz';
    $nahoru = "nahoru";
    $razeni = 'Řazení';
    $podleCeny = 'podle ceny';
    $podleVelikosti = 'podle velikosti';
    $rozmery = 'rozměry';
    $montazniPrvek = 'montážní prvek';
    $cenaZaKus = 'cena za 1ks';
    $bezDPH = 'bez DPH';
    $sDPH = 's DPH';
    $pocetKusu = 'počet kusů';
    $poznamka = 'poznámka';
    $popis = 'popis';
    $daleDoporucujeme = 'Dále doporučujeme';
    $languageForDb = "";
    $mena = 'Kč';
	$kosik = 'Košík';
	$mujKosik = 'Můj košík';
	$nazev = 'název';
	$cenaPrice = 'cena';
	$celkem = 'Celkem';
	$dopravaAPlatba = 'Doprava a platba';
	$celkovaHmotnostTranslation = 'Celková hmotnost';
	$fakturacniUdaje = 'Fakturační údaje';
	$jmenoTranslation = 'Jméno';
	$prijmeniTranslation = 'Příjmení';
	$adresaTranslation = 'Adresa';
	$mestoTranslation = 'Město';
	$PSCTranslation = 'PSČ';
	$statTranslation = 'Stát';
	$dodaciAdresa = 'Dodací adresa (liší-li se od fakturačních údajů)';
	$upravit = 'upravit';
	$odstranit = 'odstranit';
	$menaSlovo = 'Měna';
	$rekapituace = 'Rekapituace';
	$ico = 'IČ';
	$dic = 'DIČ';
	$slevaTranslation = 'sleva';
	$dopravneABalneTranslation = 'Poštovné a balné';
	$backToEshop = 'Zpět k objednávce';
	$odeslat = 'Objednat';
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

        $items[$number]['item'] = $thisItem[$lang];
        $items[$number]['id'] = $itemsAll[$num];
        $items[$number]['count'] = $countAll[$num];
        $items[$number]['subcategory'] = $eshop->getSubcategory($thisItem['subcategory']);
        $items[$number]['subcategory'] = $items[$number]['subcategory']['category'];
        $items[$number]['category'] = $eshop->getCategory($items[$number]['subcategory']);
        $items[$number]['category'] = $items[$number]['category'][$lang];
        $items[$number]['cenaZaKusBezDPH'] = number_format($thisItem['cenaBezDPH'.$basket['mena']], 2, '.', '');
        $items[$number]['cenaZaKusSDPH'] = number_format($thisItem['cenaSDPH'.$basket['mena']], 2, '.', '');
        $items[$number]['cenaBezDPH'] = number_format($countAll[$num]*$thisItem['cenaBezDPH'.$basket['mena']], 2, '.', '');
        $items[$number]['cenaSDPH'] = number_format($countAll[$num]*$thisItem['cenaSDPH'.$basket['mena']], 2, '.', '');
        $celkovaCena['sDPH'] += $items[$number]['cenaSDPH'];
        $celkovaCena['bezDPH'] += $items[$number]['cenaBezDPH'];
        $celkovaHmotnost += $thisItem['hmotnost']*$items[$number]['count'];
    }
}
$celkovaCena['sDPH'] = number_format($celkovaCena['sDPH'], 2, '.', '');
$celkovaCena['bezDPH'] = number_format($celkovaCena['bezDPH'], 2, '.', '');
$celkovaHmotnostKg = $celkovaHmotnost/1000;
$celkovaHmotnostKg = number_format($celkovaHmotnostKg, 2, ',', '');
$doprava = $eshop->getDopravaById($basket['doprava']);
$zbytek = $celkovaHmotnost%25000;
$ostatni = (int) ($celkovaHmotnost - $zbytek)/25000;
$cena = $doprava['cenaZaGram'.$basket['mena']]*$zbytek + $doprava['cenaZaGram'.$basket['mena']]*$ostatni + ($ostatni + 1)*$doprava['cenaZaJdenBalik'.$basket['mena']];
$cena = number_format($cena, 2, '.', '');
$cenaBezDPH = $cena;
$cenaSDPH = $cena;

if($basket['mena'] == 'EN') {
    $mena = 'EUR';
} else {
    $mena = 'Kč';
}

print include_once('../../views/eshop/faktura-html.php');