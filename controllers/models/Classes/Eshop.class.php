<?php

/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 24.08.2015
 * Time: 9:50
 */
class Eshop extends Connection
{
    public $titlesOnPage = 10;
    public $pageNumber = 1;

    public function pagesOfItems($items){
        $pages = ceil(count($items)/$this->titlesOnPage);
        return $pages;
    }

    public function getFirstItemOnPage(){
        $firstItem = (($this->pageNumber - 1) * $this->titlesOnPage);

        return $firstItem;
    }

    public function getLastItemOnPage($items){
        $lastItem = (($this->pageNumber) * $this->titlesOnPage);
        if($lastItem > count($items)){
            $lastItem = count($items);
        }

        return $lastItem;
    }

    public function __construct($ip){
        if($this->checkIPBasket($ip) == false) {
            $this->newBasket($ip);
        }
    }

    public function getAllCategories(){
        $db = parent::connect();
        $result = $db->prepare("SELECT * FROM `category`");
        $result->execute(array());
        $category = $result->fetchAll();
        return $category;
    }
    public function getAllSubcategories($category){
        $db = parent::connect();
        $result = $db->prepare("SELECT * FROM `subcategory` WHERE `active`=1 AND `category`=?");
        $result->execute(array($category));
        $subcategory = $result->fetchAll();
        return $subcategory;
    }
    public function getSubcategory($subcategory){
        $db = parent::connect();
        $result = $db->prepare("SELECT * FROM `subcategory` WHERE id = ?");
        $result->execute(array($subcategory));
        $subcategory = $result->fetch();
        return $subcategory;
    }
    public function getCategory($category){
        $db = parent::connect();
        $result = $db->prepare("SELECT * FROM `category` WHERE id = ?");
        $result->execute(array($category));
        $category = $result->fetch();
        return $category;
    }
    public function getItems($subcategory, $order){
        $db = parent::connect();
        switch($order){
            case "cena":
                $result = $db->prepare("SELECT * FROM `item` WHERE subcategory  = ? ORDER BY `cenaBezDPH` ASC, `poradi` ASC, `id` ASC");
                break;
            case "cenaDESC":
                $result = $db->prepare("SELECT * FROM `item` WHERE subcategory  = ? ORDER BY `cenaBezDPH` DESC, `poradi` ASC, `id` ASC");
                break;
            case "velikost":
                $result = $db->prepare("SELECT * FROM `item` WHERE subcategory  = ? ORDER BY `hmotnost` ASC, `poradi` ASC, `id` ASC");
                break;
            case "velikostDESC":
                $result = $db->prepare("SELECT * FROM `item` WHERE subcategory  = ? ORDER BY `hmotnost` DESC, `poradi` ASC, `id` ASC");
                break;
            default:
                $result = $db->prepare("SELECT * FROM `item` WHERE subcategory  = ? ORDER BY `cenaBezDPH` ASC, `poradi` ASC, `id` ASC");
        }

        $result->execute(array($subcategory));
        $items = $result->fetchAll();
        return $items;
    }
    public function getItem($id){
        $db = parent::connect();
        $result = $db->prepare("SELECT * FROM `item` WHERE id  = ?");
        $result->execute(array($id));
        $item = $result->fetch();
        return $item;
    }
    public function newBasket($ip){
        $db = parent::connect();
        $timestamp = time();
        $result = $db->prepare("INSERT INTO `basket`(`ip`, `timestamp`) VALUES (?, ?)");
        $result->execute(array($ip, $timestamp));
    }
    public function checkIPBasket($ip){
        $db = parent::connect();
        $result = $db->prepare("SELECT * FROM `basket` WHERE ip  = ?");
        $result->execute(array($ip));
        $item = $result->fetch();
        if($item['ip'] != ""){
            return true;
        }else {
            return false;
        }
    }
    public function getBasket($ip){
        $db = parent::connect();
        $result = $db->prepare("SELECT * FROM `basket` WHERE ip  = ?");
        $result->execute(array($ip));
        $basket = $result->fetch();
        return $basket;
    }
    public function addToBasket($count, $item, $ip){
        $db = parent::connect();
        $timestamp = time();
        $result = $db->prepare("UPDATE `basket` SET `timestamp`=?,`count`=?,`item`=? WHERE ip = ?");
        $result->execute(array($timestamp, $count, $item, $ip));
    }
    public function addCommentToBasket($comment, $ip){
        $db = parent::connect();
        $result = $db->prepare("UPDATE `basket` SET `comment`=? WHERE ip = ?");
        $result->execute(array($comment, $ip));
    }
    public function getAllTypesDoprava(){
        $db = parent::connect();
        $result = $db->prepare("SELECT * FROM `doprava`");
        $result->execute(array());
        $doprava = $result->fetchAll();
        return $doprava;
    }
    public function changeDoprava($doprava, $ip){
        $db = parent::connect();
        $result = $db->prepare("UPDATE `basket` SET `doprava`=? WHERE ip = ?");
        $result->execute(array($doprava, $ip));
    }
    public function changeUdaje($value, $input, $ip){
        $db = parent::connect();
        $result = $db->prepare("UPDATE `basket` SET $input = ? WHERE ip = ?");
        $result->execute(array($value, $ip));
    }
    public function getSleva($cena){
        $db = parent::connect();
        $result = $db->prepare("SELECT * FROM `sleva` WHERE `zboziNad` < ? ORDER BY `zboziNad` DESC");
        $result->execute(array($cena));
        $sleva = $result->fetch();
        if(isset($sleva['sleva'])){
            $sleva = $sleva['sleva'];
        }else{
            $sleva = 0;
        }
        return $sleva;
    }
    
    public function updateCountShopping($id, $newCountForDBProdanoKS, $newCountForDBProdanoObjednavek)
    {
    	$db = parent::connect();
    	$result = $db->prepare("UPDATE `item` SET `prodanoKS`=?, `prodanoObjednavek`=? WHERE `id`=? ");
    	$result->execute(array($newCountForDBProdanoKS, $newCountForDBProdanoObjednavek, $id));
    }
}