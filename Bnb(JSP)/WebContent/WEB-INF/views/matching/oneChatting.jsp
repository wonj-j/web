<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      overflow-x:hidden;
    }

	hr{
		color:#56C3B8;
	}
  .nav-item {
    margin: 0px 100px;
  }
  h4{
    width:100%;
    
  }

  
  #saveData{
  
  	display:none;
  }
  
  #josa{
    width:1000px;
    height:1000px;
    margin:30px auto;
    position:relative;
  }
  #sub1{
    margin-top: 10px;
  }
  #sub2{
    margin-top: 10px;
  }
  #sub3{
    margin-top: 10px;
    margin-bottom:20px
  }
  section{
    animation-name: fadein;
    animation-duration: 1s;
    position: relative;
    left:0px;
    top:0px;
  }
  @keyframes fadein{
    from{
      opacity: 0;
      left:100px;
    }
    to{
      opactiy:1;
      left:0px;
    }
  }
  #listBox{

      display:none;
      animation-name: suprise;
      animation-duration: .5s;
   }
   @keyframes fadeout{
      from{
        opacity:1;
        left:1000px;
      }
      to{
        opacity:0;
        left:2500px;
      }
    }	
  .radiobox{
    float: right;
  }
  .radiobox::after{
    display:block;
    content:"";
    clear:both;
  }
     #chatting {
      position: absolute;
      left: 2500px;
      top: 130px;
      width: 550px;
      height:750px;
      border:1px solid #ccc;
      animation-duration: 1.5s;
      float:left;
    }
    
    @keyframes fadein2 {
      from {
        opacity: 0;
        left: 2500px;
      }
  
      to {
        opacity: 1;
        left: 1000px;
      }
    }
    #message{
 
 position:absolute;
 bottom:135px;
 left:100px;
 width:300px;
 border-radius:5px;
 background-color:white;
 border:2px solid #56C3B8;
 /* opacity:0; */
 opacity:0;
 z-index:1;
 white-space:nowrap;
 overflow:hidden;
 text-overflow:ellipsis;
 }
 #chatlist{
 	overflow:auto;
 	position:relative;
 	background-color:white;
 	height:570px;
 	width:100%;
 }
 
</style>


<jsp:include page="/inc/asset.jsp"></jsp:include> <!-- HTML 라이브러리 -->


</head>

<body>
	
