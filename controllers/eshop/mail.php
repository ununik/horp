<?php
function __autoload($name){
	include_once("../../models/Classes/$name.class.php");
}
$ip = $_SERVER["REMOTE_ADDR"];
$eshop = new Eshop($ip);
$basket = $eshop->getBasket($ip);
if((($basket['jmeno'] == "" || $basket['prijmeni'] == "") && $basket['firma'] == "")  || $basket['adresa'] == "" || $basket['mesto'] == "" || $basket['psc'] == ""   || $basket['item'] == "" || $basket['item'] == "_;_"){
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

$mail = true;

$tabulkaFaktura = include_once('../../views/eshop/faktura-html.php');


$content = "<html>
				<head>
					<meta charset='utf-8'>
				</head>
				<body>
					<h1>HORP -výroba lezeckých chytů</h1>
					<p>Dobrý den,<br>děkujeme za vaši objednávku na stránkách horp.cz. Vaši objednávku začínáme zpracovávat a o jejím průběhu vás budeme informovat.</p>
					<p>Zde si můžete prohlédnout vaši objednávku:</p>
						$tabulkaFaktura
					<p>Přejeme Vám příjemný zbytek dne.</p>
					<p>S pozdravem HORP</p>
				</body>
			</html>";

/**
 * EMAIL ZAKAZNIKOVI
 */
//Email information
$admin_email = $basket['mail'];
$subject = "Objednavka na horp.cz";
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
$eshop->done($ip);
