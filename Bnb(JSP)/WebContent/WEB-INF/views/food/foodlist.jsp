<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- JSTL  -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">




<head>
  <meta charset="utf-8">

<jsp:include page="/inc/asset.jsp"></jsp:include> <!-- HTML 라이브러리 -->
<%-- <jsp:include page="/inc/asset2.jsp"></jsp:include>  --%><!-- JavaScript Libraries -->
<jsp:include page="/inc/asset4.jsp"></jsp:include>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" >

<script src="/bnb/js/string.js"></script>
<!-- jQuery -->
<!-- <script src="js/jquery-1.12.4.js"></script>  -->
	
  
  



  

 


  <!-- Font -->
  <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">



  

  <style>
  	.space{
  		font-size: 14px;
  	}
	.vwi{
		border: 0px solid black;
		float: right;
		padding-top: 2px;
		
		
	}
	.vwi:after{
		content: "";
		clear: both;
		display: block;
	}
	



  .ca{
  	z-index: 3;
 	position: absolute;
 	background-color: window;
 	top: 0px;
 	
  	border: 1px solid #AAA;
  	height: 40px;
  	overflow: hidden;
  	padding: 0px 10px;
  	margin: 0px;
  	
  	
  	
  }
  
  
  .ca2{

  	z-index: 2;
  	background-color: window;
 	position: absolute;
	top: 100px;
  	border: 1px solid #AAA;
  	height: 40px;
  	overflow: hidden;
  	padding: 0px 10px;
  	margin: 0px;

  }
  .ca3{
  	z-index: 1;
  	position: absolute;
 	top: 160px;
 	background-color: window;
  	border: 1px solid #AAA;
  	height: 40px;
  	overflow: hidden;
  	padding: 0px 10px;
  	margin: 0px;
  
  
  }
  .ca ul, .ca2 ul, .ca3 ul {
  	padding: 0px;
  	
  }
  
  .ca ul li, .ca2 ul li, .ca3 ul li {
  	margin-bottom: 4px;
  
  	
  }
  

  
	
  
  .nanumsquare { font-family: 'NanumSquare', sans-serif !important; }
   	
  

  @font-face { font-family: 'Cafe24Simplehae'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/Cafe24Simplehae.woff') format('woff'); font-weight: normal; font-style: normal; }




  body {
    font-family: 'Cafe24Simplehae';
    font-weight: bold;
    color: #555555;
  }


 .card-blog .card-body {
  position: relative;


}

.card-blog .card-category-box {
  position: absolute;
  text-align: center;
  top: -16px;
  left: 15px;
  right: 15px;
  line-height: 25px;
  overflow: hidden;
}

.card-blog .card-category {

  display: inline-block;
  color: #fff;
  padding: 5px 15px 5px;
  overflow: hidden;
  background-color: #56C3B8;
  border-radius: 4px;
 
}

.card-blog .card-category .category {
  color: #fff;
  display: inline-block;
  text-transform: uppercase;
  font-size: .7rem;
  letter-spacing: .1px;
  margin-bottom: 0;
  font-size: 1.3em;

}

.card-blog .card-title {
  
  font-size: 1.3rem;
  margin-top: .6rem;
  border: 0px solid blue;
 
}

.card-blog .card-description {
  cursor: text;
  color: #4e4e4e;
  
}

.card-blog{
  display: inline-block;
  height: 515px;
}

.card-blog .post-date {
  color: #4e4e4e;
  display: inline-block;
  
}

.card-description{
	height: 50px;
}


.write-date{

  text-align: right;


}


.col-md-4{

  border: 0px solid black;
  margin-bottom: 50px;
 
}

.card{
  cursor: pointer;
  border: 1px solid black;
  overflow: hidden;
  font-family: 'NanumSquare';
  
}



.star-point{
  
  float: right;
  color: #B02525;
  font-weight: bold;
  
}
.star-point:hover{
  text-decoration: underline;
  
}

.star-point::after{
 
  content: "";
  display: block;
  clear: both;
  
}



.starRev{
  
  display: none;
  position: absolute;
  top: 0px;
  width: 346px;
  height: 346px;
  text-align: center;
  padding-top: 120px;
  border: 0px solid springgreen;
  pointer-events: none;
  padding-left: 6%;
  
  
  
  
}










.starR1{
    display: inline-block;
    background: url('/bnb/img/star.png');
    background-repeat: no-repeat;

    width: 42px;
    height: 40px;
    margin-right: 3%;
    text-indent: -9999px;
    cursor: pointer;
    border: 0px solid olivedrab;

}




.starR2{
    display: inline-block;
    visibility: hidden;
    position: relative;
    top: -64px;

    background: url('/bnb/img/star.png');
    background-position: 0px 40px;
    /* background-repeat: no-repeat; */
	
    width: 42px;
    height: 40px;
    margin-right: 3%;
    text-indent: -9999px;
    cursor: pointer;
    
    border: 0px solid blue;
}






.point{
  position: relative;
  top: -110px;
  font-size: 1.8em;
  margin-top: 20%;
  color: #B02525;
  font-weight: bold;
  border: 0px solid navy;
  


  
}

.man{
  color: black;

}


.star-half{
  
  left: 0px;
  height: 0px;
  width: 21px;
  visibility: visible;
  animation-name: key1; 
  animation-duration: .5s;
  animation-fill-mode: forwards;
 


}


.star-full{
  visibility: visible;
  height: 0px;
  animation-name: key1; 
  animation-duration: .5s;
  animation-fill-mode: forwards;
  
  

}
.star-position{

	display: inline-block;

    position: relative;
    
    top: -70px;
	
	width: 21px;
	height: 40px;
	border:0px solid black;

}




@keyframes key1{
    /* 어떤 속성 + 어떤 변화값 = 움직임 */
    from{ /* 변화 초기값 */
        height: 0px;
        
    }
    to{ /* 변화 최종값 */
        height: 40px;
    }
}




hr{
  border: 0px solid black;
}


.area{
  
  width: 180px;
  border: 0px solid black;
  position: absolute;
  top: 460px;
  left: 160px;
  font-size: 1.5em;
  
  
}


.area div{
  cursor: pointer;
  margin-bottom: 10px
}



.area2{
  border: 0px solid violet;
  position: absolute;
  top: 460px;
  left: 1600px;
  font-size: 1.5em;
  
  
}


.area2 div{
  cursor: pointer;
  margin-bottom: 10px;
}

.location{
  margin-top: -20px;
}
.able{
	
	color: tomato;
}
.review{
	font-size: 0.8em;
	
}
#loading{
	text-align: center;
	display: none;

}







  
  
  </style>
  <script>
  
  
