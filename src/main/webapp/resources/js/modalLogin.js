/**
 * 20170905 허규준
 */

var emptyPasswdMsg = "비밀번호를 입력해주세요";
var emptyEmailMsg = "이메일을 입력해주세요";
var regEmailMsg = "이메일 형식이 아닙니다";
var loginFailMsg = "로그인 정보가 틀립니다";
var emailRegExp = /[0-9a-zA-Z][_0-9a-zA-Z-]*@[_0-9a-zA-Z-]+(\.[_0-9a-zA-Z-]+){1,2}$/;


$(function(){
	
	
	
	$("#email").on('keypress',function(){
		$("#emailMsg").empty();
	})
	$("#pwd").on('keypress',function(){
		$("#passwdMsg").empty();
	})
	
	$(document).on('mouseover', '.naverlogin', function (event) { 
		
		$(this).find("#naverLogo").css("background-image",'url("/net/resources/images/logo-hover.png")');
		$(this).find("#naverLogo").css("background-size",'cover');
		$(this).find(".btn-social").css('background-color','#1BAA25');
	});
	
	$(document).on('mouseout', '.naverlogin', function (event) { 
		
		$(this).find("#naverLogo").css("background-image",'url("/net/resources/images/logo.png")');
		$(this).find("#naverLogo").css("background-size",'cover');
		$(this).find(".btn-social").css('background-color','#1EC800');
	});
	
})



var login = function() {

	var email = $("#email").val();
	var pwd = $("#pwd").val();
	
	
	
	if(pwd===''){
		$("#passwdMsg").text(emptyPasswdMsg);
		$("#pwd").focus();
		event.preventDefault();
	}
	if(email===''){
		$("#emailMsg").text(emptyEmailMsg);
		$("#email").focus();
		event.preventDefault();
	}
	
	if(email!=''&&!email.match(emailRegExp)){
		$("#emailMsg").text(regEmailMsg);
		$("#email").focus();
		event.preventDefault();
	}
	if(email!=''&&pwd!=''&&email.match(emailRegExp)){
		$.ajax({
			url : "/net/api/checklogin",
			type : "post",
			data : "iden=" + email + "&pw=" + pwd,
			
			success : function(response) {
				
				console.log(typeof(response.data), response.data)
				
				if(response.data===true){
			
					
					$.ajax({
						url : "/net/api/setsession",
						type : "post",
						data : "iden=" + email + "&pw=" + pwd,
						
						success : function(response) {
							
							
														
							//if(response.data.infoYn == 'N'){
								
								
							
								//parent.window.location.href = "/net/user/mbinfo";
								
						//	}else{
								
								parent.window.location.href = "/net/";
								
							//}
							

							console.log("세션성공")
						},
						error : function(jqXHR, status, e) {
							console.log(jqXHR);
							console.error(status);
							console.error(e);
						}

					});
					event.preventDefault();
				}else if(response.data===false){
					$("#loginMsg").text(loginFailMsg);
					event.preventDefault();
				}
				
				
			},
			
			error : function(jqXHR, status, e) {
				console.log(jqXHR);
				console.error(status);
				console.error(e);
			}
			

		});
		event.preventDefault();
		
	}
		}


