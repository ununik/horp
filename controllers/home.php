<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 10:31
 */
$background = "background2.png";
if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
    $header = "Welcome";
    $body = '<p>Our company was established in 1992. Since then we have been designing and manufacturing handholds for climbing walls. Since the above period of time our company has sold tens of thousands of the products. We are sure that the quality of our products is very high in comparison with our remarkably low prices. Our products can be found all over Europe. They are currently being used on climbing walls in Germany, Switzerland, Italy etc.</p>';
}else{
    $header = "Vítejte u nás";
    $body = '<p>Firma začala vyrábět lezecké chyty v r. 1992. Po začátcích hledání vhodné technologie se ustálila na výrobě chytů z epoxidové pryskyřice, která je ve výrobním programu dosud. Chyty vyrobené touto technologií vynikají nesporně vysokou životností a jsou šetrné k pokožce prstů. Po roce 2000 rozšířila svůj sortiment o trend, kterým se ubírají všichni výrobci umělých chytů, a to o chyty polyuretanové a později chyty z polyesteru. Výhodou těchto chytů je menší váha, větší tření a také jasnější barvy v porovnání s epoxidovými chyty.</p>
            <p>Jedním z našich cílů je dodávat našim zákazníkům kvalitní výrobky za rozumnou cenu. Tento cíl se nám dlouhodobě daří plnit, neboť v porovnání s ostatními firmami podnikajícími v této oblasti se držíme na spodní hranici cenových relací. O tom, že to není na úkor kvality, svědčí cca 15 ti-letý pravidelný odbyt do mnoha zemí Evropy.</p>';
}

$content = include_once('views/home/homepage-html.php');
return $content;