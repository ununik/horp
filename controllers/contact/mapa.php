<?php
return '<script src="//api.mapy.cz/loader.js"></script>
<script>Loader.load();</script>
<div id="mapa" style="width:350px; height:400px"></div>
<script>
    document.getElementById("mapa").style.width = "100%";
    var center = SMap.Coords.fromWGS84(14.313492768813745, 50.72857658873881);
    var mapa = new SMap(JAK.gel("mapa"), center, 17);
    mapa.addDefaultLayer(SMap.DEF_BASE).enable();
    var l = [];
    for(var i = 1; i < l.length; i++) {
        mapa.addDefaultLayer(l[i]).enable();
    };
    var layer = new SMap.Layer.Marker()
    mapa.addLayer(layer).enable()
    var mCoord = SMap.Coords.fromWGS84(14.313514226485895,50.728848239864185);
    var mOpt = {
        anchor: {left:14, top:49},
        url:SMap.CONFIG.img + "/marker/balloon-3.png"
     }
    var marker = new SMap.Marker(mCoord,"MyMarker", mOpt);
    layer.addMarker(marker);
    var overview = new SMap.Control.Overview();
    mapa.addControl(overview);
    var scale = new SMap.Control.Scale();
    mapa.addControl(scale, {left:"8px", bottom:"25px"});
    var msOpt = SMap.MOUSE_PAN | SMap.MOUSE_WHEEL | SMap.MOUSE_ZOOM;
    var mouse = new SMap.Control.Mouse(msOpt);
    mapa.addControl(mouse);
    var keyboard = new SMap.Control.Keyboard(SMap.KB_PAN | SMap.KB_ZOOM);
    mapa.addControl(keyboard);
    var selection = new SMap.Control.Selection(2);
    mapa.addControl(selection);
    var zn = new SMap.Control.ZoomNotification();
    mapa.addControl(zn);
    var zoomOpt = {showZoomMenu:false};
    var zoom = new SMap.Control.Zoom(null,{titles:["Přiblížit", "Oddálit"], showZoomMenu:false});
    mapa.addControl(zoom, {right:"2px", top:"10x"});
    var lnt = "Zobrazit na mapy.cz";
    var lnd = JAK.mel("a", {href:"http://mapy.cz/s/mj6H", target:"_blank", innerHTML:lnt});
    lnd.style.cssText = "position:absolute;left:8px; bottom:54px;"+
    "display:block; padding:4px 8px; background-color:#fff; border:medium none;"+
    "border-radius:3px; box-shadow: 0 0 2px 0 rgba(0, 0, 0, 0.3);"+
    "text-decoration:none; color:#6b7580;";
    mapa.getContainer().appendChild(lnd);
</script>';