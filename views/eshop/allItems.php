<?php
$container = "<div id='allItems'><table>";

$number=0;
for($n = 0; $n < $pocetRadku; $n++)
{
	$container .= "<tr>";
	for($i = 0; $i < $pocetSloupcu; $i++)
	{
		if(count($Allitems) > $number){
			$container .= "<td><a href='index.php?page=eshop&category={$Allitems[$number]['subcategory']}&id={$Allitems[$number]['id']}' title='{$Allitems[$number][$lang]}'><img src='images/eshop/foto/{$Allitems[$number]['subcategory']}/250/{$Allitems[$number]['img1']}'></a></td>";
			$number++;
		} else {
			$container .= "<td></td>";
		}
	}
	$container .= "</tr>";
}

$container .= "</table><div id='celaObrazovka' onclick='fullScreen()'>celaObrazovka</div></div><div id='blackBackground'></div>";

return $container;