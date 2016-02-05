<?php
class Doprava extends Connection
{
	public function getDopravaById($id){
		$db = parent::connect();
		$result = $db->prepare("SELECT * FROM `doprava` WHERE `id`=? ");
		$result->execute(array($id));
		$doprava = $result->fetch();

		return $doprava;
	}
}