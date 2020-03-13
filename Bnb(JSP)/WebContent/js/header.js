
$("#url").val(location.href);

document.onkeydown = function() {

	if (event.keyCode == 27) {
		m2();
	}

	if (event.keyCode == 13) {
		$("#btnlogin").trigger("click");
	}
};

function m2() {

	$.ajax({
		type : "POST",
		url : "/bnb/user/loginclose.do",
		success : function(result) {
			$(".login-message").hide();
			$("#idinput").val("");
			$("#pwinput").val("");
		},
		error : function(a, b, c) {
			console.log(a, b, c);
		}

	});
}

$(".login").click(function() {

	setTimeout(function() {
		$("#idinput").focus();

	}, 500);

});

$("#btnlogin").click(function() {

	$.ajax({

		type : "POST",
		url : "/bnb/user/loginok.do",
		data : "id=" + $("#idinput").val() + "&pw=" + $("#pwinput").val(),
		success : function(result) {
			// location.href = result;
			console.log(result);
			// $(".login-message").show();

			$("#loginout").html("");
			
			
			
			if (result == "") {
				onAuth();
			} else {
				offAuth();
				
			}
			
			

		},
		error : function(a, b, c) {
			console.log(a, b, c);
		}

	});

});

$(".btnclose").click(function() {

	m2();

});

function onAuth() {
	$(".login-message").show();
	$("#loginout")
			.append(
					"<div style='position: absolute; left: 1620px; top: 5px;'><a class='login' href='#!' data-toggle='modal' data-target='#myModal'>로그인</a></div><div style='position: absolute; left: 1690px; top: 5px;'><a class='regist' href='#' onclick='location.href='/bnb/user/regist.do''>회원가입</a></div>");
}

function offAuth() {
	$('#myModal').modal('hide');
	$("#loginout")
			.append(
					"<div style='position: absolute; left: 1620px; top: 5px;'><a class='logout' href='#' onclick='location.href=\"/bnb/user/logout.do?url="
							+ location.href
							+ "\";'>로그아웃</a></div><div style='position: absolute; left: 1690px; top: 5px;'><a class='regist' onclick='location.href=\"/bnb/user/\";'>마이페이지</a></div>");
	location.reload();
}