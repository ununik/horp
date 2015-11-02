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
            /*background-color:rgba(212, 212, 212, 1);*/
            border-top: 1px solid #0f1315;
            border-left: 1px solid #0f1315;
            border-right: 1px solid #0f1315;
        }
        </style>
        $javascript
    </head>
    <body>
    <div id='header'><h1>HORP</h1><h2>$subtitle</h2><div id='menu_panel'><div id='language'><a href='index.php?page=$getPage@cz$language_link' id='language_cz'></a><a href='index.php?page=$getPage@en$language_link' id='language_en'></a></div>
    <nav>$navigation</nav></div>
    </div>
    <div id='notice'></div>
    <div id='contentbox'>
        <div id='content'>
            $content
        </div>
    </div>
    <div id='footer'>$footer</div>
    <div id='background'></div>
    <script>
        var background = document.getElementById('background');
        background.style.backgroundImage = 'url(images/page/$background)'
    </script>
    </body>
</html>";