<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!doctype html>
<html lang="ko">
<head>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>

<body>


	<script type="text/javascript">
		var naver_id_login = new naver_id_login("4XJQVjfPiPo3e5Xe23hL",
				"http://127.0.0.1:8080/net/user/index/");
		// 접근 토큰 값 출력
		naver_id_login.setDomain(".127.0.0.1:8080/net/"); //상태 토큰 비교를 위한 domain 설정

		// 네이버 사용자 프로필 조회
		naver_id_login.get_naver_userprofile("naverSignInCallback()");
		// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function

		function naverSignInCallback() {

			event.preventDefault();

			// document.write(naver_id_login.oauthParams.access_token);
			// document.write(naver_id_login.getProfileData('email'));

			var vo = {};

			vo.token = naver_id_login.oauthParams.access_token;
			vo.birth = naver_id_login.getProfileData('birthday');
			vo.email = naver_id_login.getProfileData('email');
			vo.nickname = naver_id_login.getProfileData('nickname');
			vo.age = naver_id_login.getProfileData('age');
			vo.name = naver_id_login.getProfileData('name');
			vo.gender = naver_id_login.getProfileData('gender');
			//alert(JSON.stringify(vo));

			$.ajax({
				url : "/net/user/index",
				type : "post",
				data : vo,

				success : function(response) {

					if (response.result === "fail") {

						console.error(response.message);
						return;
					}

					parent.window.location.href = "/net/orgnz";

				},
				error : function(jqXHR, status, e) {

					console.log(status + " : " + e);
				}
			});

			//self.close();  

		}

		function javascript() {
			// self.close();   //자기자신창을 닫습니다.
		}
	</script>




</body>
</html>