<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="/bnb/lib/jquery/jquery.min.js"></script>
<script src="/bnb/lib/jquery/jquery-migrate.min.js"></script>
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
	body{
		overflow-x:hidden;
	}
	
    #submit{
      position:relative;
      left:0px;
      top:0px;
    }


    table td{
      border:1px solid black;
    }
    #marker{
      visibility: hidden;
    }
   #tempbox {
    position: relative;  
    animation-duration:.5s;
    
  }
  .line{
    border:1px solid white;
  }
  .part:hover {
    cursor: pointer;
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
    #imgbox {
      width: 250px;
      height: 250px;
      border-radius: 50%;
      background-image: url("/bnb/img/author-2.jpg");
      background-repeat: no-repeat;
      background-size: contain;
      margin: 20px 0px;
    }
    
    .nav-item {
      margin: 0px 100px;
  
    }
  
    #selLocal{
      width:70px;
      height:50px;
      font-size: 1.3em;
    }
  
    #profile {
      margin: 70px 0px 50px 0px;
  
      background-repeat: no-repeat;
      background-size: cover;
      /* <img src="img/mini-testimonial-2.jpg" alt="" class="testimonial-avatar"> */
    }
  
    #selectLocal>input {
      outline: none;
    }
  
    #selectLocal>span {
      margin-top: 20px;
  
    }
  
    #selectLocal {
      visibility: hidden;
      animation-duration: .5s;
    }
  
    #localTitle {
      position: relative;
      left: 0px;
      top: 0px;
      animation-name: fadein;
      animation-duration: 1s;
    }
  
    #busanMap {
      position: relative;
      left: 0px;
      top: 0px;
      animation-name: fadein;
      animation-duration: 1s;
    }
    #listBox{

      display:none;
      animation-name: suprise;
      animation-duration: .5s;
    }
    @keyframes fadein {
      from {
        opacity: 0;
        left: 100px;
      }
  
      to {
        opacity: 1;
        left: 0px;
      }
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
    @keyframes suprise{
      from{
        opacity:0;
      }
      to{
        opacity:1;
      }
    }
   
 #chatlist{
 	overflow:auto;
 	position:relative;
 	background-color:white;
 	height:570px;
 	width:100%;
 }
 #chatlist table{
 	
 }
  
 #chatlist table td,tr{
 	border:0px solid black;
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
 
 
 
 
/* 말풍선 만들기 */
/* .bubble 
	{
	z-index:100;
	position: relative;
	height: auto;
	padding: 10px 10px 10px 10px;
	background: #FFFFFF;
	border-radius: 5px;
	border: #7F7F7F solid 1px;
	position: absolute;
	font-size: 16px;
	text-align: left;
	}
	
	.bubble:after 
	{
	content: '';
	position: absolute;
	border-style: solid;
	border-width: 0 16px 20px 17.5px;
	border-color: #FFFFFF transparent;
	display: block;
	width: 0;
	z-index: 1;
	top: -18.5px; 
	left: 49px; 
	}
	
	.bubble:before 
	{
	content: '';
	position: absolute;
	border-style: solid;
	border-width: 0 16px 20px 17.5px;
	border-color: #7F7F7F transparent;
	display: block;
	width: 0;
	z-index: 0;
	top: -20px;
	left: 49px;
	} */
</style>

<script>




</script>

<jsp:include page="/inc/asset.jsp"></jsp:include> <!-- HTML 라이브러리 -->


</head>


