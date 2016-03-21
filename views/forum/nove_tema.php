<?php
$container = '<h2>Nové téma</h2>';
$container .= '<div class="forum_newEntry_topic">';
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
$container .= "<button onclick='newTopic()'>uložit</button>";
$container .= "</div>";
$container .= '</div>';

return $container;