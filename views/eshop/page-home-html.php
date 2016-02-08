<?php
$body = "<h1>Eshop</h1>";
$body .= "<h2>$vyberSiMenu</h2>";
$body .= "<div id='vyberMenyDiv'><div class='vyberMeny$activeCurrencyKC' onclick='changeCurrency(\"\")'>Kč</div><div class='vyberMeny$activeCurrencyEUR' onclick='changeCurrency(\"EN\")'>EUR</div></div>";

return $body;