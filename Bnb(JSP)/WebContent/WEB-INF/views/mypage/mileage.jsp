<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    th{
      background-color: #AFB8AA;
    }
    .col-md-12.col-lg-8 .titleboxes{
      border-left: 3px solid #56C3B8;
      padding-left: 20px;
    }
    .row>table{
      margin-bottom : 50px;
    }
    .coupontablewidth{
      width: 500px;
    }
    .title-single{
      color: #464545;
    }
    .nav-item:nth-child(1), .nav-item:nth-child(2), .nav-item:nth-child(3) {
    margin: 0px 100px;
  }
  .navbar-nav {
    margin: 0px 0px;
  }
  .col-md-12.col-lg-8 .titleboxes{
    border-left: 3px solid #56C3B8;
    padding-left: 20px;
  }
  </style>
</head>

<body>

<jsp:include page="/inc/header.jsp"></jsp:include> <!-- 메뉴바(헤더) -->
<jsp:include page="/inc/asset4.jsp"></jsp:include> <!-- JavaScript Libraries -->
  <!--/ Intro Single star /-->
  <section class="intro-single">
    <div class="container">
      <div class="row">

        <div class="col-md-12 col-lg-8">
          <div class="titleboxes" id="anititle">
            <h1 class="title-single">마일리지</h1>
          </div>
        </div>

      </div>
    </div>
  </section>
  <!--/ Intro Single End /-->

  <!--/ Property Single Star /-->
  <section class="property-single nav-arrow-b">
    <div class="container">
      <div class="row">

        <div class="col-md-12">
          <div class="form-a">
            <form>

            <div id="inventory">
              <div class="row" style="border:0px solid black;">
                <h2 class="d-flex">고객님의 현재 마일리지:</h2><input type="text" id="mileagecount" style="border: 0px;" size="8" value="${mpoints}" readonly>
              </div>
              <div class="row" style="border:0px solid black;">
                <h3>현재 무료 숙박 쿠폰 수:</h3><input type="text" id="couponcount" style="border: 0px;" size="8" value="${couponsum}" readonly>
              </div>
            </div>

          <div class="row">
              <h4>마일리지 적립내역</h4>
          </div>
          <div class="row">
              <table class="table table-bordered table-condensed">
                <tbody>
                  <tr>
                    <th>적립날짜</th>
                    <th>예약숙소</th>                
                    <th>적립된 마일리지</th>  
                  </tr>
                  
                  <c:forEach items="${mileagelist}" var="list">
                  <c:if test="${list.milestate == 0}">                
                  <tr>
                    <td>${list.miledate}</td>
                    <td>${list.mileaccomname}</td>      
                    <td>${list.milepoint}</td>
                  </tr>
                   </c:if>
                  </c:forEach>
                  
                </tbody>
              </table>           
            </div>

          <div class="row">
            <h4>마일리지 차감내역</h4>
          </div>
          <div class="row">
              <table class="table table-bordered table-condensed">
                <tbody>
                  <tr>
                    <th>차감날짜</th>
                    <th>예약숙소</th>
                    <th>차감된 마일리지</th>                 
                  </tr>
                    <c:forEach items="${mileagelist}" var="list">
                  <c:if test="${list.milestate ==1}">                
                  <tr>
                    <td>${list.miledate}</td>
                    <td>${list.mileaccomname}</td>      
                    <td>${list.milepoint}</td>
                  </tr>
                   </c:if>
                  </c:forEach>
                </tbody>
              </table>           
            </div>

          <div class="row">
              <h4>쿠폰 사용내역</h4>
          </div>
          <div class="row">
              <table class="table table-bordered table-condensed coupontablewidth">
                <tbody>
                  <tr>
                    <th>쿠폰 사용날짜</th>
                    <th>예약숙소</th>                
                  </tr>
                  <c:forEach items="${couponlist}" var="list">
                  <c:if test="${list.coupstate.equals(\"사용\") }">
                  <tr>
                    <td>${list.coupdate}</td>
                    <td>${list.coupaccomname}</td>      
                  </tr>
                  </c:if>
                  </c:forEach>
                </tbody>
              </table>           
            </div>

          </form>
          </div>
        </div>

      </div>
    </div>
  </section>
  <!--/ Property Single End /-->

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
  <script src="/bnb/js/mypagemenu.js"></script>
  <script src="/bnb/js/titleani.js"></script>

  
  <script>
    $(document).ready(()=>{
      $("#inventory").css("margin-bottom","100px");
      $(".row>h2").css({
        "display" : "inline-block",
        "position" : "relative",
        "height": "40px",
        "padding-top":"5px",
        "opacity" : "0.1",
        "left" : "100px",
        "color" : "#41876B"
      });     

      $(".row>h3").css({
        "display" : "inline-block",
        "height": "40px",
        "padding-top":"8px",
        "position" : "relative",
        "opacity" : "0.1",
        "left" : "100px",
        "color" : "#5FC49B"
      });
      $(".col-md-12>h4").css({
        "color" : "#535E53",
        "border" : "1px solid black"
      });
      $("#mileagecount").css({
        "display" : "inline-block",
        "width": "150px",
        "height": "50px",
        "font-size" : "2.5em",
        "font-weight" : "bold",
        "margin-left": "10px",
        "position" : "relative",
        "opacity" : "0.1",
        "left" : "100px",
        "color" : "#41876B"
        
      });
      $("#couponcount").css({
        "display" : "inline-block",
        "width": "50px",
        "height": "50px",
        "font-size" : "2.0em",
        "font-weight" : "bold",
        "margin-left": "10px",
        "position" : "relative",
        "opacity" : "0.1",
        "left" : "100px",
        "color" : "#5FC49B"
      });

      $(".row>h2").animate({
        position : "static",
        opacity: 1.0,
        left : "0px"
      },2000);
      $(".row>h3").animate({
        position : "static",
        opacity: 1.0,
        left : "0px"
      },2000);
      $("#mileagecount").animate({
        position : "static",
        opacity: 1.0,
        left : "0px"
      },2000);
      $("#couponcount").animate({
        position : "static",
        opacity: 1.0,
        left : "0px"
      },2000);
    });
  </script>

</body>
</html>
