function addToBasket(id){
    var count = document.getElementById('kosik_'+id).value;
    ajaxCall('controllers/eshop/addToBasket.php?id='+id+'&count='+count, function(xhr) {
        document.getElementById('successMessage').innerHTML = xhr.responseText;
        document.getElementById('successMessage').style.left = "0px";
        showBasket();
        setTimeout(function(){ document.getElementById('successMessage').style.left = "-331px"; }, 3000);
    })
    document.getElementById('doporuceni_'+id).style.display = "table-row";

}
function deleteFromBasket(id){
    ajaxCall('controllers/eshop/deleteFromBasket.php?id='+id, function(xhr) {
        document.getElementById('successMessage').innerHTML = xhr.responseText;
        document.getElementById('successMessage').style.left = "0px";
        setTimeout(function(){ document.getElementById('successMessage').style.left = "-331px"; }, 3000);
    })
    location.reload();
}
function showBasket(){
    ajaxCall('controllers/eshop/showBasket.php', function(xhr) {
        document.getElementById('eshop_panel').innerHTML = xhr.responseText;
        document.getElementById('eshop_panel').style.right = "-20px";
    })
}
function addPoznamka(){
    text = document.getElementById('eshop_poznamka').value;
    ajaxCall('controllers/eshop/addPoznamka.php?text='+text, function(xhr) {
        document.getElementById('poznamka_saved').innerHTML = xhr.responseText;
        setTimeout(function(){ document.getElementById('poznamka_saved').innerHTML = ""; }, 5000);
    })
}
function nextstep(div){
    for(i=1; i<5; i++){
        document.getElementById('Basket-step_'+i).style.display = 'none';
    }
    document.getElementById(div).style.display = 'block';
}
function changeDoprava(radio){
    radio = radio.value;
    ajaxCall('controllers/eshop/changeDoprava.php?doprava='+radio, function(xhr) {
    })
}
function udaje_change(input){
    name = input.name;
    value = input.value;
        ajaxCall('controllers/eshop/changeUdaje.php?input='+name+'&value='+value, function(xhr) {
    })
}
function pocetKsMinus(id){
    if(document.getElementById('kosik_'+id).value > 1){
        document.getElementById('kosik_'+id).value--
    }
}

function pocetKsPlus(id){
    document.getElementById('kosik_'+id).value++
}

function validateNumber(evt){
    var theEvent = evt || window.event;
    var key = theEvent.keyCode || theEvent.which;
    key = String.fromCharCode( key );
    var regex = /[0-9]|\./;
    if( !regex.test(key) ) {
        theEvent.returnValue = false;
        if(theEvent.preventDefault) theEvent.preventDefault();
    }
}

function upravit_count(td, id, count){
    var span = td.parentNode.getElementsByTagName('span');
    span[0].style.display = "none";
    span[1].style.display = "none";
    span[2].style.display = "block";
}
function saveNewCount(span, id){
    var newCount = span.parentNode.parentNode.getElementsByTagName('input')[0].value;
    var visible = span.parentNode.parentNode.getElementsByTagName('span');
    visible[0].style.display = "inline-block";
    visible[0].innerHTML = newCount
    visible[1].style.display = "inline-block";
    visible[2].style.display = "none";
    ajaxCall('controllers/eshop/changeCount.php?newCount='+newCount+'&id='+id, function(xhr) {
        location.reload();
    })
}
function goNahoru(){
    window.scrollTo('0px', '0px');
}
function faktura(){
    ajaxCall('controllers/eshop/faktura.php', function(xhr) {
        document.getElementById('eshop_body').innerHTML = xhr.responseText;
    })
}

function tabletMenu(){
	if(document.getElementById("eshop_navigation").style.top != "-320px"){
			document.getElementById("eshop_navigation").style.top = "-320px";	
	}else{
		document.getElementById("eshop_navigation").style.top = '0px';
	}
}
function objednat(){
	 ajaxCall('controllers/eshop/mail.php', function(xhr) {
	    })
	    window.location.href = "index.php?page=eshop&subpage=end";
}
function fullScreen(){
	var allItems = document.getElementById('allItems');
	if(allItems.style.width != "100%" ){
		document.getElementById('celaObrazovka').style.position = "fixed";
		document.getElementById('blackBackground').style.display = "block";	
		allItems.style.width = "100%";
		allItems.style.height = "100%";
		allItems.style.padding = "0px";
		allItems.style.margin = "20px 0px";
		allItems.style.bottom = "-20px";
		allItems.style.right = "0px";
		allItems.style.border = "none";
		allItems.style.backgroundColor = "black";
		var img = allItems.getElementsByTagName('img');
		for (index = 0; index < img.length; ++index) {
		    img[index].style.width = "50%";
		}
	} else {
		document.getElementById('blackBackground').style.display = "none";
		document.getElementById('celaObrazovka').style.position = "absolute";
		allItems.style.width = "235px";
		allItems.style.height = "235px";
		allItems.style.padding = "15px";
		allItems.style.margin = "0px";
		allItems.style.bottom = "55px";
		allItems.style.right = "-20px";
		allItems.style.border = "1px solid #9C9F84";
		allItems.style.backgroundColor = "rgba(256, 256, 256, 0.85)";
		var img = allItems.getElementsByTagName('img');
		for (index = 0; index < img.length; ++index) {
		    img[index].style.width = "100%";
		}
	}
}