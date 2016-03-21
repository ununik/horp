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

//LINKS
// The Regular Expression filter
$reg_exUrl = "/(http|https|ftp|ftps)\:\/\/[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,3}(\/\S*)?/";
// Check if there is a url in the text
if(preg_match($reg_exUrl, $prispevek, $url)) {
	// make the urls hyper links
	$prispevek = preg_replace($reg_exUrl, "<a href='{$url[0]}' target='_blank'>{$url[0]}</a> ", $prispevek);
}

echo $forum->setNewEntryToTopic($jmeno, $prispevek, $_POST['id']);
return;