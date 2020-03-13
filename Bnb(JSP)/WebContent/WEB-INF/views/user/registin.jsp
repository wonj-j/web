<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/inc/asset.jsp"></jsp:include>
<style>
.medium {
	width: 350px;
	height: 40px;
}

.large {
	width: 425px;
}

.small {
	width: 133px;
	height: 40px;
	font-size: 17px;
}

select {
	margin-bottom: 10px;
	padding: 5px 10px;
	border: 1px solid #aaa;
	border-radius: 5px;
	outline: none;
}

td>input {
	margin-bottom: 10px;
	padding: 5px 10px;
	outline: none;
	color: black;
	font-size: 17px;
	border: 1px solid #aaa;
	border-radius: 5px;
}

#btncheck {
	font-size: 15px;
	border: 0;
	font-weight: bold;
	outline: none;
	cursor: pointer;
	height: 35px;
}

#btncheck:hover {
	border: 0;
	background-color: #61C4BB;
}

input[type="password"] {
	font-family: none !important;
}

#pic {
	border: 1px solid #A9A9A9;
	font-size: 17px;
}

td > span {
	font-size: 12px;
	color: #aaa;
}

.fas {

	color: tomato;
	display: none;
	
	/* 
	position: absolute;
	left: 1075px;
	top: 315px;
	font-size: 20px;
	 */
	
}

#btnregist {
	width: 430px;
	height: 50px;
	margin-top: 30px;
	font-weight: bold;
	border: 0px solid;
	background-color: #61C4BB;
	cursor: pointer;
}

#hobby {
	border: 1px solid #aaa;
	border-radius: 5px;
	outline: none;
	padding: 5px 10px;
}

.message {
	padding: 5px;
	font-size: 14px;
	color: tomato;
}




</style>

