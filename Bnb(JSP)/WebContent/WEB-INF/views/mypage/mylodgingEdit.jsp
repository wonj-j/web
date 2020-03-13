<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>숙소 정보 수정</title>
	<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="lib/jquery/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
	
	<style>
		body{
			background-image: url("img/slide-1.jpg");
			background-repeat: no-repeat;
			background-size: cover;
			background-attachment: fixed;
			background-position: center center;
		}
		#bigbox{
			width: 1000px;
			
			margin: 0 auto;
			margin-top: 50px;
			border: 0px solid black;
		}
		#bigbox h1{
			text-align: center;
			color: #464545;
		}
		#bigbox form{
			color: whitesmoke;
			padding-top: 20px;
			border: 0px solid black;
			background-color: rgba(0, 0, 0, 0.3);
			width: 800px;
			margin: 0 auto;
		}
		#bigbox>form>div{
			border: 0px solid black;
			margin-top: 50px;
		}
		#bigbox>form>div>img{
			margin: 0;
			margin-left: 20px;
			padding:0;
			width: 200px;
			height: 200px;
		}
		#bigbox>form>div>span:nth-child(1){
			display: inline-block;
			width: 250px;
			font-size: 1.5em;
			border: 0px solid black;
			text-align: right;
		}
		
		.btn.btn-success{
			margin-left: 39%;
			margin-bottom: 20px;
		}
		.file-btn{
			margin-left: 10px;
			display: inline-block;
			width: 300px;
		}
		.numbtn{
			margin-left: 20px;
		}
		.rdbtn{
			margin-left: 20px;
		}
	</style>
</head>
<body>
	<div id="bigbox">
		<h1>숙소 정보 수정</h1>
		<form name="form1">
			<input type="hidden" id="imgvalue" name="imgvalue" value="default">
			<input type="hidden" id="imgkey" name="imgkey" value="default">
			<div>
				<span>숙소 최대 수용인원</span><input type="number" min="1" max="5" id="peoplenum" name="peoplenum" class="numbtn">
			</div>
			<div>
				<span>숙소 침대 수</span><input type="number" min="0" max="5" id="bednum" name="bednum" class="numbtn">
			</div>
			<div>
				<span>욕실 수</span><input type="number" min="0" max="5" id="bathroomnum" name="bathroomnum" class="numbtn">
			</div>
			<div>
				<span>숙소 유형</span>
				<span class="rdbtn"><input type="radio" id="rb1" name="lodgingrdo" value="집전체" checked><label for="rb1">집전체</label></span>
				<span class="rdbtn"><input type="radio" id="rb2" name="lodgingrdo" value="개인실"><label for="rb2">개인실</label></span>
				<span class="rdbtn"><input type="radio" id="rb3" name="lodgingrdo" value="다인실"><label for="rb3">다인실</label></span>
			</div>
			<div>
				<span>숙소 사진</span><img src="/bnb/img/post-single-1.jpg" id="imgfile"><input type="file" id="filename" name="filename" class="file-btn">
			</div>
			<div>
				<input type="button" class="btn btn-success" value="수정 완료">
			</div>
		</form>
	</div>
	<script>
	var sel_file;
	$(document).ready(function() {
	 $("#filename").on("change", handleImgFileSelect);
	    $("#imgfile").css({
	    	"width" : "150px",
	    	"height" : "150px",
	    	"margin-left" : "10px"
	    });

	});
function handleImgFileSelect(e) {
		    var files = e.target.files;
		    var filesArr = Array.prototype.slice.call(files);

		    filesArr.forEach(function(f) {
		        if(!f.type.match("image.*")) {
		            alert("확장자는 이미지 확장자만 가능합니다.");
		            return;
		        }

		        sel_file = f;

		        var reader = new FileReader();
		        reader.onload = function(e) {
		            $("#imgfile").attr("src", e.target.result);
		        }
		        reader.readAsDataURL(f);
		    });
}


		</script>
</body>
</html>