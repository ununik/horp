<?php
if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
    $containder = "<h3>Thank you.</h3><h3>We are getting to work on your order. We will tell you about the status soon.</h3>";
    $containder .= "<p>Visit our facebook: <a href='https://www.facebook.com/horpcz/' target='_blank'>www.facebook.com/horpcz</a></p>";
} else {
    $containder = "<h3>Děkujeme Vám za nákup. Vaši objednávku začneme brzy zpracovávat.</h3><h3>Přejeme Vám příjemný zbytek dne.</h3>";
    $containder .= "<p>Navštivte náš profil na facebooku: <a href='https://www.facebook.com/horpcz/' target='_blank'>www.facebook.com/horpcz</a>";
}

return $containder;