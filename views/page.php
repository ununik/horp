<?php
return "<!DOCTYPE html>
<html>
    <head>
    $noFollow
        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">
        <meta name='description' content='$meta'>
        <link href='". WWW . "/images/favicon.ico' rel='icon'/>
        <link rel='stylesheet' href='". WWW . "/css/style.css' type='text/css' media='screen'/>
        <title>$title</title>
        <link href='". WWW . "/css/lightbox.css' rel='stylesheet' />
        <style type=\"text/css\">
        nav [href *=\"" . $getPage . "\"]{
            /*background-color:rgba(212, 212, 212, 1);*/
            border-top: 1px solid #0f1315;
            border-left: 1px solid #0f1315;
            border-right: 1px solid #0f1315;
        }
        </style>
        $javascript
    </head>
    <body>
    <script type=\"text/javascript\">
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-72011333-1', 'auto');
  ga('send', 'pageview');

</script>
    <div id='header'><a href='".WWW."'><h1><span>HORP</span></h1></a><h2>$subtitle</h2><div id='menu_panel'><div id='language'><a onclick='changeLanguage(\"cz\")' id='language_cz'></a><a onclick='changeLanguage(\"en\")' id='language_en'></a></div>
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
    <script type=\"text/javascript\">
        var background = document.getElementById('background');
        background.style.backgroundImage = 'url(".WWW."/images/page/$background)'
    </script>
    </body>
</html>";