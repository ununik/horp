<?php
class Item extends Connection
{
	public function getPopularItem() {
		$db = parent::connect();
		$result = $db->prepare("SELECT * FROM `item` WHERE active=1 AND presentationImage!='' ORDER BY `prodanoObjednavek` DESC, `cenaSDPH` DESC LIMIT 9");
		$result->execute(array());
		$items = $result->fetchAll();
		
		return $items;
	}
}