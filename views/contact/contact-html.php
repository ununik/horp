<?php
$container = "<h1>$header</h1>";
$container .= "<img src='". WWW . "/images/page/foto.bmp' class='kontakt_foto' alt='Petr Horyna' title='Petr Horyna'>";
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
$container .= '<div id="facebook"><h2>FACEBOOK</h2>
				<iframe id="facebookIframe" src="//www.facebook.com/plugins/likebox.php?href=https://www.facebook.com/pages/horpcz/1067663049920317?fref=ts&amp;width=220&amp;height=440&amp;colorscheme=light&amp;show_faces=false&amp;header=true&amp;stream=true&amp;show_border=false" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:220px; height:440px;" allowtransparency="true"></iframe>
				</div>';
$container .= '<div id="kontakt_logo"><h4>Logo</h4>
				[<a href="/data/logo/horp.pdf" target="_blank">PDF</a>]</div>';
$container .= '<div id="kontakt_mapa" >' . $mapa . '</div>';
$container .= "<div class='konec_content'></div>";

$container .= '<script>heightC = $("#content").height();
				heightC -= 29;
						document.getElementById("facebook").style.height = heightC + "px"</script>';

return $container;