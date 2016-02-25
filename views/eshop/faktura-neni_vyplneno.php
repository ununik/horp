<?php
/**
 * Created by PhpStorm.
 * User: ununik
 * Date: 3.11.15
 * Time: 16:17
 */
if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
	return 'You are not done. Go back to "<a href="index.php?page=eshop&subpage=basket">the basket</a>" and fill all fields with *.';
} else {
	return 'Nejsou vyplněné všechny údaje. Vraťte se do "<a href="index.php?page=eshop&subpage=basket">košíku</a>" a vyplňte všechny údaje označené hvězdičkou.';
}