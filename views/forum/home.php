<?php
$container = '<h2>Seznam témat</h2>';

foreach ($forum->getAllTopics() as $topic) {
	$container .= "<a href='/forum/tema/{$topic['id']}/' class='allTopics'>";
	$container .= "<h3>{$topic['title']}</h3>";
	$lastChanges = date('j. n. Y - H:i:s', $topic['lastTimestamp']);
	$container .= "<div> - poslední aktualizace: <b>$lastChanges</b></div>";
	$container .= '</a>';
	
}

return $container;