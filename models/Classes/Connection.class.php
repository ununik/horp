<?php

/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 18.08.2015
 * Time: 16:47
 */
class Connection
{
    protected function connect(){
        if($_SERVER['HTTP_HOST'] == 'localhost' || $_SERVER['HTTP_HOST'] == '127.0.0.1') {
            $dbh = new PDO('mysql:host=localhost;dbname=horp', 'root', '');
            $dbh->exec("set names utf8");
            return $dbh;
        }else{
            $dbh = new PDO('mysql:host=localhost;dbname=ununik', 'ununik', 'am4qgx');
            $dbh->exec("set names utf8");
            return $dbh;
        }
    }
}