<body>
	
	<jsp:include page="/inc/header.jsp"></jsp:include> <!-- 메뉴바(헤더) -->
	<jsp:include page="/inc/asset4.jsp"></jsp:include>
	
	
	
  

		
  <section class="intro-single" style="margin-top:50px;">
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-lg-8">
          <div class="title-single-box ss" id="localTitle" style="border-left:5px solid #56C3B8">
            <h1 class="title-single">지역별 오픈 채팅</h1>
            <span class="color-text-a">지역을 선택해주세요.</span>
            <select style="margin-left:200px;width:20%; display:inline-block;" id="selLocal" class="custom-select">
              <option class="local" value="seoul" selected>서울</option>
              <option class="local" value="daejeon">대전</option>
              <option class="local" value="daegu">대구</option>
              <option class="local" value="busan">부산</option>
              <option class="local" value="incheon">인천</option>
            </select>
          </div>
          <div id="tempbox">
            <img src="/bnb/img/busan.jpg" width="500px" height="500px" usemap="#busan" id="busanMap">
            <img src="/bnb/img/마커.png" width="40px" height="50px" style="position: absolute;" id="marker">
            </div>
        </div>

        <map id="busan" name="busan">
  
          <area shape="poly" coords="114,53,109,115,200,117,207,12" alt="북구" class='part'>
        
          <area shape="poly" coords="221,8,213,118,314,119,313,14" alt="금정" class='part' >
          <area shape="poly" coords="327,45,327,133,406,132,410,74" alt="부산대"   class='part'>
          <area shape="poly" coords="143,134,138,206,248,207,253,133" alt="부산진구"  class='part'>
          <area shape="poly" coords="327,149,329,212,401,212,407,148" alt="동래연제구"  class='part'>
          <area shape="poly" coords="419,167,413,253,488,248,474,162" alt="기장해운대구" class='part'>
          <area shape="poly" coords="26,193,21,232,27,298,77,293,84,197" alt="강서사상구"  class='part'>
          <area shape="poly" coords="98,222,90,318,150,314,157,222" alt="서구동구" class='part'>
          <area shape="poly" coords="171,221,164,312,241,305,247,222" alt="남포동" class='part'>
          <area shape="poly" coords="261,200,254,304,315,299,314,200" alt="서면" class='part'>
          <area shape="poly" coords="327,225,329,299,396,292,402,225" alt="경성대부경대" class='part'>
          <area shape="poly" coords="89,336,83,405,126,444,147,440,139,330" alt="사하구" class='part'>
          <area shape="poly" coords="151,329,159,434,218,426,211,325" alt="중구영도" class='part'>
          <area shape="poly" coords="226,322,233,416,298,405,293,316" alt="수영-남구" class='part'>
          <area shape="poly" coords="306,314,313,405,389,395,396,305" alt="광안" class='part'>
          <area shape="poly" coords="412,271,404,390,442,386,487,264" alt="해운대" class='part'>
        </map>





        <div id="selectLocal" style="width:350px;">
        
      
        
        <c:forEach items="${list}" var="dto">
        	  <div>${dto.content}</div>
      		  <div>${dto.chatTime}</div>
	  	</c:forEach>

          <h1>프로필 정보 </h1>
          <div id="imgbox"></div>
          
            <div><span >이름 : </span><input type="text" id="useName" style="width:100px; display: inline-block; height:30px;"
            class="form-control form-control-lg form-control-a"> 
         	 <c:if test="${empty seq}">
          <input type="button" value="사진변경" class="btn btn-success" style="background-color:#56C3B8; margin-left:100px;" id="imgSel">
          </c:if>
          </div><hr>
         	 
          <span >취미 : </span><input id="hobby" type="text" style="width:100px; display: inline-block; height:30px;"
            class="form-control form-control-lg form-control-a" placeholder="게임"><hr>
          <span >여행 일정 : </span><input type="text" class="form-control form-control-lg form-control-a">
          <div style="margin-top: 30px; text-align: center;">
            <input id="connect"class="btn btn-success ss" type="button" value="채팅 접속 하기" style="background-color:#56C3B8" placeholder="아무데나가요"></div>
        </div>
      </div>
    </div>

  </section>









