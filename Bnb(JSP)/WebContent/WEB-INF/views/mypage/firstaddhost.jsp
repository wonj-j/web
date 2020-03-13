<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
	integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP"
	crossorigin="anonymous">
  	<jsp:include page="/inc/asset.jsp"></jsp:include> <!-- HTML 라이브러리 -->
	
	<link href="/bnb/css/mypagemenu.css" rel="stylesheet">
	
  <style>
    #anititle{
      text-align: center;
    }
    #anititle>h1{
      color: #C6DFD6;
    }
    #hostbtnbox{
      margin-top: 50px;
    }
    #hostbtnbox input{
      position: relative;
      left: 38%;
    }
    .intro-single .container{
      background-color: rgba(0,0,0, 0.5);
      padding-top: 200px;
      height: 600px;
    }
    body{
      background-image: url(/bnb/img/host_background.jpg);
			background-repeat: no-repeat;
			background-size: cover;
			background-attachment: fixed;
			background-position: center center;
    }
  </style>
</head>

<body>

 <jsp:include page="/inc/header.jsp"></jsp:include> <!-- 메뉴바(헤더) -->
<jsp:include page="/inc/asset4.jsp"></jsp:include> <!-- JavaScript Libraries -->
  <!--/ Intro Single star /-->
  <section class="intro-single">
    <div class="container">
        
          <div id="anititle">
            <h1>처음이군요 호스트 등록하시겠습니까?</h1>
          </div>
          <div id="hostbtnbox">
            <input type="button" class="btn btn-b" value="호스트 등록하기">
          </div>        
     
    </div>
  </section>
  <!--/ Intro Single End /-->
  
<!-- mypagemenu Start -->
  <div id="mypagemenu">  
    <a href="/bnb/myinfo.do" class="items" target="_self"><i class="far fa-address-card itemWidth"></i><span class="txtWidth">정보수정</span></a>      
    <a href="/bnb/checkreservation.do" class="items" target="_self"><i class="far fa-calendar-check itemWidth"></i><span class="txtWidth">예약확인</span></a>      
    <a href="/bnb/mileage.do" class="items" target="_self"><i class="fas fa-wallet itemWidth"></i><span class="txtWidth">마일리지</span></a>
    <a href="/bnb/checkreview.do" class="items" target="_self"><i class="fas fa-chalkboard-teacher itemWidth"></i><span class="txtWidth">리뷰확인</span></a> 
    <a href="/bnb/hostmanagement.do" class="items" target="_self"><i class="far fa-building itemWidth"></i><span class="txtWidth">호스트</span></a>    
   <i class="fas fa-chevron-right"></i>
   <i class="fas fa-chevron-left"></i>
 </div>
  <!-- mypagemenu End -->



 <jsp:include page="/inc/footer.jsp"></jsp:include> <!-- Footer (맨밑 메뉴) -->
<jsp:include page="/inc/asset3.jsp"></jsp:include>  <!-- JavaScript Libraries -->
  <!-- Template Main Javascript File -->
<script src="/bnb/js/mypagemenu.js"></script>
<script src="/bnb/js/titleani.js"></script>
  
  <script>
    $(document).ready(function(){
     $("#anititle").css({
       "position" : "relative",
       "top" : "-100px"
     });
     $("#anititle").animate({
        "position" : "static",
        "top" : "0px"
     },1000);
    });
  </script>

</body>
</html>
