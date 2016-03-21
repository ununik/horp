<?php
$container = '<h1>Diskuzní fórum</h1>';
$container .= '<div id="formu_navigation">';
$container .= '<a href="'.WWW.'/forum/" title="Seznam témat">Seznam témat</a>';
$container .= '<a href="'.WWW.'/forum/nove-tema/" title="Nové téma">Nové téma</a>';
$container .= '<a href="'.WWW.'/forum/pravidla/" title="Pravidla">Pravidla</a>';
$container .= '</div>';
$container .= $pageContent;

return $container;