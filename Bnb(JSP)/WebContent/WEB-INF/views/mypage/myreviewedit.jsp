<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>나의 리뷰 수정</title>
	<link href="/bnb/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="/bnb/lib/jquery/jquery.min.js"></script>
	<script src="/bnb/lib/bootstrap/js/bootstrap.min.js"></script>
	<style>
		#bigbox{
			width: 500px;
			margin: 0 auto;
			margin-top: 5%;
		}
		#bigbox h3{
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
			margin-left: 40%;
			background-color: #5F9EA0;
		}
		.Editcontents{
			margin-top: 30px;
		}
		.Editcontents div{
			display: inline-block;
		}
		.Editcontents div:nth-child(1){
			text-align: right;
			width: 150px;
			margin-left: 10px;
		}
		.Editcontents div:nth-child(2){
			margin-left: 20px;
		}
	</style>
</head>
<body>
	<div id="bigbox">
		<h3>나의 리뷰 수정</h3>
		<form id="form1">
			<input type="hidden" id="reviewkey" name="reviewkey" value="default">
			<div class="Editcontents">
				<div>리뷰 카테고리</div><div><input type="text" id="reviewcate" name="reviewcate" readonly style="border:0" value="${category}"></div>
			</div>
			<div class="Editcontents">
				<div>점수</div><div><input type="number" id="reviewscore" name="reviewscore" min="1.0" max="5.0" step="0.1" value="${dto.rstarscore }"></div>
			</div>
			<div class="Editcontents">
				<div id="textarea-lefttext">
					<span>리뷰 내용</span><span>(글자수제한:100자)</span>
				</div><div><textarea name="reviewcontent" id="reviewcontent" cols="30" rows="10" style="resize: none;">${dto.rcontent}</textarea>
				</div>
			</div>
			<input type="hidden" id="rseq" name="rseq" value="${dto.rseq}">
			
			<span>
				<input type="submit" class="btn" value="수정 완료">
				<input type="button" class="btn" id="close" value="닫기">
			</span>
		</form>
	</div>
	<script type="text/javascript">
		var rscore;
		
		$("#reviewscore").change(function(){
			rscore = $("#reviewscore").val();
			console.log(rscore);
		});
		
		$(document).ready(function () {
				rscore = $("#reviewscore").val();
				$('#reviewcontent').on('keyup', function () {
					if ($(this).val().length > 100) {
						$(this).val($(this).val().substring(0, 100));
					}
				});
				$("#form1").submit(					
					function(){
						event.preventDefault();
					var data = "rseq="+$("#rseq").val()+"&reviewscore="+rscore+"&reviewcontent="+$("#reviewcontent").val();
					/* 	$("td[data-writenum="+($("#reviewkey").val()-1)+"]",opener.document).closest("tr").children("td:nth-child(2)").text($("#reviewtitle").val());
						window.close();
						$("td[data-writenum="+($("#reviewkey").val()-1)+"]",opener.document).closest("tr").children("td:nth-child(3)").text($("#reviewcontent").val()); */			
						$.ajax({
							type : "POST",
							url : "/bnb/updatereview.do",
							data : data,
							success: function(){
								alert("수정완료");
								window.opener.location.reload();
								window.close();
							},
							error: function(a,b,c){
								console.log(a,b,c);
							}
						});
						
					}
				);
			});
	 $("#close").click(function(){
		window.close(); 
	 });
	 $(document).keydown(function () {
			if (event.keyCode == 13) {
				/* $("td[data-writenum=" + ($("#reviewkey").val() - 1) + "]", opener.document).closest("tr").children("td:nth-child(2)").text($("#reviewtitle").val());
				window.close();
				$("td[ data-writenum=" + ($("#reviewkey").val() - 1) + "]", opener.document).closest("tr").children("td:nth-child(3)").text($("#reviewcontent").val());*/
			}
		});
	</script>
</body>
</html>