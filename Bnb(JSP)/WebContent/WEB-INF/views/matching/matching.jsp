<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>
@font-face { font-family: 'Cafe24Simplehae'; 
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/Cafe24Simplehae.woff')
            format('woff');
            font-weight: normal;
            font-style: normal;
             }
            
    body{
      font-family: 'Cafe24Simplehae';
    }


		#chatting {
    			 position: absolute;
     			left: 0px;
			top: 50px;
     			 width: 550px;
     			 height:750px;
     			 border:1px solid #ccc;
   		 }
		

		#imgbox {
			width: 250px;
			height: 250px;
			border-radius: 50%;
			background-image: url("img/author-2.jpg");
			background-repeat: no-repeat;
			background-size: contain;
			margin: 20px 0px;
			
		}
		#selectLocal{
			position:absolute;
			left: 600px;
			top: 50px;
		} 
</style>


<jsp:include page="/inc/asset.jsp"></jsp:include> <!-- HTML 라이브러리 -->


</head>

<body>
	

	
		
	<div id="chatting">
		<div class="container">
		  <div class="row"style=" background-color:white;">
		    <div style=" width:100%;padding:5px;  background-color: #56C3B8; text-align: center;">
			<b style="color:white; font-size:1.3em;">실시간 채팅 </b>
			<input style="border:1px solid white; background-color: #56C3B8;"class="btn btn-success" id="backbtn" type="button" value="x">
		    </div>
	
			    <div style=" background-color:white;height:570px; width:100%;">
			    <!-- 채팅내용 -->
				<h4><img style="width:30px;height:30px;"src="/bnb/img/face15.png">Lorem1</h4>
			   </div>
			   
			   <div style="margin-bottom:5px; padding:5px; height:50px; width:100%; background-color:white;border-bottom:2px solid #ccc;border-top:2px solid #ccc;">
			    <!-- 이름 -->
			    <h4>이름 :<input style="margin-left:20px; width:130px;" type="text" id="chatName" placeholder="이름"></h4>
			   
			  </div>
			  
			    <!-- 작성내용 -->
			    
			    <h4>내용 : </h4>
			    
	  
			  <textarea style="margin-left:20px; width:380px; height:80px;" placeholder="내용을 작성해 주세요!"></textarea>
			  <input class="btn btn-success ss" id="submit"style="padding:10px; margin-left:10px; background-color: #5F9EA0;"type="button" value="눌러줘">
			    
			  
			
			    
			  </div>
			  
		  </div>
		</div>

	<div id="selectLocal" style="width:350px;">


		<h1>????님의 프로필 정보 </h1>
		<div id="imgbox"></div>
		<h4>이름 : ?????</h4>

		<h4>나이 : 24세</h4>

		<h4>취미 : 먹방로드</h4>

		<h4>여행 일정 : Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia,
			explicabo.</h4>
		<div style="margin-top: 30px; text-align: center;">
			
		</div>
	</div>	
		
		
		
		
		
		


<script>

		var backbtn = document.getElementById('backbtn');

		backbtn.onclick = function () {
			window.close();
		}


	</script>

<jsp:include page="/inc/asset2.jsp"></jsp:include> <!-- JavaScript Libraries -->
</body>
</html>