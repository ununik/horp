function addToBasket(id){
    var count = document.getElementById('kosik_'+id).value;
    ajaxCall('controllers/eshop/addToBasket.php?id='+id+'&count='+count, function(xhr) {
        document.getElementById('successMessage').innerHTML = xhr.responseText;
        document.getElementById('successMessage').style.left = "0px";
        showBasket();
        setTimeout(function(){ document.getElementById('successMessage').style.left = "-331px"; }, 3000);
    })

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