<!-- 채팅방 만들기 -->




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




	
	<div id="imgBox" style="opacity:0; width:400px;  background-color : #fff; position : fixed; left:1020px; top: 300px; border:2px solid #56C3B8">
		<div style="width:100%; border-bottom:2px solid #56C3B8"><span style="font-size:1.5em;">사진을 선택해 주세요</span><span style="float:right; margin-right:20px; cursor : pointer; font-size:1.5em;" id="close">X</span></div>
		<div id="imgSel2" style="height: 240px;">
			<img style="width:100px; height:100px; border-radius:50%; cursor:pointer;" src="/bnb/img/author-1.jpg">
			<img style="width:100px; height:100px; border-radius:50%; cursor:pointer;" src="/bnb/img/author-2.jpg">
		</div>
		
		
	</div>

	

	
	<c:if test='${not empty seq}'>
	<input type="hidden" value="${seq}" id="seq">
	</c:if>
	
	
		
	
			
		
	<jsp:include page="/inc/footer.jsp"></jsp:include> <!-- Footer (맨밑 메뉴) -->
	<jsp:include page="/inc/asset3.jsp"></jsp:include> <!-- HTML 라이브러리 -->
	
	<script src="/bnb/js/header.js"></script>

<script>
	
	
	
	
	var name1 = "";
	var hobby = "";
	var pic ="";
	
	if($("#seq").val()!=null){
	
		$.ajax({
			
			type:"POST",
			data:"seq="+$("#seq").val(),
			dataType:"JSON",
			url:"/bnb/matching/profile.do",
			success: function(result){
				
				name1 = result.name;
				hobby = result.hobby;
				pic = result.pic;
				
				$("#useName").val(result.name);
				$("#hobby").val(result.hobby);
				
				$("#imgbox").css({
					"background":"url("+result.pic+")",
					"background-repeat" : "no-repeat",
					"background-size" : "contain"
				});
			},
			error: function(a,b,c){
				console.log(a,b,c);
			}
			
		
		})
		
		
	
	}

	var checkLocal = 0;
    var selectLocal = document.getElementsByClassName("local");
    var selocal = document.getElementById("selLocal");
    var busanmap = document.getElementById("busanMap");
    var part = document.getElementsByClassName("part");
    var box = document.getElementById("selectLocal");
    var connect = document.getElementById("connect");
    var chatting =document.getElementById("chatting");
    var backbtn = document.getElementById("backbtn");
    var imgbox = document.getElementById("imgbox");
    var chatname = document.getElementById("chatName");		//채팅방 내의 이름
    var useName = document.getElementById("useName");		//채팅방 접속 전 이름
    var byeSup = document.getElementById("byeSup");
    var busansu = ["114,53,109,115,200,117,207,12",
      "221,8,213,118,314,119,313,14",
      "327,45,327,133,406,132,410,74",
      "143,134,138,206,248,207,253,133",
      "327,149,329,212,401,212,407,148",
      "419,167,413,253,488,248,474,162",
      "26,193,21,232,27,298,77,293,84,197",
      "98,222,90,318,150,314,157,222",
      "171,221,164,312,241,305,247,222",
      "261,200,254,304,315,299,314,200",
      "327,225,329,299,396,292,402,225",
      "89,336,83,405,126,444,147,440,139,330",
      "151,329,159,434,218,426,211,325",
      "226,322,233,416,298,405,293,316",
      "306,314,313,405,389,395,396,305",
      "412,271,404,390,442,386,487,264"];
    var area = document.getElementsByClassName("part");
    var tempbox = document.getElementById("tempbox");
    var listbtn = document.getElementById("listbtn");
    var listBox = document.getElementById("listBox");
    var content = document.getElementById("content");
 	var imgSrc ="/bnb/img/author-2.jpg";
    // document.body.onmouseover=function(evt){

    //   console.log("x : "+evt.clientX+"y: "+evt.clientY);

    // }

  
   
    
    
	chatname.value=useName.value;
	
	
	
	$("#imgSel2").children().first().click(function(){
		
		$("#imgbox").css({
			"background":"url(/bnb/img/author-1.jpg)",
			"background-repeat" : "no-repeat",
			"background-size" : "contain"
		});
		$("#imgBox").animate({
			opacity:0
		},1000);	
		imgSrc = "/bnb/img/author-1.jpg";
		
		
		
		
		imgChange();
	});
	
	$("#imgSel2").children().last().click(function(){
		

		$("#imgbox").css({
			"background":"url(/bnb/img/author-2.jpg)",
			"background-repeat" : "no-repeat",
			"background-size" : "contain"
		});
		$("#imgBox").animate({
			opacity:0
		},1000);
		imgSrc = "/bnb/img/author-2.jpg";
		imgChange();
	});
	
	
	function imgChange(){
		
		$.ajax({
			
			type:"POST",
			data:"imgSrc="+imgSrc+"&useName="+$("#useName").val(),
			url:"/bnb/matching/changeimg.do",
			error:function(a,b,c){
				console.log(a,b,c);
			}
			
		});
		
	}
	
	$("#close").click(function(){
		
		$("#imgBox").animate({
			opacity:0
		},1000);
	})
	
	$("#imgSel").click(function(){
		
		$("#imgBox").animate({
			opacity:1
		},1000);
	});
	

	
	content.onkeydown=function(evt){
		
		if(evt.keyCode==13){
			send();
			evt.preventDefault();
			
		}
		
	};
	
	
	
	
	var down=0;
	var check=0;
	
	
	function getHeight() {
		var temp = 0;

		$("#chatlist").children().each(function(index, item) {
			temp += $(item).outerHeight(true);
		});

		return temp;
	}	
	
	
