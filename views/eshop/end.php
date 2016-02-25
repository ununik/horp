<?php
if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
    $containder = "<h3>Thank you.</h3><h3>We are getting to work on your order. We will tell you about the status soon.</h3>";
} else {
    $containder = "<h3>Děkujeme Vám za nákup. Vaši objednávku začneme brzy zpracovávat.</h3><h3>Přejeme Vám příjemný zbytek dne.</h3>";
}

return $containder;