
/*
 * 정예린 스크랩 기능 2017-09-19
 */

var doScrap = function(type, id, user) {

	if (user === undefined) {

		// alert('로그인 해주세요');

		console.log("로그인해주세요");
		$("#login").css({
			"display" : "block"
		});

		return;
	} else {

		var classType;
		if (type === '모집공고') {
			classType = 'noti';
		} else if (type === '게시글') {
			classType = 'coun';
		}
		// console.log(type + " " + id + " "+ user + "" + classType);

		if ($('.do-scrap' + classType + id).hasClass("scrap-on")) {

			console.log(" 클래스 있음 ")
			$('.do-scrap' + classType + id).removeClass("scrap-on");

			$.ajax({
				url : "/net/api/deletescrap?type=" + type + "&id=" + id
						+ "&user=" + user,
				type : "get",
				dataType : "json",
				data : "",
				success : function(response) {
					console.log(response);

					if (response.result === "fail") {
						console.warn(response.message);
						return;
					}

				},
				error : function(jqXHR, status, e) {
					console.error(status + " : " + e);
				}
			});
		} else {
			$('.do-scrap' + classType + id).addClass("scrap-on");

			console.log(" 클래스 없음 ")

			$.ajax({
				url : "/net/api/addscrap?type=" + type + "&id=" + id + "&user="
						+ user,
				type : "get",
				dataType : "json",
				data : "",
				success : function(response) {
					console.log(response);

					if (response.result === "fail") {
						console.warn(response.message);
						return;
					}

				},
				error : function(jqXHR, status, e) {
					console.error(status + " : " + e);
				}
			});
		}
	}

}