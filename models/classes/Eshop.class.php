<?php

/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 24.08.2015
 * Time: 9:50
 */
class Eshop extends Connection
{
    public function getAllCategories(){
        $db = parent::connect();
        $result = $db->prepare("SELECT * FROM `category`");
        $result->execute(array());
        $category = $result->fetchAll();
        return $category;
    }
    public function getAllSubcategories($category){
        $db = parent::connect();
        $result = $db->prepare("SELECT * FROM `subcategory` WHERE category = ?");
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
    public function getItems($subcategory){
        $db = parent::connect();
        $result = $db->prepare("SELECT * FROM `item` WHERE subcategory  = ?");
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
    public function addToBasket($count, $item, $color, $ip){
        $db = parent::connect();
        $timestamp = time();
        $result = $db->prepare("UPDATE `basket` SET `timestamp`=?,`count`=?,`item`=?, `color`=? WHERE ip = ?");
        $result->execute(array($timestamp, $count, $item, $color, $ip));
    }
    public function getAllColors(){
        $db = parent::connect();
        $result = $db->prepare("SELECT * FROM `colors`");
        $result->execute(array());
        $colors = $result->fetchAll();
        return $colors;
    }
    public function getColor($id){
        $db = parent::connect();
        $result = $db->prepare("SELECT * FROM `colors` WHERE id = ?");
        $result->execute(array($id));
        $colors = $result->fetch();
        return $colors;
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
}