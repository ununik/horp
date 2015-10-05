<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 05.10.2015
 * Time: 15:53
 */
$basket = "<h2>Můj košík</h2>";
$basket .= "<table><th>Název</th><th>Barva</th><th>Cena za kus (bez DPH)</th><th>Cena za kus (s DPH)</th><th>Počet kusů</th><th>Cena bez DPH</th><th>Cena s DPH</th><th></th>";
foreach($items as $item){
    $basket .= "<tr><td>{$item['item']}</td>
                <td>{$item['barva']}</td>
                <td>{$item['cenaZaKusBezDPH']}</td>
                <td>{$item['cenaZaKusSDPH']}</td>

                <td>{$item['count']}</td>
                <td>{$item['cenaSDPH']}</td>
                <td>{$item['cenaBezDPH']}</td>
                <td><span onclick='deleteFromBasket({$item['id']}, {$item['colorId']})'>odstranit</span></td>
                </tr>";
}
$basket .= "<tr><td colspan='5'>Celkem</td><td>{$celkovaCena['bezDPH']}</td><td>{$celkovaCena['sDPH']}</td><td></td></tr>";
$basket .= "</table>";
$basket .= "Poznámka<textarea></textarea>";

$basket .= "<button>Přejít k dalšímu kroku</button>";

return $basket;