$("#chatlist").scroll(function(){
		
	console.log(getHeight());
	console.log($("#chatlist").scrollTop()+ $("#chatlist").height()+$("#chatlist").children().last().height());
		if(getHeight()==($("#chatlist").scrollTop()+ $("#chatlist").height()+$("#chatlist").children().last().height())){
			
			$("#message").animate({
				opacity:0
			},1000);
			
		}
		
	});
	
	
	//문제
	function ajaxstart(){
		$.ajax({
			type:"POST",
			url:"/bnb/matching/chatlist.do",
			dataType:"xml",
			data:"checkLocal="+checkLocal,
			error:function(){
				alert('통신실패!!');
			},
			success : function(result){
/* 				if($("#chatlist").scrollTop()!=($("#chatlist").children().last().height()+$("#chatlist").scrollTop()+$("#chatlist").height())){
					
				} */
				down=0;
				var name="";
				var content="";
				var chattime="";
				var chatImg="";
				$("#chatlist").html("");
				
				$(result).find("item").each(function(index,item){
				
				name= $(item).find("name").text();
				chatImg= $(item).find("imgs").text();
				content= $(item).find("content").text();
				chattime= $(item).find("chattime").text();
				//같은 사람이 맞는지 체크
				if($("#chatName").val()!=name){
				
				
					
				var chatList = "<div style='width:100%;'><div><image style=' border:2px solid #56C3B8; border-radius:50%; width:45px;height:45px; margin-right:10px;' src='"+chatImg+"'>"+name+"</div><div style='border:2px solid #56C3B8; margin-left:50px; display:inline-block; width:180px; border-radius:5px;'>"+content+"</div><span> "+chattime+"</span></div><br>";
				
				
				
				
				}else{
				var chatList = "<div style='text-align:right;'><span>"+chattime+"   </span><div style=' border:2px solid #56C3B8; margin-right:15px; display:inline-block; width:180px; border-radius:5px;'>"+content+"</div></div><br>";	
				}
				
				//넣어놓는다
				$("#chatlist").append(chatList);
				//채팅 갯수 체크
				down++;
				});
				
				
				//채팅 갯수가 예전 수보다 많아졌을시
					if(down>check){
						
						//자신것이라면 밑으로 내려버리기
						if($("#chatName").val()==name){
							
						$("#chatlist").scrollTop($("#chatlist").prop("scrollHeight"));
						
					
						
						//자신것이 아니면
						}else{
							
							
							
						//자신 X 맨밑일 경우
							if(getHeight()==($("#chatlist").scrollTop()+ $("#chatlist").height()+$("#chatlist").children().last().height())){
								
								$("#chatlist").scrollTop($("#chatlist").prop("scrollHeight"));
								
						//자신 X 맨밑이 아닐경우
							}else{
								
								$("#message").css("opacity",1);
								$("#message").text(name+" : "+content);
								
							}
							
					
						}
				
					}
					/* $("#chatlist").scrollTop */
					
				//갯수 저장
				check=down;
				
				
				
				
					
			}
		});
		
		
		
		  
		}
		
	
	
		
		setInterval(ajaxstart, 1000);
	
		$("#message").click(function(){
			
			$("#chatlist").scrollTop($("#chatlist").prop("scrollHeight"));
			
			$("#message").animate({
				
				opacity:0
				
			},1000);
			
		});
	
	/* 	
		$("#chatlist").scroll(function(){
			
			if(getHeight()==($("#chatlist").scrollTop()+ $("#chatlist").height()+$("#chatlist").children().last().height())){
				
				$("#message").animate({
					
					"opaticy":0
					
				},1000);
			}
			
		}); */
		
	function send(){
		
		
			
			
		if($("#seq").val()!=null){
			imgSrc = pic;
		}	
				
		
		
		$.ajax({
			
			type:"POST",
			url:"/bnb/matching/chatSend.do",
			data:"content="+$("#content").val()+"&name="+$("#chatName").val()+"&checkLocal="+checkLocal+"&imgSrc="+imgSrc,
			dataType:"text",
			error : function(){
				alert("전송 실패");
			}
			
			
			
		});
		
		$("#content").val("");
		
		
		
	};
    
    byeSup.onclick=function(){
      
      listBox.style.display='none';
    }


    $("#content").keydown(function (key) {
 
        if(key.keyCode == 13){//키가 13이면 실행 (엔터는 13)
           
        }
 
    });

    selocal.onchange = function () {
      

      


      $("#marker").css({
        visibility: "hidden"
      })

      if (selocal.selectedIndex == 0) {
        busanmap.src = "/bnb/img/seoul.jpg";
        for (var i = 0; i < part.length; i++) {
          busanmap.style.animationName="";
          part[i].coords = "";
          busanmap.style.animationName='fadein';
        }
      }
      else if (selocal.selectedIndex == 1) {
        busanmap.src = "/bnb/img/daejeon.jpg";
        for (var i = 0; i < part.length; i++) {
          part[i].coords = "";
          
        }
      }
      else if (selocal.selectedIndex == 2) {
        busanmap.src = "/bnb/img/daegu.jpg";
        for (var i = 0; i < part.length; i++) {
          part[i].coords = "";
          
        }
      }
      else if (selocal.selectedIndex == 3) {
        busanmap.src = "/bnb/img/busan.jpg";
        for (var i = 0; i < part.length; i++) {
          part[i].coords = busansu[i];
          
        }

      }
      else if (selocal.selectedIndex == 4) {
        busanmap.src = "/bnb/img/daegu.jpg";
        for (var i = 0; i < part.length; i++) {
          part[i].coords = busansu[i];
          
        }

      }
    }

    // busanmap.onmousedown = function () {

    //   box.style.animationName = 'fadein';
    //   box.style.visibility = 'visible';
    // }

    $(".part").mousedown(function(evt){
      box.style.animationName = 'fadein';
      box.style.visibility = 'visible';
    });


    
    
    //채팅 유저 목록 버튼
    listbtn.onclick=function(){
    	
      listBox.style.display ='block';
      
      function list(){
      $.ajax({
			type:"POST",
			url:"/bnb/matching/chatuser.do",
			data:"name="+$("#chatName").val()+"&checkLocal="+checkLocal,
			dataType:"xml",
   	 success:function(result){
   		 
   		
   		 
   		 	$("#userList").html("");
   		 
				$(result).find("item").each(function(index,item){
					
					
					var name= $(item).find("name").text();
					
					var str = "<div style='width:100%;'>"+name+"</div><hr>";
					
					$("#userList").append(str);
				});
			},
			error:function(a,b,c){
				console.log(a,b,c);
				alert("실패!");
				
			}
			
			
		});
      };
      setInterval(list,1000);
    };

    connect.onclick=function(){
		
    if((useName.value)==null || (useName.value)==""){
    	alert('사용하실 이름을 입력하세요');
    	
    }else{
      chatname.value=useName.value;
      chatting.style.animationName="fadein2";
      chatting.style.left=1000+"px";
      $("#connect").css("opacity",0);
      $("#chatlist").scrollTop($("#chatlist").prop("scrollHeight"));
    }
    }

    
    
    
    
    
    function test (){
    	 $.ajax({
       	  type:"POST",
       	  url:"/bnb/matching/chatout.do",
       	  data:"name="+$("#chatName").val(),
       	  error : function(a,b,c){
       		  console.log(a,b,c);
       		  alert("안됌");
       	  }
       	  
         });
    };
    
    /* 채팅방 나기기 채팅유저 목록 제어 */
    backbtn.onclick=function(){

      chatting.style.animationName="fadeout";
      chatting.style.left=2500+"px";
      
      
      
     

    };

    $(".part").click(function(evt){
          
  

          //X,Y좌표 최대 최소값 구해서 사이이면 중심점 좌표
          console.log("X: "+evt.offsetX+ "Y: "+evt.offsetY)
          
          if(evt.offsetX>=-634 && evt.offsetX<=-538 && evt.offsetY>=135 && evt.offsetY<=240){
            // alert("북구");
            
            var top = 30;
            $("#marker").css({
              left: "130px",
              top: top+"px",
              visibility: "visible"
            }) 
            up(top);
            //down(top);
            //$(evt).
            // (466,-65) (463,-5) (547,-5) (557,-106)
            checkLocal = 1;
          } else if(evt.offsetX>=-531 && evt.offsetX<=-432 && evt.offsetY>=135 && evt.offsetY<=242){
              // alert("금정");
              var top = 20;
              $("#marker").css({
              left: "240px",
              top: top+"px",
              visibility: "visible"
            	 
            }) 
              up(top);

              checkLocal = 2;


              //down(top);
            //(573,-109) (565,-5) (663,-3) (663,-104)
          } 
          else if(evt.offsetX>=-418 && evt.offsetX<=-336 && evt.offsetY>=170 && evt.offsetY<=256){
              // alert("부산대");
              var top = 50;
              $("#marker").css({
              left: "340px",
              top: top+"px",
              visibility: "visible"
            	  
            }) 
              up(top);
              //down(top);
            //(678,-73) (678,10) (755,11) (760,-46)
              checkLocal = 3;
          } else if(evt.offsetX>=-602 && evt.offsetX<=-493 && evt.offsetY>=258 && evt.offsetY<=330){
              // alert("부산진구");
              var top = 120
              $("#marker").css({
              left: "175px",
              top: top+"px",
              visibility: "visible"
            	
            }) 
              up(top);
              //down(top);
            // (494,15) (490,86) (598,85) (602,16)
              checkLocal = 4;
          } else if(evt.offsetX>=-418 && evt.offsetX<=-339 && evt.offsetY>=273 && evt.offsetY<=336){
              // alert("동래연제구");
              var top = 135;
              $("#marker").css({
              left: "342px",
              top: top+"px",
              visibility: "visible"
            	  
            }) 
              up(top);
              //down(top);
            // (679,30) (680,90) (752,92) (754,30)
              checkLocal = 5;
          } else if(evt.offsetX>=-331 && evt.offsetX<=-258 && evt.offsetY>=287 && evt.offsetY<=376){
              // alert("기장해운대구");
              var top = 160;
              $("#marker").css({
              left: "430px",
              top: top+"px",
              visibility: "visible"
            	 
            }) 
              up(top);
              //down(top);
            // (770,49) (765,131) (836,127) (823,43)
              checkLocal = 6;
          } else if(evt.offsetX>=-723 && evt.offsetX<=-665 && evt.offsetY>=318 && evt.offsetY<=419){
              // alert("강서사상구");
              var top = 180;
              $("#marker").css({
              left: "30px",
              top: top+"px",
              visibility: "visible"
            	  
            }) 
              up(top);
              //down(top);
            // (378,75) (378,175) (427,171) (434,78)
              checkLocal = 7;
          } else if(evt.offsetX>=-651 && evt.offsetX<=-592 && evt.offsetY>=346 && evt.offsetY<=441){
              // alert("서구동구");
              var top = 200;
              $("#marker").css({
              left: "105px",
              top: top+"px",
              visibility: "visible"
            }) 
              up(top);
              //down(top);
            // (449,102) (442,195) (500,191) (506,104)
              checkLocal = 8;
          } else if(evt.offsetX>=-574 && evt.offsetX<=-500 && evt.offsetY>=346 && evt.offsetY<=435){
              // alert("남포동");
              var top = 210;
              $("#marker").css({
              left: "185px",
              top: top+"px",
              visibility: "visible"
            }) 
              up(top);
              //down(top);
            //(522,102) (516,189) (590,185) (597,103)
              checkLocal = 9;
          } else if(evt.offsetX>=-490 && evt.offsetX<=-434 && evt.offsetY>=324 && evt.offsetY<=422){
              // alert("서면");
              var top = 200;
              $("#marker").css({
              left: "265px",
              top: top+"px",
              visibility: "visible"
            }) 
              up(top);
              //down(top);
            // (613,83) (606,180) (664,178) (663,83)
              checkLocal = 10;
          } else if(evt.offsetX>=-416 && evt.offsetX<=-343 && evt.offsetY>=349 && evt.offsetY<=422){
              // alert("경성대부경대");
              var top = 210;
              $("#marker").css({
              left: "340px",
              top: top+"px",
              visibility: "visible"
            }) 
              up(top);
              //down(top);
            // (679,106) (681,173) (747,169) (750, 105)
              checkLocal = 11;
          } else if(evt.offsetX>=-661 && evt.offsetX<=-603 && evt.offsetY>=459 && evt.offsetY<=566){
              // alert("사하구");
              var top = 330;
              $("#marker").css({
              left: "90px",
              top: top+"px",
              visibility: "visible"
            }) 
              up(top);
              //down(top);
            // (441,216) (434,285) (474,320) (496,320) (488,213)
              checkLocal = 12;
          } else if(evt.offsetX>=-593 && evt.offsetX<=-528 && evt.offsetY>=450 && evt.offsetY<=557){
              // alert("중구영도");
              var top = 325
              $("#marker").css({
              left: "163px",
              top: top+"px",
              visibility: "visible"
            }) 
              up(top);
              //down(top);
            // (505,210) (511,311) (567,306) (560,206)
              checkLocal = 13;
          } else if(evt.offsetX>=-518 && evt.offsetX<=-463 && evt.offsetY>=441 && evt.offsetY<=539){
              // alert("수영-남구");
              var top = 318;
              $("#marker").css({
              left: "240px",
              top: top+"px",
              visibility: "visible"
            }) 
              up(top);
              //down(top);
            //(586,296) (649,286) (644,198) (578,203)
              checkLocal = 14;
          } else if(evt.offsetX>=-438 && evt.offsetX<=-350 && evt.offsetY>=430 && evt.offsetY<=519){
              // alert("광안센텀");
              var top = 305
              $("#marker").css({
              left: "330px",
              top: top+"px",
              visibility: "visible"
            }) 
              up(top);
              //down(top);
            // (659,196) (664,280) (738,273) (745,186)
              checkLocal = 15;
          } else if(evt.offsetX>=-340 && evt.offsetX<=-261 && evt.offsetY>=389 && evt.offsetY<=513){
              // alert("해운대");
              var top = 290
              $("#marker").css({
                left: "420px",
                top: top+"px",
              visibility: "visible"
              }) 
              up(top);
              //down(top);
              // (764,153) (757,268) (792,264) (837,145)
              checkLocal = 16;
          }

            // (907,323)(814,364)(809,426)(898,427)

          })


          function up(top) {
              $("#marker").stop();
              $("#marker").animate({
                top: "-=10"
              }, 500).animate({
                top: "+=10"
              }, 500).animate({
                top: "-=10"
              }, 500).animate({
                top: "+=10"
              }, 500).animate({
                top: "-=10"
              }, 500).animate({
                top: "+=10"
              }, 500).animate({
                top: "-=10"
              }, 500).animate({
                top: "+=10"
              }, 500);
          };

     
         
  </script>	
	

</body>
</html>