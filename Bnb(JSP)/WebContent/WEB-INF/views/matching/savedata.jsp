<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>
@font-face {
			font-family: 'Cafe24Simplehae';
			src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/Cafe24Simplehae.woff') format('woff');
			font-weight: normal;
			font-style: normal;
		}

		body {
			font-family: 'Cafe24Simplehae';
		}


		html {
			background-color: "#C6DFD6";

		}

		h1,
		h4 {
			color: white;

		}

		hr {
			border: 1px dashed white;
		}

  
</style>


<jsp:include page="/inc/asset.jsp"></jsp:include> <!-- HTML 라이브러리 -->


</head>

<body>
	

	
		
		<section style="margin-top: 2px; background-color: #56C3B8;">

		<div class="container">

			<div class="row">
				<div class="col-md-12 col-lg-8" style="text-align: center;">
					<br>
					<hr>
					<h1 style="color:#fff" class="title-single">데이터가 저장 되었습니다.</h1>
					<h4 style="color:#fff" id="act"></h4>
					<h4 style="color:#fff" id="plan"></h4>
					<h4 style="color:#fff" id="eat"></h4>
				</div>
			</div>
		</div>
		<br>
		<hr>
		<div style="text-align: center;">
			<input style=" border:1px solid white; background-color: #56C3B8;" class="btn btn-success ss"
				type="button" value="다시 하기" id="re">
			<input style=" border:1px solid white; background-color: #56C3B8;" class="btn btn-success"
				type="button" value="매칭 하기" id="save">
		</div>

	</section>
		
		
		
		
		
		



<jsp:include page="/inc/asset2.jsp"></jsp:include> <!-- JavaScript Libraries -->

<script>

		var act = document.getElementById("act");
		var plan = document.getElementById("plan");
		var eat = document.getElementById("eat");
		var re = document.getElementById("re");
		var save = document.getElementById("save");




		var actScore = opener.actScore;
		var planScore = opener.planScore;
		var eatScore = opener.eatScore;

		console.log(actScore);
		console.log(planScore);
		console.log(eatScore);



		act.innerText = "활동성 : " + actScore + "점";
		plan.innerText = "계회성 : " + planScore + "점";
		eat.innerText = "먹성 : " + eatScore + "점";




		re.onclick = function () {				//다시하기 버튼
			window.close();
		}

		save.onclick = function () {			//매칭하기 버튼

			// window.close();
			// opener.document.all.location.href="http://www.naver.com";
			opener.open("/bnb/matching/matching.do", "a", "width=1000,height=1000,left=800,top=200");
			// window.document.location.href="http://www.naver.com";
			//window.location.assing("http://coupang.com");


			// window.close();

			window.resizeTo(1000, 800);

		}





	</script>
</body>
</html>