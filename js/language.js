function changeLanguage(language) {
	ajaxCall('/controllers/eshop/changeLanguage.php?lang='+language, function(xhr) {
		location.reload();
    })
}