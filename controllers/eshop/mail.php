<?php
function __autoload($name){
	include_once("../../models/Classes/$name.class.php");
}
session_start();
$ip = $_SERVER["REMOTE_ADDR"];
$eshop = new Eshop($ip);
$basket = $eshop->getBasket($ip);
if((($basket['jmeno'] == "" || $basket['prijmeni'] == "") && $basket['firma'] == "")  || $basket['adresa'] == "" || $basket['mesto'] == "" || $basket['psc'] == ""   || $basket['item'] == "" || $basket['item'] == "_;_"){
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
if($basket['mena'] == 'EN') {
    $mena = 'EUR';
} else {
    $mena = 'Kč';
}
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
		
		$prodanoKS = $thisItem['prodanoKS'] + $countAll[$num];
		$prodanoObjednavek = $thisItem['prodanoObjednavek'] + 1;
		
		$eshop->updateCountShopping($itemsAll[$num], $prodanoKS, $prodanoObjednavek);
	}
}
$celkovaCena['sDPH'] = number_format($celkovaCena['sDPH'], 2, '.', '');
$celkovaCena['bezDPH'] = number_format($celkovaCena['bezDPH'], 2, '.', '');
$celkovaHmotnostKg = $celkovaHmotnost/1000;
$celkovaHmotnostKg = number_format($celkovaHmotnostKg, 2, ',', '');
$doprava = $eshop->getDopravaById($basket['doprava']);
$zbytek = $celkovaHmotnost%20000;
$ostatni = (int) ($celkovaHmotnost - $zbytek)/20000;
$cena = $doprava['cenaZaGram'.$basket['mena']]*$zbytek + $doprava['cenaZaGram'.$languageForDb]*$basket['mena'] + ($ostatni + 1)*$doprava['cenaZaJdenBalik'.$basket['mena']];
$cena =  number_format($cena, 2, '.', '');
$cenaBezDPH = $cena;
$cenaSDPH = $cena;

$mail = true;

$tabulkaFaktura = include_once('../../views/eshop/faktura-html.php');

if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
    $content = "<html>
        <head>
        <meta charset='utf-8'>
        </head>
        <body>
        <h1>HORP - climbing holds production</h1>
        <p>Hi,<br>thank you for your order in horp.cz. We are getting to work on your order. We will tell you about the status soon.</p>
        <p>Your order:</p>
        $tabulkaFaktura
        <p>Have a nice rest of this day.</p>
        <p>HORP</p>
        </body>
        </html>";
    $subject = "Order in horp.cz";    
} else {
    $content = "<html>
    				<head>
    					<meta charset='utf-8'>
    				</head>
    				<body>
    					<h1>HORP - výroba lezeckých chytů</h1>
    					<p>Dobrý den,<br>děkujeme za vaši objednávku na stránkách horp.cz. Vaši objednávku začínáme zpracovávat a o jejím průběhu vás budeme informovat.</p>
    					<p>Zde si můžete prohlédnout vaši objednávku:</p>
    						$tabulkaFaktura
    					<p>Přejeme Vám příjemný zbytek dne.</p>
    					<p>S pozdravem HORP</p>
    				</body>
    			</html>";
    $subject = "Objednavka na horp.cz";
}

/**
 * EMAIL ZAKAZNIKOVI
 */
//Email information
$admin_email = $basket['mail'];
$header = "From: horp@seznam.cz\r\n";
$header.= "MIME-Version: 1.0\r\n";
$header.= "Content-Type: text/html; charset=utf-8\r\n";
$header.= "X-Priority: 1\r\n";

//send email
mail($admin_email, "$subject", $content, $header);
$content = "<html>
<head>
<meta charset='utf-8'>
</head>
<body>
<h1>Rekapituace objednávky</h1>
$tabulkaFaktura
</body>
</html>";
$subject = "({$basket['jmeno']} {$basket['prijmeni']}) objednavka na horp.cz";
mail('ununik@gmail.com', "$subject", $content, $header);
mail('horp@seznam.cz', "$subject", $content, $header);	

$eshop->addMailingContact($basket['mail'], $basket['mailing'], $basket['jmeno'], $basket['prijmeni'], $lang);
$eshop->done($ip);
