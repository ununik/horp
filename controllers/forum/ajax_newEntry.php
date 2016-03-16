<?php
function __autoload($name){
	include_once("../../models/Classes/$name.class.php");
}

$forum = new Forum();

$jmeno = $forum->safeText($_POST['jmeno']);
$prispevek = $forum->safeText($_POST['prispevek']);

if($jmeno == "" || $prispevek == "") {
	return -1;
}

echo $forum->setNewEntryToTopic($jmeno, $prispevek, $_POST['id']);
return;