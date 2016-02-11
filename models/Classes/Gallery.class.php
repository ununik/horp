<?php
class Gallery extends Connection
{
    //galerie
    public function getAllItems(){
        $db = parent::connect();
        $result = $db->prepare("SELECT * FROM `galerie` ORDER BY `likes` DESC, `timestamp` DESC");
        $result->execute(array());
        $items = $result->fetchAll();
        return $items;
    }
}