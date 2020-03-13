<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
	integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP"
	crossorigin="anonymous">
<jsp:include page="/inc/asset.jsp"></jsp:include> <!-- HTML 라이브러리 -->

 <link href="/bnb/css/mypagemenu.css" rel="stylesheet">
  <style>
  .col-md-12.col-lg-8 .titleboxes{
    border-left: 3px solid #56C3B8;
    padding-left: 20px;
  }
  .fas.fa-times{
      position: relative;
      top: -100px;
      left: 98%;
    }
  .name-box{
    display: inline-block;
    width: 150px;
    text-align: right;
  }
  .productboxtitle{
    font-size: 0.9em;
    text-align: center;
    font-weight: bold;
  }
  .tocenter{
    display: inline-block;
    width: 25px;
    height: 50px;
  }
  .testborder{
    border: 0px solid blue;
  }
  .row.productboxtitle{
    background-color: lightcoral;
    margin-top: 50px;
    margin-bottom: 50px;
    font-size: 1.3em;
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
            <h1 class="title-single">예약 확인</h1>
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


            <div class="row">
              <div class="col-md-6 mb-1">
                예약내역 <input type="text" id="reservecount" style="border: 0px; text-align: right;" size="5" readonly>건
              </div>
              <div class="col-md-3 mb-1" id="staydate">
                숙박한 일수 :<input type="text" id="staycount" style="border: 0px;
                text-align: right;" size="5" value="${reservecnt}" readonly>일
              </div>
              <div class="col-md-3 mb-1" id="freecoupon">
                무료 쿠폰 받기
              </div>
            </div>

            <div class="row productboxtitle">
              <div class="col-md-3 mb-1">예약날짜</div>
              <div class="col-md-6 mb-1">예약정보</div>
              <div class="col-md-3 mb-1">예약상태</div>
            </div>

			<c:forEach items="${accom}" var="accomlist">
			<c:if test="${accomlist.book_bookcnt == roop }">
				<input type="hidden" value="${roop = 0}">
			</c:if>
			<c:if test="${roop == 0}">
            <div class="row"><!--row start-->
              <div class="col-md-3 mb-1">${accomlist.bookcal_checkindate}~<br>${accomlist.bookcal_checkoutdate}</div>
              <div class="col-md-6 mb-1">
                <!--col-md-6 start-->
                <div class="row">
                  <div class="col-md-4 mb-1">
                    <span class="tocenter"></span>
                    <img src="/bnb/img/slide-1.jpg" width="100" height="100" class="testborder">
                  </div>
                  <div class="col-md-8 mb-1">
                    <h4 class="testborder">${accomlist.book_bookcnt-1}박${accomlist.book_bookcnt}일</h4>
                    <p class="testborder">${accomlist.accominfo}</p>
                  </div>
                </div>
              </div>
              <!--col-md-6 end-->
              	<div class="col-md-3 mb-1">${accomlist.book_state}</div> 
	              <c:if test="${!accomlist.book_state.equals(\"취소불가\")}">
	              <i class="fas fa-times"></i>
	              </c:if>
            </div><!--row end-->
            	<input type="hidden" value="${bookcnt = bookcnt+1}">
              </c:if>
              <input type="hidden" value="${roop = roop + 1}">
			</c:forEach>

            
         
            
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
   <script src="/bnb/js/mypagemenu.js"></script>
  <script src="/bnb/js/titleani.js"></script>
  <script>
	$("#reservecount").val("${bookcnt}");
	
    $(document).ready(function(){      
      if ($("#staycount").val() < 6) {
        $("#freecoupon").css("display", "none");
        $("#staydate").attr("class","col-md-6");
        $("#staydate").css("text-align","right");
      } else {
        $("#staydate").attr("class","col-md-3");
        $("#freecoupon").css({
          "display": "inline",
          "color": "rgb(231, 76, 60)",
          "font-weight": "bold",
          "cursor": "pointer",
          "border":"0px solid black"
        });
      }
     $("#freecoupon").on({
        click:function(){
          alert("쿠폰받기 완료");
        },
        mouseover:function(){
          $("#freecoupon").css("color","rgb(230, 126, 34)");
        },
        mouseout:function(){
          $("#freecoupon").css("color","rgb(231, 76, 60)");
        }
     });
     $(".fas.fa-times").on({
          click: function () {
            alert("예약을 취소합니다.");
            $(event.srcElement).closest("div").closest("div").remove();
          },
          mouseover: function () {
            $(event.srcElement).css({
              "color": "black",
              "cursor": "pointer"
            });
          },
          mouseout: function () {
            $(event.srcElement).css("color", "#464545");
          }
        });
    });
  </script>
  <jsp:include page="/inc/footer.jsp"></jsp:include> <!-- Footer (맨밑 메뉴) -->
  <jsp:include page="/inc/asset3.jsp"></jsp:include>  <!-- JavaScript Libraries -->
</body>
</html>