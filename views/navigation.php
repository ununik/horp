<?php
if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
    $nav = "<ul>
                <li><a href='".WWW."/home/'>Home</a></li>
                <li><a href='".WWW."/eshop/'>Eshop</a></li>
                <li><a href='".WWW."/info/'>Info Holds</a></li>
                <li><a href='".WWW."/contact/'>Contact</a></li>
                <span></span>
            </ul>";
}else{
    $nav = "<ul>
                <li><a href='".WWW."/home/'>Domů</a></li>
                <li><a href='".WWW."/eshop/'>Eshop</a></li>
                <li><a href='".WWW."/info/'>Časté dotazy</a></li>
                <li><a href='".WWW."/contact/'>Kontakt</a></li>
               	<li><a href='".WWW."/forum/'>Diskuzní fórum</a></li>
                <span></span>
            </ul>";
}
//<li><a href='".WWW."/katalog/'>Katalog</a></li>
return $nav;