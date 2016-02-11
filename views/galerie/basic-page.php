<?php
$container = "<h1>$galerie</h1>";

$container .= "<table id='galleryTable' border='1px'>";

$i = 0;
foreach ($gallery->getAllItems() as $galleryItem){
    $i ++;
    if($i == 1) {
        $container .= "<tr>";
    }
    $container .= "<td><h4>{$galleryItem['title']}</h4>";
    
    if($galleryItem['youtube'] == true ) {
       // $container .= "<iframe class='youtube' src='{$galleryItem['link']}' frameborder='0' allowfullscreen></iframe>";
       $container .= '<iframe width="560" height="315" src="https://www.youtube.com/embed/Eq8dOn3LoVc" frameborder="0" allowfullscreen></iframe>';
    } else {
        
    }
    
    $container .= "</td>";
    
    if($i > 2) {
        $container .= "</tr>";
        $i = 0;
    }
}
if($i != 2) {
    for($i; $i < 3; $i++) {
        $container .= "<td></td>";
    }
    $container .= "</tr>";
}
$container .= "</table>";

return $container;