<jsp:include page="/inc/header.jsp"></jsp:include> <!-- 메뉴바(헤더) -->
<jsp:include page="/inc/asset4.jsp"></jsp:include>
	
		
		<section class="intro-single">
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-lg-8">
          <div class="title-single-box ss" style="border-left:5px solid #56C3B8">
            <h1 class="title-single" style="width:350px;">1:1 매칭 전 설문조사</h1>
            <span class="color-text-a">설문조사는 총 12문항으로 진행됩니다.</span>
          </div>
        </div>
      </div>
    </div>
    <div id="josa">
    
      
      <div class="container">
        <div class="row" id="sub1">
          <div class="col-md-12 col-lg-8">
              <h1 class="title-single" style="width:350px;">활동관련</h1>
              <h4 class="color-text-a">당신은 평소 걷는것을 좋아합니까?  <div class="radiobox">네 <input type="radio" value="2.5" class="activityCheck" name="activityCheck">  아니오 <input type="radio" value="0" class="activityCheck" name="activityCheck"checked></div></h4>
              <h4 class="color-text-a">액티비티 (체험,짚라인 등)을 좋아합니까? <div class="radiobox">네 <input type="radio" value="2.5" name="activityCheck2" class="activityCheck">  아니오<input type="radio" value="0" name="activityCheck2"  class="activityCheck"checked></div></h4>
              <h4 class="color-text-a">당신은 평소 운동을 좋아합니까?  <div class="radiobox">네 <input type="radio" value="2.5" name="activityCheck3"  class="activityCheck" >  아니오 <input type="radio" value="0" name="activityCheck3" class="activityCheck" checked></div></h4>
              <h4 class="color-text-a">당신은 실내보다 실외 활동을 더 선호합니까?  <div class="radiobox">네 <input type="radio" value="2.5" name="activityCheck4" class="activityCheck">  아니오 <input type="radio" value="0" name="activityCheck4" class="activityCheck" checked></div></h4>
          </div>
        </div>
      </div>
     
  
      <div class="container">
        <div class="row" id="sub2">
          <div class="col-md-12 col-lg-8" >
              <h1 class="title-single" style="width:350px;">계획성</h1>
              <h4 class="color-text-a">여행을 가기 전 미리 계획을 세우십니까?  <div class="radiobox">네 <input type="radio" value="2.5" name="planCheck" class="planCheck" >  아니오 <input type="radio" value="0" name="planCheck" class="planCheck" checked></div></h4>
              <h4 class="color-text-a">여행계획에 의해 행동합니까?  <div class="radiobox">네 <input type="radio" value="2.5" name="planCheck2" class="planCheck">  아니오 <input type="radio" value="0" name="planCheck2" class="planCheck" checked></div></h4>
              <h4 class="color-text-a">즉흥적인 여행을 선호합니까?  <div class="radiobox">네 <input type="radio" value="2.5" name="planCheck3" class="planCheck">  아니오 <input type="radio" value="0" name="planCheck3" class="planCheck" checked></div></h4>
              <h4 class="color-text-a">계획을 쉽게 변경합니까?  <div class="radiobox">네 <input type="radio" value="2.5" name="planCheck4" class="planCheck">  아니오 <input type="radio" value="0" name="planCheck4" class="planCheck" checked></div></h4>
          </div>
        </div>
      </div>
     

    
      <div class="container">
        <div class="row" id="sub3">
          <div class="col-md-12 col-lg-8">
              <h1 class="title-single" style="width:350px;">먹거리</h1>
              <h4 class="color-text-a">맛집 탐방을 좋아합니까?  <div class="radiobox">네 <input type="radio" value="2.5" name="eatCheck" class="eatCheck">  아니오 <input type="radio" value="0" name="eatCheck" class="eatCheck" checked></div></h4>
              <h4 class="color-text-a">여행계획에 맛집도 선정합니까?  <div class="radiobox">네 <input type="radio" value="2.5" name="eatCheck2" class="eatCheck">  아니오 <input type="radio" value="0" name="eatCheck2" class="eatCheck" checked></div></h4>
              <h4 class="color-text-a">대식가 입니까?  <div class="radiobox">네 <input type="radio" value="2.5" name="eatCheck3" class="eatCheck">  아니오 <input type="radio" value="0" name="eatCheck3" class="eatCheck" checked></div></h4>
              <h4 class="color-text-a">육류를 좋아합니까?  <div class="radiobox">네 <input type="radio" value="2.5" name="eatCheck4" class="eatCheck">  아니오 <input type="radio" value="0" name="eatCheck4" class="eatCheck" checked></div></h4>
          </div>
        </div>
      </div>
    <div style="text-align: center;">
    <input type="button" value="저장하기" id="save" class="btn btn-success ss" style="background-color: #56C3B8;">
  </div>
  </div>
  </section>
		

	<div id="saveData"style="position:fixed; left:680px; top : 320px; border:2px solid #56C3B8; border-radius: 10px;background-color: #fff; width:600px;">
		<div  class="container" style = "text-align : center;">

			<div class="row">
				<div  style="text-align: center; width: 100%;">
					<br>
		
					<h4 class="title-single">데이터가 저장 되었습니다.</h4>
					<h4  id="act"></h4>
					<h4  id="plan"></h4>
					<h4  id="eat"></h4>
				</div>
			</div>
		</div>
		<br>
		<hr>
		<div style="text-align: center;">
			<input style=" border:1px solid white; background-color: #56C3B8;" class="btn btn-success ss"
				type="button" value="다시 하기" id="re">
			<input style=" border:1px solid white; background-color: #56C3B8;" class="btn btn-success"
				type="button" value="매칭 하기" id="save1">
		</div>
	</div>
	
	
	
	<div>
		<div id="chatting" >
  	<div style="border: 1px solid #56C3B8" style="padding-bottom:10px;">
      <div class="container" >
        <div class="row"style=" background-color:white; padding-bottom:15px;">
        <div id="message">맨밑 메세지</div>
          <div style=" width:100%;padding:5px;  background-color:#56C3B8;text-align: center" class="line">
            <b style="color:white; font-size:1.3em; position: relative; left:70px;">실시간 채팅 </b>
            <button class="btn btn-success line"type="button" id="backbtn" style="background-color: #56C3B8; color:white; position:relative; left:-240px;">나가기<span class="ion-ios-redo"></span></button>
            <button class="btn btn-success line"type="button" id="listbtn" style="background-color: #56C3B8; color:white; position:relative; left:135px;">목록<span class="ion-ios-redo"></span></button>
            
          </div>
		<!-- 채팅내용 -->
                <div id="chatlist">
            		
               </div>
               
               <div style="margin-bottom:5px; padding-bottom:20px; height:50px; width:100%; background-color:white;border-bottom:2px solid #ccc;border-top:2px solid #ccc;">
                <!-- 이름 -->
                <h4>이름 :<input style="margin-left:20px; width:130px;" type="text" id="chatName" placeholder="이름" disabled>
                
                </h4>
               
              </div>
              
                <!-- 작성내용 -->
                
                <h4>내용 : </h4>
                
  
              <textarea style="margin-left:20px; width:380px; height:80px;" placeholder="내용을 작성해 주세요!" id="content"></textarea>
              <input class="btn btn-success ss" id="submit"style="padding:10px; margin-left:10px; background-color:#56C3B8"type="button" value="전송" onclick="send();">
                
              
        
                
              </div>
              <div id="listBox" style="width:250px; height:750px; border:1px solid #56C3B8; position:absolute; top:0px; left:300px;">
                <div style=" width:100%;padding:5px;  background-color:#56C3B8;text-align: center" class="line">
                  <b style="color:white; font-size:1.3em; position: relative; left:40px;">채팅 유저 목록 </b>
                  <button class="btn btn-success line"type="button" id="byeSup" style="background-color: #5F9EA0; color:white; position:relative; left:-160px;"><span class="ion-ios-redo"></span></button>
                </div>
                 <div id="userList" style="overflow:auto; background-color:white;height:750px; width:100%;">
                <!-- 사용자목록 -->
             
               </div>
             </div>
      

        </div>
        </div>
      </div>

	<div id="selectLocal" style="width:350px; opacity:0;">


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
	
	</div>
	
	
	
	<c:if test='${not empty seq}'>
	<input type="hidden" value="${seq}" id="seq">
	</c:if>
		
		
		
		
