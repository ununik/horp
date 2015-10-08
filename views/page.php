<?php
return "
<!doctype>
<html>
    <head>
        <meta charset='utf-8'>
        <meta name='viewport' content='width=device-width; initial-scale=1.0'>
        <link rel='stylesheet' href='css/style.css' type='text/css' media='screen'/>
        <title>$title</title>
        <style>
        nav [href *= '?page=$getPage']{
            background-color:rgba(92, 117, 94, 0.3);
        }
        </style>
        $javascript
    </head>
    <body>
    <div id='header'><h1>HORP</h1><h2>Výroba lezeckých chytů</h2><div id='menu_panel'><div id='language'><a href='index.php?page=$getPage@cz$language_link' id='language_cz'></a><a href='index.php?page=$getPage@en$language_link' id='language_en'></a></div>
    <nav>$navigation</nav></div>
    </div>
    <div id='notice'></div>
    <div id='contentbox'>
        <div id='content'>
            $content
        </div>
    </div>
    </body>
</html>";