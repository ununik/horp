<?php
$container = "<h1>$header</h1>";
$container .= "<img src='fotka' class='kontakt_foto' alt='Petr Horyna' title='Petr Horyna'>";
$container .= "<h4>$name</h4>";
$container .= "<p>";
$container .= "<div>$street</div>";
$container .= "<div>$city</div>";
$container .= "<div>$psc</div>";
$container .= "</p><p>";
$container .= "<div>$mobil1</div>";
$container .= "<div>$mobil2</div>";
$container .= "</p><p>";
$container .= "<div><a href='mailto:$email' title='$email'>$email</a></div>";
$container .= "</p>";

return $container;