<?php
$container = "<h2>{$topic['title']}</h2>";
$container .= '<table class="forum_tema_autorstvi">';
$container .= "<tr><td class='forum_tema_autorstvi_left'>Autor:</td><td><strong>{$topic['author']}</strong></td></tr>";
$container .= "<tr><td class='forum_tema_autorstvi_left'>Vytvořeno:</td><td><strong>$vytvoreno</strong></td></tr>";
$container .= '</table>';
$container .= "<div class='forum_popis'>$popis</div>";

foreach ($forum->getEntriesForTopic($_GET['id']) as $entry) {
	$container .= "<div id='prispevek_{$entry['id']}' class='forum_prispevek'>";
	$container .= '<div class="forum_entry_head">';
	$container .= "<div>{$entry['name']}</div>";
	
	$date = date('j. n. Y - H:i:s', $entry['timestamp']);
	$container .= "<div class='forum_datum_entry'>$date</div>";
	$container .= '</div>';
	
	$text = nl2br ($entry['text']);
	$container .= "<div class='forum_entry_text'>$text</div>";
	
	$container .= "<div class='forum_reply'>";
	foreach ($forum->getEntriesForEntry($entry['id']) as $reply) {
		$container .= '<div class="forum_entryReply_head">';
		$container .= "<div>{$reply['name']}</div>";
		
		$date = date('j. n. Y - H:i:s', $reply['timestamp']);
		$container .= "<div class='forum_datum_entryReply'>$date</div>";
		$container .= '</div>';
		
		$text = nl2br ($reply['text']);
		$container .= "<div class='forum_entryReply_text'>$text</div>";
	}
	$container .= '</div>';
	
	$container .= '<div class="forum_reagovat">';
	$container .= '<h3>Reagovat na tento příspěvek</h3>';
	//Status
	$container .= "<div id='status_newEntryForum_{$entry['id']}'></div>";
	//Jmeno
	$container .= "<div>";
	$container .= "<label for='forum_jmeno_{$entry['id']}'>Jméno:</label>";
	$container .= "<input type='text' id='forum_jmeno_{$entry['id']}'>";
	$container .= "</div>";
	
	//Prispevek
	$container .= "<div>";
	$container .= "<label for='forum_prispevek_{$entry['id']}'>Příspěvek:</label>";
	$container .= "<textarea id='forum_prispevek_{$entry['id']}'></textarea>";
	$container .= "</div>";
	
	//Pridat
	$container .= "<div>";
	$container .= "<input type='submit' value='vložit příspěvěk' onclick='reagovatNaPrispevek(\"{$entry['id']}\")'>";
	$container .= "</div>";
	
	$container .= '</div>';
	
	$container .= '</div>';
}


$container .= '<div>';
$container .= '<h3>Vložit nový příspěvek</h3>';
//Status
$container .= '<div id="status_newEntryForum"></div>';
//Jmeno
$container .= "<div>";
$container .= "<label for='forum_jmeno'>Jméno:</label>";
$container .= "<input type='text' id='forum_jmeno'>";
$container .= "</div>";

//Prispevek
$container .= "<div>";
$container .= "<label for='forum_prispevek'>Příspěvek:</label>";
$container .= "<textarea id='forum_prispevek'></textarea>";
$container .= "</div>";

//Pridat
$container .= "<div>";
$container .= "<input type='submit' id='forum_vlozit' value='vložit příspěvěk' onclick='pridatPrispevek(\"{$topic['id']}\")'>";
$container .= "</div>";

$container .= '</div>';
return $container;