//링크걸기
  var object;
  var cnt;
  
  
  function sel() {
	  $(".card-blog").click(function() {
	    	
	    	seq=$(this).children().last().val()
			
	        if (event.srcElement.className != "card-description") {
	        	
	        	$.ajax({
	      			type:"POST",
	      			url: "/bnb/food/viewcount.do",
	      			data: "seq="+seq, 
	      			error:function(a,b,c){
	      				console.log(a,b,c);
	      			}
	      		});
	         
	        	
	        
	          location.href = "/bnb/food/foodselect.do?seq="+seq;
	        }

	      });
	
  }
  
  

  var index;
  var timer=0;
  timer=0;
  
  
  
  function pointover() {
	  $(".card-img").mouseover(function() {

	        // alert($(this).parent().parent().parent().index());
	        index=$(this).parent().parent().parent().index() * 3 - (3 -$(this).parent().parent().index() ) ;
	        // console.log(index);

	        // console.log($(this).parent().children()[1] );
	        // 꺼내는 순간 제이쿼리가 아님
	        //console.log($($(this).parent().children()[1]).children()[6] );
	        
	        
	        cnt=5;
	        var end=6;
	        object = $($($(this).parent().children()[1]).children());
	        var star =$(object[11]).text();
	        star=star.substring(0, 4);
	        var flag;

	        console.log(star);
	        if(star>=5){
	        	star=5;
	        	flag=1;
	        	 end=10;
	        } else if(star>=4.5){
	        	star=4.5;
	        	flag=2;
	        	end=10;
	        } else if(star>=4.0){
	        	star=4.0;
	        	flag=1;
	        	end=9;
	        } else if(star>=3.5){
	        	star=3.5;
	        	flag=2;
	        	end=9;
	        } else if(star>=3.0){
	        	star=3.0;
	        	flag=1;
	        	end=8;
	        } else if(star>=2.5){
	        	star=2.5;
	        	flag=2;
	        	end=8;
	        } else if(star>=2.0){
	        	star=2.0;
	        	flag=1;
	        	end=7;
	        } else if(star>=1.5){
	        	star=1.5;
	        	flag=2;
	        	end=7;
	        } else if(star>=1.0){
	        	star=1.0;
	        	flag=1;
	        	end=6;
	        } else if(star>=0.5){
	        	star=0.5;
	        	flag=2;
	        	end=6;
	        } else if(star>=0.0){
	        	star=0.0;
	        	flag=3;
	        } else{
	        	console.log("잘못된 값");
	        }
	        
	     	console.log(end);
	     	console.log(flag);
	        
	        if(flag==1){
	          //별한개

	          

	          //console.log("한개");

	          // var object = $($($(this).parent().children()[1]).children()[6])
	          // object.addClass("star-full");
	          // object=$($($(this).parent().children()[1]).children()[7]);

	          
	  
	      
	          timer = setInterval(function(){
	            
	            cnt++;
	            $(object[cnt]).addClass("star-full");
	            if(cnt==end){
	              cnt=6;
	              clearInterval(timer);
	            }
	         
	          },100);

	          
	       
	          

	  
	          // $($(this).parent().children()[1]).children()[8].style.width="21px";
	          
	        
	      
	      
	        }else if(flag==2){
	          //별반개
	          
	          //console.log("반개");
	  
	          
	          
	          timer=0;
	          timer = setInterval(function(){
	            
	      
	            cnt++;
	            $(object[cnt]).addClass("star-full");
	            if(cnt==end){
	              
	              //$(object[cnt]).append("<div style='width: 21px; height:40px; border: 1px solid black; transform: translate(21px,0px);'></div>");
	              $("<div class='star-position'></div>").insertAfter($(object[cnt]));
	              $(object[cnt]).addClass("star-half");
	                  
	              
	              clearInterval(timer);
	            }
	         
	          },100);
	  
	          // $($($(this).parent().children()[1]).children()[9]).addClass("star-full");
	        
	      
	        } else if(flag==3){
	       
	        	//별 0개 아무것도 하지 않는다
	        }


	        
	        
	        
	        
	   
	        // var object;
	        // object=event.srcElement.parentNode;
	        //event.srcElement.children[index];
	        event.srcElement.style.opacity="0.1";
	        
	        // for (var i=0; i<$(".card-img").length; i++){
	          
	          // console.log(object);
	          // console.log($(".card-img")[i]);
	          

	          //자료형이 달라서???  X 자식을 가져오고 있었음
	        //   if(object == $(".card-img")[i] ){
	        //     console.log(i);
	        //     index=i;
	        //   }
	        
	        // }
	        
	        
	        // console.log($(".starRev")[index]);
	        // $(".starRev")[index].style.display="block";
	        $(".starRev")[index].style.display="block";    

	      });
	
  }
  
  
  
  function pointout() {
	  $(".card-img").mouseout(function() {

	        event.srcElement.style.opacity="1";


	        $(".starRev")[index].style.display="none";
	        $($($(this).parent().children()[1]).children()[6]).removeClass("star-full");
	        $($($(this).parent().children()[1]).children()[7]).removeClass("star-full");
	        $($($(this).parent().children()[1]).children()[8]).removeClass("star-full");
	        $($($(this).parent().children()[1]).children()[9]).removeClass("star-full");
	        $($($(this).parent().children()[1]).children()[10]).removeClass("star-full");
	        
			
	        //추가div 삭제
			var temp = $(".star-position");
	      	temp.remove();

	    	
	        
	        $($($(this).parent().children()[1]).children()[6]).removeClass("star-half");
	        $($($(this).parent().children()[1]).children()[7]).removeClass("star-half");
	        $($($(this).parent().children()[1]).children()[8]).removeClass("star-half");
	        $($($(this).parent().children()[1]).children()[9]).removeClass("star-half");
	        $($($(this).parent().children()[1]).children()[10]).removeClass("star-half");
	        cnt=5;
	        clearInterval(timer);
	       
	      });
  }

 
  
  
    $(document).ready(function() {

    	
      
   	  
      if('${search}'=='views'){
    	  $("#search1").addClass("able");
      } else if('${search}'=='starscore'){
    	  $("#search2").addClass("able");
      } else if('${search}'=='review'){
    	  $("#search3").addClass("able");
      }
    
      
      
      
      


      $(window).scroll(function(){
          var posX = $(document).scrollTop();
          console.log(posX);

         
          if(posX>300){
            $(".area").css("top",posX+160+"px");
            $(".area2").css("top",posX+160+"px");
            // $(".area").animate({
            //   position:"fixed",
            //   top: "900px"
              
            // },100);
          
          }else{
            $(".area").css("top","460px");
            $(".area2").css("top","460px");

          }
       
      });
      
      
      
      
    var begin=0;

  	$("#btnmore").click(more);


  	function more() {
  		

  		
  		
  		//Ajax 사용 + 그 다음 5개의 게시물 가져오기 + 화면에 누적 출력
  		begin+=9;
  		
  		var param = "&area="+'${area}'+"&area2="+'${area}'+"&category="+'${category}'+"&search="+'${search}';
  		$.ajax({
  			type:"POST",
  			
  			url: "/bnb/more.do",
  			data: "begin=" + begin + param, 
  			dataType:"xml",
  			//--------------------------요청
  			success:function(result){
  				//응답 > 화면 출력 작업
  				
  				if($(result).find("item").length==0){
  					alert("더 이상 가져올 게시물이 없습니다.");
  					$("#loading").hide();
  					
  					$(document).scrollTop( $(document).height()-1050 );
  					
  				}
  				
  				
  				var newPanel="";
  				
  				$(result).find("item").each(function(index, item) {
  					
  					var img =$(item).find("img").text();
  					var point =$(item).find("point").text();
  					var views =$(item).find("views").text();
  					var subject =$(item).find("subject").text();
  					var review =$(item).find("review").text();
  					var content =$(item).find("content").text();
  					var date =$(item).find("date").text();
  					var seq =$(item).find("seq").text();
  					
  					
  					
  					
  					var str="";
  						
  					if ((index + 1) % 3 == 1) {
  						str = String.format("<div class='row'><div class='col-md-4'><div class='card card-blog'><div class='card-img'><a href='#'><img src='/bnb/{0}' alt='' class='img-fluid'></a></div><div class='starRev'><div class='starR1'></div><div class='starR1'></div><div class='starR1'></div><div class='starR1'></div><div class='starR1'></div><hr><div class='starR2'></div><div class='starR2'></div><div class='starR2'></div><div class='starR2'></div><div class='starR2'></div><p class='point'>{1}<span class='man'>/5.0 </span> </p></div><div class='card-body'><div class='card-category-box'><div class='card-category'><h6 class='category'>{2}</h6></div></div><h3 class='card-title'><a href='#'>{3} <span class='review'>({4})</span><span class='star-point'>{5}</span> </a></h3><p class='card-description'> {6}</p><div class='write-date'><span class='date'>{7}</span></div></div><input type='hidden' value='{8}'></div></div>",
  								img,
  								point,
  								views,
  								subject,
  								review,
  								point,
  								content,
  								date,
  								seq
  								);
  						
  					} else{
  						str = String.format("<div class='col-md-4'><div class='card card-blog'><div class='card-img'><a href='#'><img src='/bnb/{0}' alt='' class='img-fluid'></a></div><div class='starRev'><div class='starR1'></div><div class='starR1'></div><div class='starR1'></div><div class='starR1'></div><div class='starR1'></div><hr><div class='starR2'></div><div class='starR2'></div><div class='starR2'></div><div class='starR2'></div><div class='starR2'></div><p class='point'>{1}<span class='man'>/5.0 </span> </p></div><div class='card-body'><div class='card-category-box'><div class='card-category'><h6 class='category'>{2}</h6></div></div><h3 class='card-title'><a href='#'>{3} <span class='review'>({4})</span><span class='star-point'>{5}</span> </a></h3><p class='card-description'> {6}</p><div class='write-date'><span class='date'>{7}</span></div></div><input type='hidden' value='{8}'></div></div>",
  								img,
  								point,
  								views,
  								subject,
  								review,
  								point,
  								content,
  								date,
  								seq
  								);
  					}
  					
  					
  					
  					
  					if( (index+1)%3 ==0 || (index+1)== $(result).find("item").length ){
  						str += "</div>";
  					}
  			
  					newPanel += str;
  			
  					
  				});
  				
  				$("#parent").append(newPanel);
  				
  				//이벤트 회수
  				$(".card-img").off("mouseout");
				$(".card-img").off("mouseover");
				$(".card-blog").off("click");
				
			
				pointout();
				pointover();
				sel();
	  			$("#loading").hide();
			
				
  			},
  			error:function(a,b,c){
  				console.log(a,b,c);
  			}
  		});
  		
  	}
  	
  	
  //스크롤이 화면 끝에 닿았을 때
  $(window).scroll(function() {
		
		if($(document).height() <= $(window).scrollTop() + $(window).height()){
			setTimeout(more,500);
			$("#loading").show();
			//alert();
			
		}
		
	});
  
  sel();
  pointover();
  pointout();




  }); //ready

 

  
  </script>
