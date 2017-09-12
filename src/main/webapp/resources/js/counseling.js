
//박가혜 2017-08-23 질문하기 사이즈 조절
	var writrInfoOpngYn;
	var bbsNo;



	//박가혜 2017-08-23 글작성하기 
	function counselingList(type,order) {

		$("#list").empty();
		event.preventDefault();


		jQuery.ajaxSettings.traditional = true;


		$.ajax({
			url : "/net/counseling/api/list",
			//type : "post",
			//dataType : "json", // 받아야되는 데이터 타입 
			data : 
			//JSON.stringify(replylist),
			{type : type,
			 order: order},
			//contentType : 'application/json; charset=utf-8', //json 타입으로 데이터를 보낼때 사용함 

			success : function(response) {

				if (response.result === "fail") {

					console.error(response.message);
					return;
				}

				console.log("성공입니다");
				
				console.log(response.data);
				
				for(var i=0; i<response.data.length; i++){
					
					if(response.data[i].count == 0){ //답변 없는거
						
						 $("#list").append( 
								 "<div class='w3-card-4 w3-margin'>"+
								 "<div class='w3-container interest'>#화학, #생물학, #화학공학</div>"+
								 "<div class='w3-container'>"+
								 "<h4 id='wrtbtTitle"+i+"'><b>"+
								 "<a class='detail' href='/net/counseling/detail?no="+response.data[i].wrtbtNo+"&type=prnts'>"+response.data[i].wrtbtTitle+"</a>"+
								 "</b></h4>"+
								 "</div>"+
								 "<div class='w3-container'>"+
								 " <div id='' class='w3-button w3-padding-small w3-white w3-border w3-border-white w3-round-large'>" +
								 "<a class='detail' href='/net/counseling/detail?no="+response.data[i].wrtbtNo+"&type=reply'>답변하기</a></div>"+
								 " <div class='dropup option'>"+
								 " <button class='w3-button w3-padding w3-padding w3-round-large' type='button' data-toggle='dropdown'>"+
								 " <i class='glyphicon glyphicon-option-horizontal'></i> </button>"+
								 "  <ul class='dropdown-menu'>"+
								 " <li><a href='#'>익명으로 답변하기</a></li> <li><a href='#'>스크랩하기</a></li><li><a href='#'>신고하기</a></li>"+
								 " </ul></div></div><br></div>"
								 );
						 
						
					}
					else{ //답변있는거 
						
						 $("#list").append( 
								 "<div class='w3-card-4 w3-margin'>"+
								 "<div class='w3-container'>"+
								 "<h4 id='wrtbtTitle"+i+"'><b>"+
								
								 "<a class='detail' href='/net/counseling/detail?no="+response.data[i].wrtbtNo+"&type=prnts'>"+response.data[i].wrtbtTitle+"</a>"+
								 "</b></h4>"+
								 "</div>"+
								 "<div class='w3-container interest'>#화학, #생물학, #화학공학</div>"+
								 "<div class='w3-container'>"+
								 "<h6>"+response.data[i].reNknm+"<span class='w3-opacity'>•"+response.data[i].reAvlblBeginDt+"에 답변</span></h6>"+
								 "<a class='detail' href='/net/counseling/detail?no="+response.data[i].wrtbtNo+"&type=prnts'><p>"+response.data[i].reWrtbtText+"</p></a></div>"+
								 "<div class='w3-container'>"+
								 "<div class='w3-button w3-padding-small w3-white w3-border w3-border-white w3-round-large'>"+
								 "answers<span class='w3-badge w3-white'>"+response.data[i].count+"</span></div>"+
								 "<div class='w3-button w3-padding-small w3-white w3-border w3-border-white w3-round-large'>"+
								 "Up <span class='w3-badge w3-white'>"+response.data[i].reRcmdCo+"</span></div>"+
								 "<div class='w3-button w3-padding-small w3-white w3-border w3-border-white w3-round-large'>"+
								 "Down <span class='badge'>"+response.data[i].ncmdCo+"</span></div>"+
								
								 " <div class='dropup option'>"+
								 " <button class='w3-button w3-padding w3-padding w3-round-large' type='button' data-toggle='dropdown'>"+
								 " <i class='glyphicon glyphicon-option-horizontal'></i> </button>"+
								 "  <ul class='dropdown-menu'>"+
								 " <li><a href='#'>익명으로 답변하기</a></li> <li><a href='#'>스크랩하기</a></li><li><a href='#'>신고하기</a></li>"+
								 " </ul></div></div><br></div>"
								 );
					     
						
						
					}
					
					
					
				}
				
			

				
				
				//response.data.contextpath = "${pageContext.request.contextPath}/noti/api/lab";

			},
			error : function(jqXHR, status, e) {
				console.log("에러입니다");
				console.error(status + " : " + e);
				console.log(jqXHR);
			}
		});

	}	
	


	
	function titleResize(obj) {

		obj.style.height = "1px";

		obj.style.height = (20 + obj.scrollHeight) + "px";

	}

	function resize(obj) {

		// console.log(obj.scrollHeight);

		if (obj.scrollHeight <= 200) {

		} else {

			obj.style.height = (1 + obj.scrollHeight) + "px";

		}

	}
	
	/*
	 * 정예린 170905 성별 선택 시 색깔 바꿔주기
	 */
	function changeColor(obj) {

		
		
	   $(".genderlabel").removeClass("on");
	   $("#" + obj.value).addClass("on");
	   
	 
	  bbsNo = obj.value;

	}
	
	

	
	
	//박가혜 2017-08-23

	$(function() {

		var authUser = $("#authUser").val();
		console.log("///"+authUser+"////");
		
	
		 bbsNo = $("#bbsNo").val();

		$("#myBtn").click(function() {

			if (authUser === null || authUser === '') {

				
				console.log("///사용자가없습니다.////");
				
				$("#login").css({
					"display" : "block"
				});

			} else {
				
				
				$("#writeModal").css({
					"display" : "block"
				});
				
				document.getElementById('wrtbtText').focus();

			}

		});

		
		
		$(document).on('click', "a.detail", function() { //append한 것은 이걸로 click 이벤트 해야함....^^
			
			if (authUser === null || authUser === '') {
			
			$(".detail").removeAttr("href");
			
			$("#login").css({
				"display" : "block"
			});

		}        
		});
		
		
		
		$(".close").click(function() {
			$("#writeModal").css({
				"display" : "none"
			});
			
			
		});

		$("html").click(function(event) {
			if (event.target.id === "writeModal") {
				$("#writeModal").css({
					"display" : "none"
				});
			}
		});
		

		$('#writrInfoOpngYn li > a').on('click', function() { //비공개여부 값 저장 하기

			writrInfoOpngYn = $(this).attr('value');

		});
		
		
		$(document).keydown(function(e) { 
			

			  var modal1 = document.getElementById('writeModal');
		    if (e.keyCode == 27) { 
		    	
				   modal1.style.display = "none";
		    } 
		});

	})
	
	
	
	

	//박가혜 2017-08-23 글작성하기 
	function counselinginsert() {

		event.preventDefault();

		var wrtbtTitle = $("#wrtbtTitle").val();
		var wrtbtText = $("#wrtbtText").val();

		var conslBbsDstnct = $("#conslBbsDstnct").val();
		
		
		
		if(writrInfoOpngYn != "N"){
			
			
			writrInfoOpngYn ="Y";
		}
		

		console.log(writrInfoOpngYn);

		var counselinglist = {
			wrtbtTitle : wrtbtTitle,
			wrtbtText : wrtbtText,
			writrInfoOpngYn : writrInfoOpngYn,
			conslBbsDstnct : conslBbsDstnct,
			bbsNo : bbsNo
		};

		//모달 종료 
		$("#writeModal").css({
			"display" : "none"
		});

		location.reload();

		// ajax 통신 

		jQuery.ajaxSettings.traditional = true;

		//console.log(JSON.stringify(counselinglist));

		$.ajax({
			url : "/net/counseling/api/write",
			type : "post",
			dataType : "json", // 받아야되는 데이터 타입 
			data : JSON.stringify(counselinglist),
			//{comlist : comlist},
			contentType : 'application/json; charset=utf-8', //json 타입으로 데이터를 보낼때 사용함 

			success : function(response) {

				if (response.result === "fail") {

					console.error(response.message);
					return;
				}

				console.log("성공입니다");
				//console.log(response.data);
				//response.data.contextpath = "${pageContext.request.contextPath}/noti/api/lab";

			},
			error : function(jqXHR, status, e) {
				console.log("에러입니다");
				console.error(status + " : " + e);
				console.log(jqXHR);
			}
		});

	}
	