</head>
<body oncontextmenu='return false' ondragstart='return false'
	onselectstart='return false'>
	<jsp:include page="/inc/asset4.jsp"></jsp:include>
	<jsp:include page="/inc/asset3.jsp"></jsp:include>
		
	<div style="background-color: white;">
		<div style="width: 250px; height: 120px; overflow: hidden; margin: 0px auto; border: 0px solid black;">
		<a href="/bnb/main.do"><img src="/bnb/img/logo.png" style="display: block; width: 250px; height: 120px;"></a>
		</div>
	</div>
	<div class="reg-bx">
		<table
			style="border: 0px solid black; margin: 40px auto; width: 430px;">
			<tr>
				<td>아이디</td>
			</tr>
			<tr>
				<td>
					<input type="text" name="id" id="id" class="medium" autocomplete="off" required/> 
					<input type="submit" id="btncheck" value="중복확인" /> 
					<span class="checkid message"></span>
				</td>
			</tr>
			<tr>
				<td>비밀번호</td>
			</tr>
			<tr>
				<td>
					<input type="password" name="pw" id="pw" class="large" required /> 
					<i class="fas fa-lock"></i> <span class="pw message"></span>
				</td>
			</tr>
			<tr>
				<td>비밀번호 재확인</td>
			</tr>
			<tr>
				<td>
					<input type="password" name="pwok" id="pwok" class="large" required /> 
					<i class="fas fa-user-lock"></i> <span class="pwok message"></span>
				</td>
			</tr>
			<tr>
				<td>이름</td>
			</tr>
			<tr>
				<td>
					<input type="text" name="name" id="name" class="large" autocomplete="off" required placeholder="EX) 홍길동" /> 
					<span class="name message"></span>
				</td>
			</tr>
			<tr>
				<td>생년월일</td>
			</tr>
			<tr>
				<td>
					<input type="text" name="year" id="year" style="width: 150px; height: 40px;"  autocomplete="off" required placeholder="년(4자)" maxlength="4"/> 
					<select class="small" id="month">
							<option value="0">월</option>
						<c:forEach var="i" begin="1" end="12">
							<option value="${i}">${i}</option>
						</c:forEach>
					</select> 
					<input type="text" name="date" id="date" class="small" required placeholder="일" maxlength="2" />
					<span class="birth message"></span>
				</td>
			</tr>
			<tr>
				<td>성별</td>
			</tr>
			<tr>
				<td>
				<select class="small" id="gender">
						<option value="g">성별</option>
						<option value="m">남자</option>
						<option value="f">여자</option>
				</select>
				<br />
				<span class="gender message"></span>
				</td>
			</tr>
			<tr>
				<td>본인 확인 이메일<span>(선택)</span></td>
			</tr>
			<tr>
				<td>
					<input type="text" placeholder="선택입력" class="large" id="email" />
				</td>
			</tr>
			<tr>
				<td>휴대전화</td>
			</tr>
			<tr>
				<td>
					<input type="text" id="tel" class="large" placeholder="EX) 010-0000-0000" required /> 
					<span class="tel message"></span>
				</td>
			</tr>
			<tr>
				<td>자기소개<span>(선택)</span></td>
			</tr>
			<tr>
				<td>
					<textarea name="hobby" id="hobby" cols="40" rows="10" style="width: 430px;" placeholder="간단하게 자기소개 해보세요!                                                      EX) 안녕하세요 저는 홍길동입니다.                                                      저는 영화감상과 낚시를 좋아합니다."></textarea>
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="가입하기" id="btnregist"></td>
			</tr>
		</table>
	</div>
	
	
	<script>
	
	var check = false;
	
		$("#id").focus();
		
		$("#id").change(function(){
			check = false;
			$(".checkid").text("중복확인 버튼을 눌러주세요.");
		});
	
		$("#btncheck").click(function() {
			
			if($("#id").val() != "") {

				$.ajax({
					
					type: "POST",
					url: "/bnb/user/checkid.do",
					data: "id=" + $("#id").val(),
					success: function(result) {
						if (result == 1) {
							$(".checkid").text("사용 중인 아이디 입니다.");
							$(".checkid").css("color", "tomato");
							$("#btnregist").attr("disabled", true);
						} else {
							$(".checkid").text("사용 가능한 아이디 입니다.");
							$(".checkid").css("color", "tomato");
							$("#btnregist").attr("disabled", false);
							check = true;
						}
					
					},
					error : function(a,b,c) {
						console.log(a,b,c);
					}
				});
				
			} else {
				$(".checkid").text("필수 정보입니다.");
				$(".checkid").css("color", "tomato");
				$("#id").focus();
			}
			
		});	
		
		
		
		$("#year, #date, #month").keyup(function() {
			
			var flag = true;
			
			if($("#date").val() == ""){
				$(".birth").text("태어난 일(날짜) 2자리를 정확하게 입력하세요.");
				$(".birth").css("color", "tomato");
				flag = false;
			}
			
			if($("#month").val() == "0"){
				$(".birth").text("태어난 월을 선택하세요.");
				$(".birth").css("color", "tomato");
				flag = false;
			}
			
			if($("#year").val().length != 4){
				$(".birth").text("태어난 년도 4자리를 정확하게 입력하세요.");
				$(".birth").css("color", "tomato");
				flag = false;
			}
			
			if($("#year").val() == ""){
				$(".birth").text("태어난 년도 4자리를 정확하게 입력하세요.");
				$(".birth").css("color", "tomato");
				flag = false;
			}
			
			if(flag){
				$(".birth").text("");
			}
			
		});
		
		$("#month").click(function() {
			
			var flag = true;
			
			if($("#date").val() == ""){
				$(".birth").text("태어난 일(날짜) 2자리를 정확하게 입력하세요.");
				$(".birth").css("color", "tomato");
				flag = false;
			}
			
			if($("#month").val() == "0"){
				$(".birth").text("태어난 월을 선택하세요.");
				$(".birth").css("color", "tomato");
				flag = false;
			}
			
			if($("#year").val().length != 4){
				$(".birth").text("태어난 년도 4자리를 정확하게 입력하세요.");
				$(".birth").css("color", "tomato");
				flag = false;
			}
			
			if($("#year").val() == ""){
				$(".birth").text("태어난 년도 4자리를 정확하게 입력하세요.");
				$(".birth").css("color", "tomato");
				flag = false;
			}
			
			if(flag){
				$(".birth").text("");
			}
			
		});
				
		
		$("#pw, #pwok, #name, #tel").keyup(function() {
			
			if($("#pw").val() != ""){
				$(".pw").text("");
			}
			if($("#name").val() != ""){
				$(".name").text("");
			}
			if($("#tel").val() != ""){
				$(".tel").text("");
			}
			if($("#gender").val() != "0"){
				$(".gender").text("");
			}
			
			if ($("#pw").val() == $("#pwok").val()) {
				$(".pwok").text("");
			} else {
				$(".pwok").text("비밀번호가 일치하지 않습니다.");
			}
		
		});
		
		$("#gender").change(function() {
			
			if($("#pw").val() != ""){
				$(".pw").text("");
			}
			
			if($("#gender").val() != "0"){
				$(".gender").text("");
			}
			
			if ($("#pw").val() == $("#pwok").val()) {
				$(".pwok").text("");
			} else {
				$(".pwok").text("비밀번호가 일치하지 않습니다.");
			}
		
		});
			
	
		$("#btnregist").click(function() {
			
			var flag = true;
			
			if ($("#tel").val().length != 13) {
				$("#tel").focus();
				$(".tel").text("필수 정보입니다.");
				flag = false;
			} else {
				$(".tel").text("");
			}
			
			if ($("#gender").val() == "g") {
				$("#gender").focus();
				$(".gender").text("필수 정보입니다.");
				flag = false;
			} else {
				$(".gender").text("");
			}
			
			if ($("#date").val() == "") {
				$("#date").focus();
				$(".birth").text("태어난 일(날짜) 2자리를 정확하게 입력하세요.");
				flag = false;
			} else {
				$(".birth").text("");
			}
			
			if ($("#month").val() == "0") {
				$("#month").focus();
				$(".birth").text("태어난 월을 선택하세요.");
				flag = false;
			} else {
				$(".birth").text("");
			}
			
			if ($("#year").val().length != 4) {
				$("#year").focus();
				$(".birth").text("태어난 년도 4자리를 정확하게 입력하세요.");
				flag = false;
			} else {
				$(".birth").text("");
			}
			
			if ($("#name").val() == "") {
				$("#name").focus();
				$(".name").text("필수 정보입니다.");
				flag = false;
			} else {
				$(".name").text("");
			}
			
			if ($("#pw").val() == "") {
				$("#pw").focus();
				$(".pw").text("필수 정보입니다.");
				flag = false;
			} else {
				
				if($("#pwok").val() == ""){
					$("#pwok").focus();
					$(".pwok").text("필수 정보입니다.");
					flag = false;
				} else if ($("#pw").val() != $("#pwok").val()) {
					$("#pwok").focus();
					$(".pwok").text("비밀번호가 일치하지 않습니다.");
					flag = false;
				} 
			} 
			
			
			if ($("#id").val() == "") {
				$("#id").focus();
				$(".checkid").text("필수 정보입니다.");
				flag = false;
			} else {
				$(".checkid").text("");
			}
			
			if(!check){
				$("#id").focus();
				$(".checkid").text("중복확인 버튼을 눌러주세요.");
				flag = false;
			}
			if(flag){		
			
			 $.ajax({
				
				type: "POST",
				url: "/bnb/user/registinok.do",
				data: "id="+ $("#id").val() +"&pw="+ $("#pw").val() +"&name="+ $("#name").val() +"&tel="+ $("#tel").val() +"&year="+ $("#year").val() +"&month="+ $("#month").val() +"&date="+ $("#date").val() +"&gender="+ $("#gender").val() +"&email="+ $("#email").val() +"&hobby="+ $("#hobby").val(),
				success: function(result) {
					
					if (result == 1) {
						
						location.href="/bnb/main.do";
					}
				},
				error: function(a,b,c) {
					console.log(a,b,c);
				}
			});
			}
			
		});
			
			
	</script>


</body>
</html>

















