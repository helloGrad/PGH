
//박가혜 2017-08-23 질문하기 사이즈 조절
	//var writrInfoOpngYn;
	var bbsNo;
	var test;
	var order; // 정렬유지
	var boardtype;// 게시판 유형 설정
	var count=0;
	
	/*
	 * 정예린 버튼 페이지
	 */
	var totalListNum = 0;

	
	


	/*
	 * 정예린 2017-09-13
	 */

	var isEnd = false;

	var dislistItemTemplate = new EJS({	url : "/net/resources/js/ejs-template/discussion-list-item.ejs"});
	var dislistTemplate = new EJS({	url : "/net/resources/js/ejs-template/discussion-list.ejs"});
	var counlistItemTemplate = new EJS({	url : "/net/resources/js/ejs-template/counseling-list-item.ejs"});
	var counlistTemplate = new EJS({	url : "/net/resources/js/ejs-template/counseling-list.ejs"});
	
	var pagelistTemplate = new EJS({url : "/net/resources/js/ejs-template/page-list.ejs"});

	var disbFetching = false;
	
	/*
	 * 박가혜 2017-08-23 상담실리스트 정예린 자동 스크롤링 2017-09-13
	 * 
	 */	
	
	function reset(type,order1){
		
		
		console.log(type+" "+order1);
		
		if(totalListNum >= 20){
			// 버튼페이징을 바뀌는 시점에 정렬할 때는 버튼페이지 리스트 함수를 불러옴
			pageList(type, order1, '1');
		}
		else {
		$("#list").empty();
	
		order=order1;
		 isEnd=false;
		 disfetchList(type,order);
		 totalListNum = 0;
		console.log(type, order, isEnd);
		}
		 
	}
	
	
	var disfetchList = function(type,order, callback) {
		
//		if (typeof(callback) == "function") callback();
		
		if (isEnd === true) {
			return;
		}
		
		var startNo;
		var startNo2; // 저장용
		var user = 	$("#authUser").val();
		
			
		if(type == '전체') {
			startNo = $("#list .w3-card-2:last-child").find('input').val() || 0;
		}else{
			
			startNo = $("#list .w3-card-4:last-child").find('input').val() || 0;
		}

		 console.log("----"+type+"---->" + startNo);

		$.ajax({
			url : "/net/counseling/api/list?sno="+startNo+"&type="+type+"&order="+order,
			type : "get",
			dataType : "json",
			data : "",
			success : function(response) {
			test=response.data;
			

				if (response.result === "fail") {
					console.warn(response.message);
					return;
				}
				// detect end

				if (response.data.counselingList.length < 5) {
					console.log(response.data.counselingList.length);
					isEnd = true;
				}
				// rendering
				$.each(response.data.counselingList, function(index, vo) {
					
					vo.user = user;
					disrender(type, vo);
					totalListNum++;
					//console.log("totalListNum : " + totalListNum);
					if (totalListNum >= 20) {
						isEnd = true;
						pageList(type, order, '1', 'init');
					}
				});

				disbFetching = false;
				
				//console.log(response.data.fileList);
				
				// 사진보여주기 박가혜 2017-09-19
				

				startNo2=startNo;
				for(var i=0; i<response.data.counselingList.length; i++){
					
					console.log(response.data.counselingList[i].wrtbtNo);
					
					for(var j=0; j<response.data.fileList[i].length; j++){
						
						
						count=1+parseInt(i)+parseInt(startNo2);
						
						//console.log("st"+startNo2);
						//console.log("st"+i);
						//console.log("파일:"+response.data.fileList[i][j].prntsNo+" "+count);
						$('.listimg'+count).css("background-image"," url('/net"+response.data.fileList[i][j].storgPath+"')"); 
						$('.listimg'+count).css("background-position","center"); 
						$('.listimg'+count).css("height","200px"); 
						$('.listimg'+count).css("margin","5px 0 5px 0"); 
						// $('#listimg'+count).css("background-repeat","no-repeat");
						 
					
						// $('.listimg'+count).append("<img
						// src='/net"+response.data.fileList[i][j].storgPath+"'
						// style='width: 100%; height: 50px; margin: 5px'>");
						// $('.listimg'+count).append("<img
						// src='/net"+response.data.fileList[i][j].storgPath+"'
						// style='max-width: 100%; height: auto '>");
						
						break;
					}
					
					
					
				}
				
				if (typeof(callback) == "function") callback();
				
				
			},
			error : function(jqXHR, status, e) {
				console.error(status + " : " + e);
				disbFetching = false;
			}
		});

	}
	
	
	/*
	 * 정예린 2017-09-13
	 */

	var disrender = function(type,vo, mode) {
		var html;

		//console.log("렌더링 확인 : "+vo.user);
		if(type==='전체'){
			html = counlistItemTemplate.render(vo);
		}
		else{
			
			html = dislistItemTemplate.render(vo);
			
		}

		if (mode === true) {
			$("#list").prepend(html);
		} else {
			$("#list").append(html);
			
		}

	}
	
	
	/*
	 * 정예린 페이지 2017-09-14 버튼페이지 비동기 통신
	 */

	var pageList = function(type, order, page, check) {

		//check 스크롤링상태에서 버튼으로 바뀔때는 버튼을 불러오는 ejs만 렌더링하며, 글list는 렌더링하지 않는다.
		//console.log("----" + type + "---->" + "페이징 비동기통신 "+type+" "+order);

		var user = 	$("#authUser").val();
		
		$.ajax({
			url : "/net/counseling/api/pagelist?page=" + page + "&type=" + type
					+ "&order=" + order + "&user=" + user,
			type : "get",
			dataType : "json",
			data : "",
			success : function(response) {
				console.log(response);

				if (response.result === "fail") {
					console.warn(response.message);
					return;
				}

				var vo;

				vo = response.data;
				vo.type = type;
				vo.order = order;
				vo.check = check;
				vo.user = user;

				pageListrender(type, vo);

			},
			error : function(jqXHR, status, e) {
				console.error(status + " : " + e);
			}
		});

	}

	/*
	 * 정예린 2017-09-13 버튼페이지 rendering
	 */

	var pageListrender = function(type, vo, mode) {
		var html;
		var listhtml;
		//console.log("pagelist 렌더링 확인 : "+vo.user);

		html = pagelistTemplate.render(vo);

		if (vo.check != 'init') {
			if (type === '전체') {
				listhtml = counlistTemplate.render(vo);
			} else if(type === '공학'){
				listhtml = dislistTemplate.render(vo);
			}
		}

		$("#list").html(listhtml);
		$("#pagelist").html(html);
		

		for(var i=0;i<vo.scrapList.length;i++){
			if(vo.scrapList[i].prntsDstnct==='게시글'){ //게시글
				$('.do-scrapcoun' + vo.scrapList[i].prntsNo).addClass('scrap-on');
			}
		};

	}


	

	
	/*
	 * 정예린 170905 성별 선택 시 색깔 바꿔주기
	 */
	function changeColor(obj) {

		
	   $(".objectbutton1").removeClass("on");
	   $(".objectbutton2").removeClass("on");
	   
	   if(obj.value == "일반게시판"){
		   
		   $(".objectbutton2").addClass("on");
		  
		   
	   }else{
		   
		   $(".objectbutton1").addClass("on");
		  
	   }	   
	}
	
	

	
	
	// 박가혜 2017-08-23

	$(function() {

		type=boardtype;
		
	
		var authUser = $("#authUser").val();

		 		 
			$("#headerBtn").click(function(event) {
				
				type="전체";	
				
			
			});
			
			$("#myBtn").click(function(event) { // 글쓰기 게시판 유형 설정
				
				type=boardtype;
				

			});
			
		 

			$(".writeBtn").click(function() { // 글쓰기

				if (authUser === null || authUser === '') {

					
					console.log("///사용자가없습니다.////");
					
					$("#login").css({
						"display" : "block"
					});

				} else {
					
					
					if( type == '전체' ){
						
						$('#writeleft').removeClass('hide');
						document.getElementById("boardoption").setAttribute("name", "boardoption");
						
						$("#writeright").addClass('col-lg-9');
					
						
					}else{
						$('#writeleft').addClass('hide');
					
						
						document.getElementById("boardoption").setAttribute("name", "");
						$("#writeright").removeClass('col-lg-9');
						
					}
					
					$("#writeModal").css({
						"display" : "block"
					});
										

				}

			});
		
		
		$(document).on('click', "a.detail", function() { // append한 것은 이걸로
															// click 이벤트
															// 해야함....^^
			
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
		
		
		$('#writrInfoOpngYn2 li > a').on('click', function() { // 비공개여부 값 저장 하기

			
			 document.getElementById("writrInfoOpngYn").innerHTML = 
				 
				 "<option  class='hide' value='Y'></option>"+
				  "<option value='N' selected='selected'>비공개로 작성하기</option>";
		});

		
		
		$(document).keydown(function(e) { // 모달창 끄기
			

			  var modal1 = document.getElementById('writeModal');
		    if (e.keyCode == 27) { 
		    	
				   modal1.style.display = "none";
		    } 
		});
		
		

	})
	
	function resize(obj) {
			
			
			
			
			 obj.style.height = "1px";
			 obj.style.height = (12+obj.scrollHeight)+"px";
			
			 $("#writeModal").scrollTop($("#writeModal")[0].scrollHeight);


			// console.log($(".sidebar").height()); //수정필요함
	
			 // $(".sidebar").height(obj.style.height);

	}
	

	function titleResize(obj) {

		obj.style.height = "1px";

		obj.style.height = (20 + obj.scrollHeight) + "px";

	}
	

	/*
	 * 박가혜
	 */

	function counselinginsert() {

		
		
		 var formData = new FormData($("#counselingform")[0]);


	
		/*
		 * var ajaxData = new FormData(); ajaxData.append(
		 * 'filedata','counseling'); $.each($("input[type=file]"), function(i,
		 * obj) { $.each(obj.files,function(j, file){ ajaxData.append('file',
		 * file); }) }); ajaxData.append('wrtbtTitle', wrtbtTitle);
		 * ajaxData.append('wrtbtText', wrtbtText);
		 * ajaxData.append('conslBbsDstnct', conslBbsDstnct);
		 * 
		 * var wrtbtTitle = $("#wrtbtTitle").val(); var wrtbtText =
		 * $("#wrtbtText").val();
		 * 
		 * 
		 * 
		 * var counselinglist = { wrtbtTitle : wrtbtTitle, wrtbtText :
		 * wrtbtText, writrInfoOpngYn : writrInfoOpngYn, conslBbsDstnct :
		 * conslBbsDstnct, bbsNo : bbsNo };
		 * 
		 * //ajaxData.append('writrInfoOpngYn', writrInfoOpngYn);
		 *  // if(writrInfoOpngYn != "N"){
		 * 
		 *  // writrInfoOpngYn ="Y"; //}
		 * 
		 * 
		 * 
		 */
		 
		 if($("#writeleft").hasClass("hide") === true) {
			
			 formData.append('boardoption', boardtype);
		 }


		
		var writrInfoOpngYn = $("#writrInfoOpngYn").val();
		
		
		formData.append('writrInfoOpngYn', writrInfoOpngYn);
		

		
		for (var value of  formData.values()) {
			
			   // console.log(value);
			}

		// 모달 종료
		$("#writeModal").css({
			"display" : "none"
		});

		
		$.ajax({
			url : "/net/counseling/api/write",
			type : "post",
		// dataType : "json", // 받아야되는 데이터 타입
			data : formData,
			processData : false,
            contentType : false,

			// JSON.stringify(counselinglist, ajaxData),
			
			// {counselinglist : counselinglist},
			// contentType : 'application/json; charset=utf-8', //json 타입으로 데이터를
			// 보낼때 사용함

			success : function(response) {

				if (response.result === "fail") {

					console.error(response.message);
					return;
				}

				console.log("성공입니다");
				// console.log(response.data);
				// response.data.contextpath =
				// "${pageContext.request.contextPath}/noti/api/lab";
				
				location.reload();

			},
			error : function(jqXHR, status, e) {
				console.log("에러입니다");
				console.error(status + " : " + e);
				console.log(jqXHR);
			}
		});
		
		
		

	}
	

	
	
	

