<?php
/**
 * Created by PhpStorm.
 * User: Martin
 * Date: 31. 10. 2015
 * Time: 8:02
 */
$foot = "<a href='$authorWeb' title='$author' target='_blank'><img src='images/page/author.png' alt='$author' title='$author'></a>";
$foot .= "<a href='mailto:horp@seznam.cz' title='mail - horp@seznam.cz' target='_blank'><img src='images/page/mail.png' alt='horp@seznam.cz' title='mail - horp@seznam.cz'></a>";
$foot .= "<a href='index.php?page=eshop' title='eshop' target='_blank'><img src='images/page/eshop.png' alt='eshop' title='eshop'></a>";
$foot .= "<a href='https://www.facebook.com/horpcz/' title='facebook' target='_blank'><img src='images/page/fb.png' alt='facebook' title='facebook'></a>";
$foot .= "<a href='http://mapy.cz/zakladni?x=14.3135142&y=50.7286513&z=17&source=addr&id=9154508' title='kontakt na mapě' target='_blank'><img src='images/page/map.png' alt='kontakt na mapě' title='kontakt na mapě'></a>";

return $foot;