
//박가혜 2017-08-23 질문하기 사이즈 조절
	var writrInfoOpngYn;
	var bbsNo;
	
	var order; //정렬유지
	var type;

	/*
	 * 정예린 2017-09-13
	 */

	var isEnd = false;

	var dislistItemTemplate = new EJS({	url : "/net/resources/js/ejs-template/discussion-list-item.ejs"});
	var dislistTemplate = new EJS({	url : "/net/resources/js/ejs-template/discussion-list.ejs"});
	var counlistItemTemplate = new EJS({	url : "/net/resources/js/ejs-template/counseling-list-item.ejs"});
	var counlistTemplate = new EJS({	url : "/net/resources/js/ejs-template/counseling-list.ejs"});

	var disbFetching = false;
	
	/*
	 * 박가혜 2017-08-23 상담실리스트
	 * 정예린 자동 스크롤링 2017-09-13
	 * 
	 */	
	
	function reset(type,order){
		
		$("#list").empty();
	
		order=order;
		
		 isEnd=false;
		 //startNo=0;	
		 disfetchList(type,order);
		console.log(type, order, isEnd);
		 
	}
	
	
	var disfetchList = function(type,order) {
		if (isEnd === true) {
			return;
		}
		
		var startNo;
		
		if(type==='공학') {
			startNo = $("#list .w3-card-4:last-child").find('input').val() || 0;
		}
		else if(type='전체') {
			startNo = $("#list .w3-card-2:last-child").find('input').val() || 0;
		}

		 console.log("----"+type+"---->" + startNo);

		$.ajax({
			url : "/net/counseling/api/list?sno="+startNo+"&type="+type+"&order="+order,
			type : "get",
			dataType : "json",
			data : "",
			success : function(response) {
				// console.log(response);

				//console.log("rownum : "+response.data[0].rownum);

				if (response.result === "fail") {
					console.warn(response.message);
					return;
				}
				// detect end

				if (response.data.length < 10) {
					console.log(response.data.length);
					isEnd = true;
				}
				// rendering
				$.each(response.data, function(index, vo) {
					disrender(type,vo);
				});

				disbFetching = false;
			},
			error : function(jqXHR, status, e) {
				console.error(status + " : " + e);
				disbFetching = false;
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

		
		
	   $(".objectbutton").removeClass("on");
	   $("#" + obj.value).addClass("on");
	   
	 
	  bbsNo = obj.value;

	}
	
	

	
	
	//박가혜 2017-08-23

	$(function() {

		var authUser = $("#authUser").val();
		console.log("///"+authUser+"////");
		
	
		 bbsNo = $("#bbsNo").val();

		$(".writeBtn").click(function() {

			if (authUser === null || authUser === '') {

				
				console.log("///사용자가없습니다.////");
				
				$("#login").css({
					"display" : "block"
				});

			} else {
				
				
				 var value = $(".writeBtn").val();
				  alert(value);
				
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
	
	
	

	

	function counselinginsert() {

		
		
		 var formData = new FormData($("#counselingform")[0]);


	
		
		var ajaxData = new FormData();
		ajaxData.append( 'filedata','counseling');
		$.each($("input[type=file]"), function(i, obj) {
		        $.each(obj.files,function(j, file){
		            ajaxData.append('file', file);
		        })
		});
		ajaxData.append('wrtbtTitle', wrtbtTitle);
		ajaxData.append('wrtbtText',  wrtbtText);
		ajaxData.append('conslBbsDstnct', conslBbsDstnct);

		var wrtbtTitle = $("#wrtbtTitle").val();
		var wrtbtText = $("#wrtbtText").val();

		var conslBbsDstnct = $("#conslBbsDstnct").val();
		
		//console.log(wrtbtTitle);
		
		if(writrInfoOpngYn != "N"){
			
			
			writrInfoOpngYn ="Y";
		}
		

		

		var counselinglist = {
			wrtbtTitle : wrtbtTitle,
			wrtbtText : wrtbtText,
			writrInfoOpngYn : writrInfoOpngYn,
			conslBbsDstnct : conslBbsDstnct,
			bbsNo : bbsNo
		};
		
		ajaxData.append('writrInfoOpngYn', writrInfoOpngYn);
		
		for (var value of ajaxData.values()) {
			
			   //console.log(value); 
			}

		//모달 종료 
		$("#writeModal").css({
			"display" : "none"
		});

		
		$.ajax({
			url : "/net/counseling/api/write",
			type : "post",
		//	dataType : "json", // 받아야되는 데이터 타입 
			data : formData,
			processData : false,
            contentType : false,

			//JSON.stringify(counselinglist, ajaxData),
			
			//{counselinglist : counselinglist},
			//contentType : 'application/json; charset=utf-8', //json 타입으로 데이터를 보낼때 사용함 

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
	

	/*
	 * 정예린 2017-09-13
	 */

	var disrender = function(type,vo, mode) {
		var html;

		
		if(type==='공학'){
			html = dislistItemTemplate.render(vo);
			
		}
		else if(type==='전체'){
			html = counlistItemTemplate.render(vo);
		}

		if (mode === true) {
			$("#list").prepend(html);
		} else {
			$("#list").append(html);
			
		}

	}
	
	
	
	

