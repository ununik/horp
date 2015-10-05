function addToBasket(id){
    var count = document.getElementById('kosik_'+id).value;
    var color = document.getElementById('color_'+id).value;
    ajaxCall('controllers/eshop/addToBasket.php?id='+id+'&count='+count+'&color='+color, function(xhr) {
        document.getElementById('successMessage').innerHTML = xhr.responseText;
    })
}
function deleteFromBasket(id, color){
    ajaxCall('controllers/eshop/deleteFromBasket.php?id='+id+'&color='+color, function(xhr) {
        document.getElementById('successMessage').innerHTML = xhr.responseText;
    })
    location.reload();
}