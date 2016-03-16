<?php
$container = '<h2>Nové téma</h2>';
//Status
$container .= '<div id="status_newTopicForum"></div>';
//Nadpis
$container .= "<div>";
$container .= "<label for='forum_nadpis'>Název tématu:</label>";
$container .= "<input type='text' id='forum_nadpis'>";
$container .= "</div>";

//Autor
$container .= "<div>";
$container .= "<label for='forum_autor'>Jméno autora:</label>";
$container .= "<input type='text' id='forum_autor'>";
$container .= "</div>";

//Popis
$container .= "<div>";
$container .= "<label for='forum_popis'>Popis tématu:</label>";
$container .= "<textarea id='forum_popis'></textarea>";
$container .= "</div>";

//Ulozit
$container .= "<div>";
$container .= "<input type='submit' id='forum_ulozit' value='uložit' onclick='newTopic()'>";
$container .= "</div>";

return $container;