</head>

<body>
  <div id="all">
  <div class="click-closed"></div>
  
  <jsp:include page="/inc/header.jsp"></jsp:include> <!-- 메뉴바(헤더) -->
  





 

  <section class="intro-single">
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-lg-8">
          <div class="title-single-box">
            <h1 class="title-single">음식점</h1>
            <span class="color-text-a">Local Food</span>
          </div>
        </div>
        <div class="col-md-12 col-lg-4">
          <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
            <ol class="breadcrumb">
              <li class="breadcrumb-item">
                <c:if test="${empty area}">
  					지역
  		  		</c:if>
  		  		<c:if test="${area==1}">
  					부산
  		  		</c:if>
  		  		<c:if test="${area==2}">
  					서울
  		  		</c:if>
  		  		<c:if test="${area==3}">
  					인천
  		  		</c:if>
  		  		<c:if test="${area==4}">
  					대전
  		  		</c:if>
  		  		<c:if test="${area==5}">
  					대구
  		  		</c:if>
  		  		<c:if test="${area==6}">
  					광주
  		  		</c:if>
  		  		<c:if test="${area==7}">
  					경기도
  		  		</c:if>
  		  		<c:if test="${area==8}">
  					강원도
  		  		</c:if>
  		  		<c:if test="${area==9}">
  					충청북도
  		  		</c:if>
  		  		<c:if test="${area==10}">
  					충청남도
  		  		</c:if>
  		  		<c:if test="${area==11}">
  					세종
  		  		</c:if>
  		  		<c:if test="${area==12}">
  					전라북도
  		  		</c:if>
  		  		<c:if test="${area==13}">
  					전라남도
  		  		</c:if>
  		  		<c:if test="${area==14}">
  					경상북도
  		  		</c:if>
  		  		<c:if test="${area==15}">
  					경상남도
  					
  		  		</c:if>
  		  		<c:if test="${area==16}">
  					울산
  		  		</c:if>
  		  		<c:if test="${area==17}">
  					제주
  		  		</c:if>
                
              </li>
              <li class="breadcrumb-item active" aria-current="page">
              	
              	<c:if test="${empty category}">
  				카테고리
  		  		</c:if>
		        <c:if test="${category ==1}">
  					한식
  		  		</c:if>
  		  		<c:if test="${category ==2}">
  		  			중식
  		  		</c:if>
  		  		
  		  		<c:if test="${category ==3}">
  		  			일식	
  		  		</c:if>
  		  		<c:if test="${category ==4}">
  		  			양식
  		  		</c:if>
  		  		<c:if test="${category ==5}">
  		  			분식
  		  		</c:if>
  		  		<c:if test="${category ==6}">
  		  			카폐
 	
  		  		</c:if>
         
              </li>
            </ol>
          </nav>
        </div>
      </div>
    </div>
  </section>




  <section class="property-grid grid">
    
  
      <!--/ Section Blog Star /-->
      <section id="blog" class="blog-mf sect-pt4 route">
        <div class="container" id="parent">
          
          <!-- 지우면 애니메이션 망가짐 -->
          <div class="row">
            <div class="col-sm-12">
              <div class="title-box text-center">
                <h3 class="title-a">
             
                </h3>
                <br>
                <br>
                <div class="line-mf"></div>
              </div>
            </div>
          </div>
  		
  		<c:forEach items="${list}" var="dto" varStatus="status">
  		
  			<c:if test="${(status.index+1)%3 ==1}">
  			<div class="row">
  			</c:if>
  			
            
            <div class="col-md-4">
              <div class="card card-blog">
                <div class="card-img">
                  <a href="#"><img src="/bnb/${dto.img }" alt="" class="img-fluid"></a>
                </div>
                <div class="starRev">
                  <!-- 별 회색 -->
                  <div class="starR1"></div>
                  <div class="starR1"></div>
                  <div class="starR1"></div>
                  <div class="starR1"></div>
                  <div class="starR1"></div>
                  
                  <hr>
                  <!-- 별 색깔 -->
                  <div class="starR2"></div>
                  <div class="starR2"></div>
                  <div class="starR2"></div>
                  <div class="starR2"></div>
                  
              
                  <div class="starR2"></div>
                  <p class="point">${dto.point}<span class="man">/5.0 </span> </p>
        
                </div> <!-- starRev -->
                <div class="card-body">
                  <div class="card-category-box">
                    <div class="card-category">
                      <h6 class="category">${dto.views}</h6>
                    </div>
                  </div>
                  <h3 class="card-title"><a href="#">${dto.subject} <span class="review">(${dto.review})</span><span class="star-point">${dto.point}</span> </a></h3>
                  <p class="card-description">
                    ${dto.content}
                  </p>
                  <div class="write-date">
  
                    <span class="date">${dto.date}</span>
  
                  </div>
                </div>
  				<input type="hidden" value="${dto.seq}">
              </div>
            </div>
     
          
          
          <c:if test="${(status.index+1)%3 ==0 or (status.index+1)==list.size()}">
  			</div>
  		  </c:if>
          
          </c:forEach>
          	
 
        </div>    <!-- container -->
        <input type="hidden" id="btnmore">
  		
  		<div id="loading">
			<img src="/bnb/img/loading.png" >
		</div>
			
			
        <div class="area">
       
   
        	<div class="ca">
		        <ul id="cate" type="none">
		        	
		        	
		        	<c:if test="${empty category}">
  						<li class="first">카테고리<i class="fas fa-caret-down vwi"></i><span class="space">&nbsp;</span></li>
  		  			</c:if>
		        	<c:if test="${category ==1}">
  						<li class="first">한식&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-caret-down vwi"></i></li>
  		  			</c:if>
  		  			<c:if test="${category ==2}">
  		  				<li class="first">중식&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-caret-down vwi"></i></li>
  						
  		  			</c:if>
  		  			<c:if test="${category ==3}">
  		  				<li class="first">일식&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-caret-down vwi"></i></li>
  						
  		  			</c:if>
  		  			<c:if test="${category ==4}">
  		  				<li class="first">양식&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-caret-down vwi"></i></li>	
  						
  		  			</c:if>
  		  			<c:if test="${category ==5}">
  		  				<li class="first">분식&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-caret-down vwi"></i></li>
  					
  		  			</c:if>
  		  			<c:if test="${category ==6}">
  		  				<li class="first">카폐&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-caret-down vwi"></i></li>
  						
  		  			</c:if>
		        
			        
			        <li class="holder">카테고리</li>
			        <li value="1">한식&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
			        <li value="2">중식&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
			        <li value="3">일식&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
			        <li value="4">양식&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
			        <li value="5">분식&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
			        <li value="6">카페&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
		    	</ul>
          	</div>
          
          
          <br>
          
          <div class="location ca2">
	        <ul id="cate2" type="none">
	        
	        	<c:if test="${empty area}">
  					<li class="first2">지역&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-caret-down vwi"></i></li>
  		  		</c:if>
  		  		<c:if test="${area==1}">
  					<li class="first2">부산&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-caret-down vwi"></i></li>
  		  		</c:if>
  		  		<c:if test="${area==2}">
  					<li class="first2">서울&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-caret-down vwi"></i></li>
  		  		</c:if>
  		  		<c:if test="${area==3}">
  					<li class="first2">인천&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-caret-down vwi"></i></li>
  		  		</c:if>
  		  		<c:if test="${area==4}">
  					<li class="first2">대전&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-caret-down vwi"></i></li>
  		  		</c:if>
  		  		<c:if test="${area==5}">
  					<li class="first2">대구&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-caret-down vwi"></i></li>
  		  		</c:if>
  		  		<c:if test="${area==6}">
  					<li class="first2">광주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-caret-down vwi"></i></li>
  		  		</c:if>
  		  		<c:if test="${area==7}">
  					<li class="first2">경기도&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-caret-down vwi"></i></li>
  		  		</c:if>
  		  		<c:if test="${area==8}">
  					<li class="first2">강원도&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-caret-down vwi"></i></li>
  		  		</c:if>
  		  		<c:if test="${area==9}">
  					<li class="first2">충청북도<span class="space">&nbsp;</span><i class="fas fa-caret-down vwi"></i></li>
  		  		</c:if>
  		  		<c:if test="${area==10}">
  					<li class="first2">충청남도<span class="space">&nbsp;</span><i class="fas fa-caret-down vwi"></i></li>
  		  		</c:if>
  		  		<c:if test="${area==11}">
  					<li class="first2">세종&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-caret-down vwi"></i></li>
  		  		</c:if>
  		  		<c:if test="${area==12}">
  					<li class="first2">전라북도<span class="space">&nbsp;</span><i class="fas fa-caret-down vwi"></i></li>
  		  		</c:if>
  		  		<c:if test="${area==13}">
  					<li class="first2">전라남도<span class="space">&nbsp;</span><i class="fas fa-caret-down vwi"></i></li>
  		  		</c:if>
  		  		<c:if test="${area==14}">
  					<li class="first2">경상북도<span class="space">&nbsp;</span><i class="fas fa-caret-down vwi"></i></li>
  		  		</c:if>
  		  		<c:if test="${area==15}">
  					<li class="first2">경상남도<span class="space">&nbsp;</span><i class="fas fa-caret-down vwi"></i></li>
  					
  		  		</c:if>
  		  		<c:if test="${area==16}">
  					<li class="first2">울산&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-caret-down vwi"></i></li>
  		  		</c:if>
  		  		<c:if test="${area==17}">
  					<li class="first2">제주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-caret-down vwi"></i></li>
  		  		</c:if>
	        
		      
		        <li class="holder2">지역</li>
		        <li value="2">서울&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
		        <li value="7">경기도&nbsp;&nbsp;&nbsp;&nbsp;</li>
		        <li value="3">인천&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
		        <li value="8">강원도&nbsp;&nbsp;&nbsp;&nbsp;</li>
		        <li value="9">충청북도<span class="space">&nbsp;</span></li>
		        <li value="10">충청남도<span class="space">&nbsp;</span></li>
		        <li value="11">세종&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
		        <li value="4">대전&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
		        <li value="12">전라북도<span class="space">&nbsp;</span></li>
		        <li value="13">전라남도<span class="space">&nbsp;</span></li>
		        <li value="6">광주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
		        <li value="14">경상북도<span class="space">&nbsp;</span></li>
		        <li value="15">경상남도<span class="space">&nbsp;</span></li>
		        <li value="5">대구&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
		        <li value="16">울산&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
		        <li value="1">부산&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
		        <li value="17">제주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
	    	</ul>
          
         
          </div>
 
          
          <div class="ca3">
          	<ul id="cate3" type="none">
          	
          		
          	
          		
          		<c:if test="${empty area2}">
  					<li class="first3">지역&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-caret-down vwi"></i></li>
  		  		</c:if>
  		  		
  		  		
  		  		<c:forEach items="${areaList}" var="dto">
  		  			<c:if test="${dto.seq == area2}">
  		  				<li class="first3">${dto.city}<i class="fas fa-caret-down vwi"></i></li>
  		  			</c:if>
          		</c:forEach>
  		  		
  		  		
  	
          		<li class="holder3">지역</li>
          		
          		
          		<c:forEach items="${areaList}" var="dto">
          			<li value="${dto.seq}">${dto.city}</li>
          		
          		</c:forEach>
