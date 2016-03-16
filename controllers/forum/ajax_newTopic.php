<?php
function __autoload($name){
	include_once("../../models/Classes/$name.class.php");
}

$forum = new Forum();

$nadpis = $forum->safeText($_POST['nadpis']);
$autor = $forum->safeText($_POST['autor']);
$popis = $forum->safeText($_POST['popis']);

if($nadpis == "" || $autor == "" || $popis == "") {
	return -1;
}

echo $forum->setNewTopic($nadpis, $autor, $popis);
return;