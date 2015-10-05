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
    </head>
    <body>
    <div id='header'></div>
    <div id='notice'></div>
    <nav></nav>
    <div id='contentbox'>
        <div id='content'>
            $content
        </div>
    </div>
    </body>
</html>";