<!--           	<li>북구&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
          		<li>금정&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
          		<li>부산대&nbsp;&nbsp;&nbsp;&nbsp;</li>
          		<li>부산진구<span class="space">&nbsp;</span></li>
          		<li>남포동&nbsp;&nbsp;&nbsp;&nbsp;</li>
          		<li>서면&nbsp;&nbsp;&nbsp;&nbsp;</li>
          		<li>사하구&nbsp;&nbsp;&nbsp;&nbsp;</li>
          		<li>해운대&nbsp;&nbsp;&nbsp;&nbsp;</li>
          		<li>광안센텀<span class="space">&nbsp;</span></li>
          		<li>중구영도<span class="space">&nbsp;</span></li>
          		<li>수영남구<span class="space">&nbsp;</span></li>
          		<li>서구동구<span class="space">&nbsp;</span></li>
          		<li>동래연제구</li>
         		<li>강서사상구</li>
         		<li>기장해운대구</li>
         		<li>경성대부경대</li> -->
         		
          	</ul>
          </div>

        </div>
        <div class="area2">
          <div id="search1">조회순</div>
          <div id="search2">별점순</div>
          <div id="search3">리뷰순</div>

        </div>
      </section> <!-- blog section -->
  <!--/ Section Blog End /-->

     
  
      
  </section>  <!-- 템플릿 section -->
 </div> <!-- all -->
 
