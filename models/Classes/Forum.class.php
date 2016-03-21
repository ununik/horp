<?php
class Forum extends Connection
{
	public function getAllTopics()
	{
		$db = parent::connect();
		$result = $db->prepare("SELECT * FROM `forum_topic` WHERE active=1 ORDER BY `lastTimestamp` DESC");
		$result->execute();
		$topic = $result->fetchAll();
		
		return $topic;
	}
	public function safeText($text)
	{
		return addslashes(chop(htmlspecialchars($text)));
	}
	public function setNewTopic($nadpis, $autor, $popis)
	{
		$timestamp = time();
		
		$db = parent::connect();
		$result = $db->prepare("INSERT INTO `forum_topic`(`title`, `description`, `active`, `timestamp`, `lastTimestamp`, `author`) VALUES (?, ?, ?, ?, ?, ?)");
		$result->execute(array($nadpis, $popis, 1, $timestamp, $timestamp, $autor));
		
		return $db->lastInsertId();
	}
	
	public function getTopic($id)
	{
		$db = parent::connect();
		$result = $db->prepare("SELECT * FROM `forum_topic` WHERE id  = ? AND active=1");
		$result->execute(array($id));
		$topic = $result->fetch();
		
		return $topic;
	}
	
	public function setNewEntryToTopic($jmeno, $text, $id)
	{
		$timestamp = time();
	
		$db = parent::connect();
		$result = $db->prepare("INSERT INTO `forum_entry`(`name`, `text`, `topicNum`, `active`, `timestamp`) VALUES (?, ?, ?, ?, ?)");
		$result->execute(array($jmeno, $text, $id, 1, $timestamp));
		$lastId = $db->lastInsertId();
		
		$result = $db->prepare("UPDATE `forum_topic` SET `lastTimestamp`=? WHERE `id`=? ");
		$result->execute(array($timestamp, $id));
		
		return $lastId;
	}
	
	public function getEntriesForTopic($id)
	{
		$db = parent::connect();
		$result = $db->prepare("SELECT * FROM `forum_entry` WHERE topicNum  = ? AND active=1 ORDER BY `timestamp` DESC");
		$result->execute(array($id));
		$entries = $result->fetchAll();
		
		return $entries;
	}
	
	public function setNewEntryToEntry($jmeno, $text, $id)
	{
		$timestamp = time();
	
		$db = parent::connect();
		$result = $db->prepare("INSERT INTO `forum_entry`(`name`, `text`, `replyToEntryNum`, `active`, `timestamp`) VALUES (?, ?, ?, ?, ?)");
		$result->execute(array($jmeno, $text, $id, 1, $timestamp));
		
		$result = $db->prepare("UPDATE `forum_topic` SET `lastTimestamp`=? WHERE `id`=? ");
		$result->execute(array($timestamp, $id));
		
		return;
	}
	
	public function getEntriesForEntry($id)
	{
		$db = parent::connect();
		$result = $db->prepare("SELECT * FROM `forum_entry` WHERE replyToEntryNum  = ? AND active=1 ORDER BY `timestamp` DESC");
		$result->execute(array($id));
		$entries = $result->fetchAll();
	
		return $entries;
	}
}