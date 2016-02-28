<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 15:50
 */
$ip = $_SERVER["REMOTE_ADDR"];
$eshop = new Eshop($ip);
$basketItem = $eshop->getBasket($ip);
	
if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
	$kosik = 'Basket';
	$mujKosik = 'My basket';
	$nazev = 'name';
	$cenaPrice = 'price';
	$celkem = 'Total';
	$dopravaAPlatba = 'Shipping and payment';
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
	$languageForDb = "EN";
	$voucher = 'Voucher';
	$mailiningTranslation = "I wish to receive promotional emails";
	$ostatniTranslation = 'Others';
} else {
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
	$languageForDb = "";
	$voucher = 'Kód slevového kuponu';
	$mailiningTranslation = "Přeji si dostávat reklamní emaily";
	$ostatniTranslation = 'Ostatní';
}

$menaSelect = "<option value='' ";
if($basketItem['mena'] == ""){
	$menaSelect .= "selected ";
}
$menaSelect .= ">Kč</option><option value='EN' ";
if($basketItem['mena'] == "EN"){
	$menaSelect .= "selected ";
}
$menaSelect .= ">EUR</option>";

$mailingValidation = '';
if($basketItem['mailing'] == true){
	$mailingValidation = "checked ";
}


$itemsAll = explode("_;_", $basketItem['item']);

$countAll = explode("_;_", $basketItem['count']);

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
        $items[$number]['img1'] = $thisItem['img1'];
        $items[$number]['categoryNumber'] = $thisItem['subcategory'];
        $items[$number]['subcategory'] = $eshop->getSubcategory($thisItem['subcategory']);
        $items[$number]['subcategory'] = $items[$number]['subcategory']['category'];
        $items[$number]['category'] = $eshop->getCategory($items[$number]['subcategory']);
        $items[$number]['category'] = $items[$number]['category'][$lang];
        $items[$number]['id'] = $itemsAll[$num];
        $items[$number]['count'] = $countAll[$num];
        $items[$number]['cenaZaKusBezDPH'] = number_format($thisItem['cenaBezDPH'.$basketItem['mena']], 2, '.', '');
        $items[$number]['cenaZaKusSDPH'] = number_format($thisItem['cenaSDPH'.$basketItem['mena']], 2, '.', '');
        $items[$number]['cenaBezDPH'] = number_format($countAll[$num]*$thisItem['cenaBezDPH'.$basketItem['mena']], 2, '.', '');
        $items[$number]['cenaSDPH'] = number_format($countAll[$num]*$thisItem['cenaSDPH'.$basketItem['mena']], 2, '.', '');
        $celkovaCena['sDPH'] += $items[$number]['cenaSDPH'];
        $celkovaCena['bezDPH'] += $items[$number]['cenaBezDPH'];
        $celkovaHmotnost += $thisItem['hmotnost']*$items[$number]['count'];
    }
}
$celkovaCena['sDPH'] = number_format($celkovaCena['sDPH'], 2, '.', '');
    $celkovaCena['bezDPH'] = number_format($celkovaCena['bezDPH'], 2, '.', '');
$celkovaHmotnostKg = $celkovaHmotnost/1000;
$celkovaHmotnostKg = number_format($celkovaHmotnostKg, 2, ',', '');
$doprava = include('controllers/eshop/doprava_radio.php');


return include_once('views/eshop/basket-html.php');