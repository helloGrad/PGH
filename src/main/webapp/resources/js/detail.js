/**
 * 
 */
$(function() {
	var checkFetch
	$("#paperBtn").click(fetchList);
	$("#projBtn").click(fetchList);
	$("#patentBtn").click(fetchList);
	$("#seminarBtn").click(fetchList);
	$("#academyBtn").click(fetchList);
	
	
});

var checkDiv = {
		"논문":false,
		"프로젝트":false,
		"특허":false,
		"세미나":false,
		"학회":false
}


//연구실 실적 별로 렌더링할 데이터 가져오는 ajax
var fetchList = function() {
	
	var orgNo = $("#orgNo").val();
	var acrType = checkType($(this).attr("name")); 
	var acrTypeEng = $(this).attr("name")
	
	if($(this).val()=='-'){
		$('#'+acrTypeEng).css("display","none");
		$(this).val('+');
		return;
	}
	if($(this).val()=='+'&&checkDiv[acrType]==true){
		$('#'+acrTypeEng).css("display","block");
		$(this).val('-');
		return;
	}
	
	$.ajax({
		url : "/net/organz/api/detail?orgNo="+orgNo+"&type="+acrType,
		type : "get",
		dataType : "json",
		data : "",
		success : function(response) {
			
			for(var i=0;i<response.data.length;i++){
				//console.log(response.data.length);
				//console.log(response.data[i]);
				$('#'+acrTypeEng).append(response.data[i].resrchYycl)
				$('#'+acrTypeEng).append("<br><br>");
				$('#'+acrTypeEng).append(response.data[i].resrchText.replace("\n","<br><br>"));
				$('#'+acrTypeEng).append("<br><br>");				
				
			}
			$('#'+acrTypeEng).css("display","block");
			$('#'+acrTypeEng+"Btn").val('-');
			checkDiv[acrType] = true;
			
		},
		error : function(jqXHR, status, e) {
			console.error(status + " : " + e);
		}
	});
}

var checkType = function(type){
	if(type == "paper"){
		return "논문";
	} else if(type == "patent"){
		return "특허";
	} else if(type =="project"){
		return "프로젝트";
	} else if(type == "seminar"){
		return "세미나";
	} else if(type == "academy"){
		return "학회";
	}
	
}

var displayFunction = function(){
	
	var eleNm = $(this).attr("name");
	var $ele = $('#'+eleNm+'ShowDiv');
	var $hele = $('#'+eleNm+'HideDiv');

	fetchList();
	if($hele.css("display")=="none"){
		$hele.css("display","block");
		$(this).val("-");
	}else{
		$hele.css("display","none");
		$(this).val("+");
	}
	

}


