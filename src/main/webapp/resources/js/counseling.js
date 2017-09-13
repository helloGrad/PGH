
//박가혜 2017-08-23 질문하기 사이즈 조절
	var writrInfoOpngYn;
	var bbsNo;

	/*
	 * 정예린 2017-09-13
	 */

	var isEnd = false;

	var dislistItemTemplate = new EJS({	url : "/net/resources/js/ejs-template/discussion-list-item.ejs"});
	var dislistTemplate = new EJS({	url : "/net/resources/js/ejs-template/discussion-list.ejs"});

	var disbFetching = false;
	
	/*
	 * 박가혜 2017-08-23 상담실리스트
	 * 정예린 자동 스크롤링 2017-09-13
	 * 
	 */	
	
	
	var disfetchList = function(type,order,reset) {
		if (isEnd === true) {
			return;
		}
		
		if(reset == 0){
			//var startNo = $("#list .w3-card-4:last-child").find('input').val() || 0;
			// false이면(startNo값이
			// null이면)
			// 0을
			// 실행
			// console.log('last', $("#counseling-list
			// .w3-card-2:last-child").find('input').val())
			
			
			
		}else{
			//$("#list").empty();
			// startNo=0;	
			
		}

		var startNo = $("#list .w3-card-4:last-child").find('input').val() || 0;
		
		 console.log("-------->" + startNo);

		$.ajax({
			url : "/net/counseling/api/list?sno="+startNo+"&type="+type+"&order="+order,
			type : "get",
			dataType : "json",
			data : "",
			success : function(response) {
				// console.log(response);

				console.log("rownum : "+response.data[0].rownum);

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
					disrender(vo);
				});

				var html = dislistTemplate.render(response);
				// $("#counseling-list").append(html);
				// $("#counseling-list").hello();
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
		
		/*
		 * 정예린 자동 스크롤링 2017-09-13
		 */
		$(window).scroll(function() {
			var $window = $(this);
			var scrollTop = $window.scrollTop();
			var windowHeight = $window.height();
			var documentHeight = $(document).height();

			if (scrollTop + windowHeight + 10 > documentHeight) {
				if (!disbFetching) {
					disbFetching = true;
					disfetchList('공학','공감순');
				}
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
	

	var disrender = function(vo, mode) {

		var html = dislistItemTemplate.render(vo);

		if (mode === true) {
			$("#list").prepend(html);
		} else {
			$("#list").append(html);
		}

	}
	
	
	
	