<jsp:include page="/inc/footer.jsp"></jsp:include> <!-- Footer (맨밑 메뉴) -->
<jsp:include page="/inc/asset3.jsp"></jsp:include>

<script src="/bnb/js/header.js"></script>

<script src="js/main.js"></script>
  <script>

  $("#backbtn").click(function(){

      chatting.style.animationName="fadeout";
      chatting.style.left=2500+"px";

    });
  var chatting = document.getElementById("chatting");
  
  $("#save1").click(function(){
		
	   
	      /* $("#chatname").val()=useName.value; */
	      chatting.style.animationName="fadein2";
	      chatting.style.left=1000+"px";
	      
	      $("#chatlist").scrollTop($("#chatlist").prop("scrollHeight"));
	   
	    });
    

    var save = document.getElementById("save");
    var activityCheck = document.getElementsByClassName("activityCheck");
    var planCheck = document.getElementsByClassName("planCheck");
    var eatCheck = document.getElementsByClassName("eatCheck");
    
    
    var actScore = 0;
    var planScore=0;
    var eatScore =0;
   
   

    save.onclick=function(){
    	if($("#seq").val()!=null){
      actScore =0;
      planScore =0;
      eatScore =0;
	
      
      $("#saveData").css("display","block");
      
    	  
    	
      
      
      for(var i=0;i<8;i++){
      if(activityCheck[i].checked){
        actScore += parseFloat(activityCheck[i].value);
        
      }
      if(planCheck[i].checked){
        planScore += parseFloat(planCheck[i].value);
        
      }
      if(eatCheck[i].checked){
        eatScore += parseFloat(eatCheck[i].value);
        
      }
    }

      console.log("actScore : " + actScore);
      console.log("planScore : " +planScore);
      console.log("eatScore : " +eatScore);
         
       
      
     
        

      var act = document.getElementById("act");
	var plan = document.getElementById("plan");
	var eat = document.getElementById("eat");








	act.innerText = "활동성 : " + actScore + "점";
	plan.innerText = "계회성 : " + planScore + "점";
	eat.innerText = "먹성 : " + eatScore + "점";




    	}else{
    		alert("로그인을 해주세요");
    		$(".login").click();
    	}
      	
      }
    
    
    
    
    
    
    
    
    
	var re = document.getElementById("re");
	var save1 = document.getElementById("save1");
	
	re.onclick = function () {				//다시하기 버튼
		 $("#saveData").css("display","none"); 
	
	}

	save1.onclick = function () {			//매칭하기 버튼
		$("#saveData").css("display","none"); 
		
		 $.ajax({
    	
	  	type:"POST",
	  	data:"seq="+$("#seq").val()+"&actScore="+actScore+"&planScore="+planScore+"&eatScore="+eatScore,
	  	url:"/bnb/matching/savedata.do",
	  	error : function(a,b,c){
	  		console.log(a,b,c);
	  	}
	  
  });
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
	}
	
  </script>
</body>
</html>