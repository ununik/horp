<?php
$forum = new Forum();

$topic = $forum->getTopic($_GET['id']);

$title = "{$topic['title']} | Diskuzní fórum | HORP - výroba lezeckých chytů";
$popis = nl2br ($topic['description']);
$vytvoreno = date('j. n. Y - H:i', $topic['timestamp']);

return include 'views/forum/tema.php';