<jsp:include page="/inc/footer.jsp"></jsp:include> <!-- Footer (맨밑 메뉴) -->
<jsp:include page="/inc/asset3.jsp"></jsp:include> 
<script src ="/bnb/js/header.js"></script>


  <script type="text/javascript">
  	
  	var param = "&category="+'${category}'+"&area="+'${area}'+"&area2="+'${area2}';
  
  	$("#search1").click(function() {
  		window.location.href="/bnb/food/foodlist.do?search=views"+ param;

  		
  	});
	$("#search2").click(function() {
		window.location.href="/bnb/food/foodlist.do?search=starscore"+ param;

  	});
	$("#search3").click(function() {
		window.location.href="/bnb/food/foodlist.do?search=review"+ param;

	});
	
	
	
	



	
  	

	var cnt2 = 0;
	var cnt3 = 0;
	var cnt4 = 0;
	
	$("#cate").click(function() {
		
		//console.log($(this));
		$(this).children().eq(0).css("border-bottom", "1px solid cornflowerblue");
		$(this).parent().css("height", "200px");
		$(this).parent().css("overflow", "auto");
		$(".holder").css("color","#A1A2A1");
		
		$(this).children().mouseover(function() {
			/* console.log($(this)); */
			if (this != $(".holder")[0] && this != $(".first")[0] ) {
				$(this).css("backgroundColor", "skyblue");
				$(this).css("color", "#FFF");
			}
		
			
		});
		
		$(this).children().mouseout(function() {
			/* console.log($(this)); */
			if (this != $(".holder")[0] && this != $(".first")[0]) {
				$(this).css("backgroundColor", "rgba(0,0,0,0)");
				$(this).css("color", "#555");
			}
			
		});
		
		
		if (cnt2 == 0) {
			console.log("event");
			$(".first").eq(0).on("click", onoff);
			$(document).on("click", off);
		}
		
		cnt2++;
		console.log("cnt", cnt2);
		
		event.cancelBubble = true;
	});
	
	function onoff() {
		
		console.log("click->click");
		$(this).parent().parent().scrollTop(0);
		$(this).parent().parent().css("height", "40px");
		$(this).parent().parent().css("overflow", "hidden");
		
		$("#cate").children().eq(0).css("border-bottom", "0px solid blue");

		event.cancelBubble = true;
		
		cnt2=0;
		console.log("first", cnt2);
		
		$(".first").eq(0).off("click");
	}
	
	$("#cate").children().click(function() {
		
		
		if (this != $(".holder")[0] && this != $(".first")[0]) {
			
			$(this).parent().parent().scrollTop(0);
			$(this).parent().parent().css("overflow", "hidden");
			$(".first").remove();

			$('.holder').before("<li class='first sel'>"+$(this).text() +"<i class='fas fa-caret-down vwi'></i></li>");
			$("#cate").children().eq(0).css("border-bottom", "0px solid blue");

			$(this).parent().parent().css("height", "40px");
			
			event.cancelBubble = true;
			
			cnt2=0;
			
			var param2 = "&area="+'${area}'+"&area2="+'${area2}'+"&category="+$(this).val();
			window.location.href="/bnb/food/foodlist.do?search=views"+ param2;
		
			
		} 
				
		
	});
	
	
	
	function off() {
		
		if(this != $(".first")[0]){
			$(".first").parent().parent().scrollTop(0);
			$(".first").parent().parent().css("height", "40px");
			$(".first").parent().parent().css("overflow", "hidden");
			$("#cate").children().eq(0).css("border-bottom", "0px solid blue");
			console.log("docu");
			$(document).off("click");
			$(".first").eq(0).off("click");
			cnt2=0;
		}
		
	
	}
	
	
	
	
	
	$("#cate2").click(function() {
		
		//console.log($(this));
		$(this).children().eq(0).css("border-bottom", "1px solid cornflowerblue");
		$(this).parent().css("height", "200px");
		$(this).parent().css("overflow", "auto");
		$(".holder2").css("color","#A1A2A1");
		
		$(this).children().mouseover(function() {
			/* console.log($(this)); */
			if (this != $(".holder2")[0] && this != $(".first2")[0] ) {
				$(this).css("backgroundColor", "skyblue");
				$(this).css("color", "#FFF");
			}
		
			
		});
		
		$(this).children().mouseout(function() {
			/* console.log($(this)); */
			if (this != $(".holder2")[0] && this != $(".first2")[0]) {
				$(this).css("backgroundColor", "rgba(0,0,0,0)");
				$(this).css("color", "#555");
			}
			
		});
		
		
		if (cnt3 == 0) {
			console.log("event");
			$(".first2").eq(0).on("click", onoff2);
			$(document).on("click", off2);
		}
		
		cnt3++;
	
		
		event.cancelBubble = true;
	});
	
	function onoff2() {
		
		console.log("click->click");
		$(this).parent().parent().scrollTop(0);
		$(this).parent().parent().css("height", "40px");
		$(this).parent().parent().css("overflow", "hidden");
		
		$("#cate2").children().eq(0).css("border-bottom", "0px solid blue");

		event.cancelBubble = true;
		
		cnt3=0;
	
		
		$(".first2").eq(0).off("click");
	}
	
	$("#cate2").children().click(function() {
		
	
		if (this != $(".holder2")[0] && this != $(".first2")[0]) {
			
			$(this).parent().parent().scrollTop(0);
			$(this).parent().parent().css("overflow", "hidden");
			$(".first2").remove();

			$('.holder2').before("<li class='first2 sel'>"+$(this).text() +"<i class='fas fa-caret-down vwi'></i></li>");
			$("#cate2").children().eq(0).css("border-bottom", "0px solid blue");

			$(this).parent().parent().css("height", "40px");
			
			event.cancelBubble = true;
			
			cnt3=0;
			/*  Ajax  */
			
 			var param2 = "&area="+$(this).val()+"&area2="+'${area2}'+"&category="+'${category}';
			window.location.href="/bnb/food/foodlist.do?search=views"+ param2;
			
		} 
				
		
	});
	
	
	
	function off2() {
		
		if(this != $(".first2")[0]){
			$(".first2").parent().parent().scrollTop(0);
			$(".first2").parent().parent().css("height", "40px");
			$(".first2").parent().parent().css("overflow", "hidden");
			$("#cate2").children().eq(0).css("border-bottom", "0px solid blue");
			$(document).off("click");
			$(".first2").eq(0).off("click");
			cnt3=0;
		}
		
	
	}
	
	
	
	
	
	//---------
	$("#cate3").click(function() {
		
		//console.log($(this));
		$(this).children().eq(0).css("border-bottom", "1px solid cornflowerblue");
		$(this).parent().css("height", "200px");
		$(this).parent().css("overflow", "auto");
		$(".holder3").css("color","#A1A2A1");
		
		$(this).children().mouseover(function() {
			/* console.log($(this)); */
			if (this != $(".holder3")[0] && this != $(".first3")[0] ) {
				$(this).css("backgroundColor", "skyblue");
				$(this).css("color", "#FFF");
			}
		
			
		});
		
		$(this).children().mouseout(function() {
			/* console.log($(this)); */
			if (this != $(".holder3")[0] && this != $(".first3")[0]) {
				$(this).css("backgroundColor", "rgba(0,0,0,0)");
				$(this).css("color", "#555");
			}
			
		});
		
		
		if (cnt4 == 0) {
			console.log("event");
			$(".first3").eq(0).on("click", onoff3);
			$(document).on("click", off3);
		}
		
		cnt4++;
	
		
		event.cancelBubble = true;
	});
	
	function onoff3() {
		
		console.log("click->click");
		$(this).parent().parent().scrollTop(0);
		$(this).parent().parent().css("height", "40px");
		$(this).parent().parent().css("overflow", "hidden");
		
		$("#cate3").children().eq(0).css("border-bottom", "0px solid blue");

		event.cancelBubble = true;
		
		cnt4=0;
	
		
		$(".first3").eq(0).off("click");
	}
	
	$("#cate3").children().click(function() {
		
	
		if (this != $(".holder3")[0] && this != $(".first3")[0]) {
			
			$(this).parent().parent().scrollTop(0);
			$(this).parent().parent().css("overflow", "hidden");
			$(".first3").remove();

			$('.holder3').before("<li class='first3 sel'>"+$(this).text() +"<i class='fas fa-caret-down vwi'></i></li>");
			$("#cate3").children().eq(0).css("border-bottom", "0px solid blue");

			$(this).parent().parent().css("height", "40px");
			
			event.cancelBubble = true;
			
			cnt4=0;
			/*  Ajax  */
			var param2 = "&area="+'${area}'+"&area2="+$(this).val()+"&category="+'${category}';
			window.location.href="/bnb/food/foodlist.do?search=views"+ param2;
			
		} 
				
		
	});
	
	
	
	function off3() {
		
		if(this != $(".first3")[0]){
			$(".first3").parent().parent().scrollTop(0);
			$(".first3").parent().parent().css("height", "40px");
			$(".first3").parent().parent().css("overflow", "hidden");
			$("#cate3").children().eq(0).css("border-bottom", "0px solid blue");
			$(document).off("click");
			$(".first3").eq(0).off("click");
			cnt4=0;
		}
		
	
	}
	

	


  
  </script>
	
  </body>
  </html>