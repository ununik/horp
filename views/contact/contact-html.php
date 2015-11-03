<?php
$container = "<h1>$header</h1>";
$container .= "<img src='fotka' class='kontakt_foto' alt='Petr Horyna' title='Petr Horyna'>";
$container .= "<div id='kontakt_information'>";
$container .= "<h4>$name</h4>";
$container .= "<p>";
$container .= "<div>$street</div>";
$container .= "<div>$city</div>";
$container .= "<div>$psc</div>";
$container .= "<div>$state</div>";
$container .= "</p><p>";
$container .= "<div>$mobil1</div>";
$container .= "<div>$mobil2</div>";
$container .= "</p><p>";
$container .= "<div><a href='mailto:$email' title='$email'>$email</a></div>";
$container .= "<div><a href='https://www.facebook.com/horpcz/' target='_blank'>https://www.facebook.com/horpcz/</a></div>";
$container .= "</p>";
$container .= "<p>";
$container .= $account;
$container .= "</p>";
$container .= "<p>";
$container .= "<div>$ico</div><div>$dic</div>";
$container .= "</p>";
$container .= "</div>";
$container .= '<div id="kontakt_mapa" >' . $mapa . '</div>';
$container .= "<div class='konec_content'></div>";

return $container;