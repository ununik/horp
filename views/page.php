<?php
return "
<!doctype>
<html>
    <head>
        <meta charset='utf-8'>
        <meta name='viewport' content='width=device-width; initial-scale=1.0'>
        <link rel='stylesheet' href='views/css/style.css' type='text/css' media='screen'/>
        <title>$title</title>
        <style>
        </style>
        $javascript
    </head>
    <body>
    <div id='header'><h1>HORP</h1><h2>Výroba lezeckých chytů</h2><a href='index.php?page=$getPage@cz'>cz</a><a href='index.php?page=$getPage@en'>en</a></div>
    <div id='notice'></div>
    <nav>$navigation</nav>
    <div id='contentbox'>
        <div id='content'>
            $content
        </div>
    </div>
    </body>
</html>";