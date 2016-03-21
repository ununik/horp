function newTopic() {
	var mypostrequest=new ajaxRequest()
	mypostrequest.onreadystatechange=function(){
	 if (mypostrequest.readyState==4){
	  if (mypostrequest.status==200 || window.location.href.indexOf("http")==-1){
		  if(mypostrequest.responseText == -1) {
			  document.getElementById('status_newTopicForum').innerHTML = 'Musí být vyplněná všechna pole.';
		  } else {
			  window.location.href = "/forum/tema/"+mypostrequest.responseText+'/';
		  }
	  }
	  else{
	   alert("An error has occured making the request")
	  }
	 }
	}
	var nadpis = document.getElementById('forum_nadpis');
	var autor = document.getElementById('forum_autor');
	var popis = document.getElementById('forum_popis');
	
	if(nadpis.value=='' || autor.value=='' || popis.value=='') {
		if(nadpis.value==''){
			nadpis.style.border = '1px solid red';
		} else {
			nadpis.style.border = '1px solid black';
		}
		if(autor.value==''){
			autor.style.border = '1px solid red';
		} else {
			autor.style.border = '1px solid black';
		}
		if(popis.value==''){
			popis.style.border = '1px solid red';
		} else {
			popis.style.border = '1px solid black';
		}
		
		document.getElementById('status_newTopicForum').innerHTML = 'Musí být vyplněná všechna pole.';
	}  else {
		parameters = 'nadpis='+nadpis.value+'&autor='+autor.value+'&popis='+popis.value;
		mypostrequest.open("POST", "/controllers/forum/ajax_newTopic.php", true)
		mypostrequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
		mypostrequest.send(parameters)
	}
}

function pridatPrispevek(id) {
	var mypostrequest=new ajaxRequest()
	mypostrequest.onreadystatechange=function(){
	 if (mypostrequest.readyState==4){
	  if (mypostrequest.status==200 || window.location.href.indexOf("http")==-1){
		  if(mypostrequest.responseText == -1) {
			  document.getElementById('status_newTopicForum').innerHTML = 'Musí být vyplněná všechna pole.';
		  } else {
			  window.location.href = "/forum/tema/"+id+"/prispevek/"+mypostrequest.responseText+'/';
		  }
	  }
	  else{
	   alert("An error has occured making the request")
	  }
	 }
	}
	var jmeno = document.getElementById('forum_jmeno');
	var prispevek = document.getElementById('forum_prispevek');
	
	if(jmeno.value=='' || prispevek.value=='') {
		if(jmeno.value==''){
			jmeno.style.border = '1px solid red';
		} else {
			nadpis.style.border = '1px solid black';
		}
		if(prispevek.value==''){
			prispevek.style.border = '1px solid red';
		} else {
			autor.style.border = '1px solid black';
		}
		
		document.getElementById('status_newEntryForum').innerHTML = 'Musí být vyplněná všechna pole.';
	}  else {
		parameters = 'jmeno='+jmeno.value+'&prispevek='+prispevek.value+'&id='+id;
		mypostrequest.open("POST", "/controllers/forum/ajax_newEntry.php", true)
		mypostrequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
		mypostrequest.send(parameters)
	}
}

function reagovatNaPrispevek(id) {
	var mypostrequest=new ajaxRequest()
	mypostrequest.onreadystatechange=function(){
	 if (mypostrequest.readyState==4){
	  if (mypostrequest.status==200 || window.location.href.indexOf("http")==-1){
		  if(mypostrequest.responseText == -1) {
			  document.getElementById('status_newTopicForum_'+id).innerHTML = 'Musí být vyplněná všechna pole.';
		  } else {
			  location.reload();
		  }
	  }
	  else{
	   alert("An error has occured making the request")
	  }
	 }
	}
	var jmeno = document.getElementById('forum_jmeno_'+id);
	var prispevek = document.getElementById('forum_prispevek_'+id);
	
	if(jmeno.value=='' || prispevek.value=='') {
		if(jmeno.value==''){
			jmeno.style.border = '1px solid red';
		} else {
			nadpis.style.border = '1px solid black';
		}
		if(prispevek.value==''){
			prispevek.style.border = '1px solid red';
		} else {
			autor.style.border = '1px solid black';
		}
		
		document.getElementById('status_newEntryForum_'+id).innerHTML = 'Musí být vyplněná všechna pole.';
	}  else {
		parameters = 'jmeno='+jmeno.value+'&prispevek='+prispevek.value+'&id='+id;
		mypostrequest.open("POST", "/controllers/forum/ajax_newReactionEntry.php", true)
		mypostrequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
		mypostrequest.send(parameters)
	}
}

function reagovat(id) {
	document.getElementById('reagovatNaId_'+id).style.display = "block";
}