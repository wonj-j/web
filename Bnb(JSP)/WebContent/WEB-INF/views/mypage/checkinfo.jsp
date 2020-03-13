<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>정보 수정 확인</title>
	<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="lib/jquery/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
	<style>
		#bigbox{
			width: 800px;
			border: 0px solid black;
			margin: 0 auto;
			margin-top: 5%;
		}
		#bigbox h3{
			width: 750px;
			text-align: center;
		}
		#textarea-lefttext{
			position: relative;
			top: -100px;
		}
		#textarea-lefttext span{
			text-align: center;
			display: block;
		}
		.btn{
			width: 100px;
			margin-top: 20px;
			background-color: #5F9EA0;
		}
		.btn.btn-complete{
			margin-left: 30%;
		}
		.Editcontents{
			width: 600px;
			margin : 15px auto;
			border : 0px solid black;
		}
		.Editcontents div{
			display: inline-block;
		}
		.Editcontents input[type="text"]{
			border: 0px;
		}
		.Editcontents div:nth-child(1){
			text-align: right;
			width: 150px;
			margin-left: 10px;
			border: 0px solid black;
		}
		.Editcontents div:nth-child(2){
			margin-left: 20px;
		}
		.Editcontents img{
			width : 150px;
			height: 150px;
			margin-left: 16px;
			border-radius: 50%
		}
		.EditTextArea{
			width: 320px;
			border: 0px solid black;
			margin-left: 140px;
		}
		#pic{
			margin-left: 20px;
		}
		#hobby{
			float:right;
			border: 0px solid black;
			width: 180px;	
		}
		
		
	</style>
</head>
<body>
	<div id="bigbox">
		<h3>수정한 정보</h3>
		<form name="form1" id="reviewform">
			<input type="hidden" id="reviewkey" name="reviewkey" value="default">
			<div class="Editcontents">
				<div>이메일</div><div><input type="text" class="form-control" id="inputemail" name="inputemail" readonly></div>
			</div>
			<div class="Editcontents">
				<div>비밀번호</div><div><input type="text" class="form-control" id="pw" name="pw" readonly></div>
			</div>
			<div class="Editcontents">
				<div>핸드폰번호</div><div><input type="text" class="form-control" id="tel" name="tel" readonly></div>
			</div>
			<div class="Editcontents">
				<div>프로필사진</div><img src="/bnb/img/${dto.pic}"><div><input type="text" class="form-control" id="pic" name="pic" readonly></div>
			</div>
			<div class="EditTextArea">
				<span>간단소개글(취미)</span>
				<textarea class="form-control" id="hobby" name="hobby" cols="10" rows="5" style="resize: none;" readonly></textarea>
				<div style="clear : both;"></div>
			</div>
			
			<div class="Editcontents">
				<div>유저번호</div><div><input type="text" class="form-control" id="seq" name="seq" readonly></div>
			</div>
			<div>
				<input type="button" class="btn btn-complete" value="수정 완료">
				<input type="button" class="btn btn-reset" value="취소">
			</div>
		</form>
	</div>
	<script type="text/javascript">
		$(document).ready(function () {
				$("#seq").val("${dto.seq}");
				$("#inputemail").val("${dto.email}");
				$("#pw").val("${dto.pw}");
				$("#tel").val("${dto.tel}");
				$("#pic").val("${dto.pic}");
				$("#hobby").val("${dto.hobby}");
				
				$('#reviewcontent').on('keyup', function () {
					if ($(this).val().length > 100) {
						$(this).val($(this).val().substring(0, 100));
					}
				});
				
		
				
				$(".btn.btn-complete").on({
					click: function(){
					 	$.ajax({
							type: "POST",
							url: "/bnb/checkinfoOk.do",
							data: "seq=${dto.seq}&pw=${dto.pw}"
							+"&tel=${dto.tel}&email=${dto.email}&hobby=${dto.hobby}&pic=${dto.pic}",
							success: function(result){
								alert("수정완료했습니다.");
								location.href="/bnb/myinfo.do";
							},
							error: function(a,b,c){
								console.log(a,b,c);
							}
						});
					}
				});
				$(".btn.btn-reset").on({
					click: function(){
						alert("취소했습니다.");
						window.location.href="/bnb/myinfo.do";
					}
				});
			});
	</script>
</body>
</html>