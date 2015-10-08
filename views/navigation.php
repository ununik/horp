<?php
if(isset($_SESSION['horp']['language']) && $_SESSION['horp']['language'] == 'en'){
    $nav = "<ul>
                <li><a href='index.php?page=home'>Home</a></li>
                <li><a href='index.php?page=eshop'>Eshop</a></li>
                <li><a href='index.php?page=info'>Info Holds</a></li>
                <li><a href='index.php?page=contact'>Contact</a></li>
                <span></span>
            </ul>";
}else{
    $nav = "<ul>
                <li><a href='index.php?page=home'>Domů</a></li>
                <li><a href='index.php?page=eshop'>Eshop</a></li>
                <li><a href='index.php?page=info'>Časté dotazy</a></li>
                <li><a href='index.php?page=contact'>Kontakt</a></li>
                <span></span>
            </ul>";
}

return $nav;