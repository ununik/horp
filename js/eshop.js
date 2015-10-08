function addToBasket(id){
    var count = document.getElementById('kosik_'+id).value;
    var color = document.getElementById('color_'+id).value;
    ajaxCall('controllers/eshop/addToBasket.php?id='+id+'&count='+count+'&color='+color, function(xhr) {
        document.getElementById('successMessage').innerHTML = xhr.responseText;
    })
    showBasket()
}
function deleteFromBasket(id, color){
    ajaxCall('controllers/eshop/deleteFromBasket.php?id='+id+'&color='+color, function(xhr) {
        document.getElementById('successMessage').innerHTML = xhr.responseText;
    })
    location.reload();
}

function showBasket(){
    ajaxCall('controllers/eshop/showBasket.php', function(xhr) {
        document.getElementById('eshop_panel').innerHTML = xhr.responseText;
    })
}
function addPoznamka(){
    text = document.getElementById('eshop_poznamka').value;
    ajaxCall('controllers/eshop/addPoznamka.php?text='+text, function(xhr) {
        document.getElementById('poznamka_saved').innerHTML = xhr.responseText;
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