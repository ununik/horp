<?php
if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
    $galerie = 'Gallery';
} else {
    $galerie = 'Galerie';
}

$gallery = new Gallery();

return include 'views/galerie/basic-page.php';