function openTab(evt, cityName, temp) {
	var i, tabcontent, tablinks;
	
	if(temp==='organz' || temp==='noti'){
		tabcontent = document.getElementsByClassName("col-lg-8");
	}
	else if(temp==='admin'){
		tabcontent = document.getElementsByClassName("col-lg-12");
	}

	for (i = 0; i < tabcontent.length; i++) {
		tabcontent[i].style.display = "none";
	}
	tablinks = document.getElementsByClassName("tablinks");
	for (i = 0; i < tablinks.length; i++) {
		tablinks[i].className = tablinks[i].className.replace(" active", "");
	}
	document.getElementById(cityName).style.display = "block";
	evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();