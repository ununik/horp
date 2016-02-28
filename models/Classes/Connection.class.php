<?php

/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 18.08.2015
 * Time: 16:47
 */
class Connection extends PDO
{
	private static $_instance = null;
	
	public function __construct()
	{
		self::$_instance = $this->realConnect();
	}
	
	public static function connect()
	{
		if (!self::$_instance instanceof Connection) {
			new Connection();
		}
	
		return self::$_instance;
	}
	
    protected function realConnect(){
        if($_SERVER['HTTP_HOST'] == 'localhost' || $_SERVER['HTTP_HOST'] == '127.0.0.1') {
            $dbh = new PDO('mysql:host=localhost;dbname=horp', 'root', 'Unununium111');
        	            $dbh->exec("set names utf8");
            return $dbh;
        }else{
        	//$dbh = new PDO('mysql:host=localhost;dbname=horp', 'root', 'Unununim111');

            $dbh = new PDO('mysql:host=wm100.wedos.net;dbname=d18905_hpcz', 'w18905_hpcz', 'vL3REs8E');
            $dbh->exec("set names utf8");
            return $dbh;
        }
    }
}