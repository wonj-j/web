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
    th{
      background-color: #AFB8AA;
    }
    .col-md-12.col-lg-8 .titleboxes{
      border-left: 3px solid #56C3B8;
      padding-left: 20px;
    }
    .row>.table{
      text-align: center;
      margin-bottom : 150px;
    }

    .mileagetablewidth{
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
            <h1 class="title-single">리뷰확인</h1>
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
              <h4>숙소 리뷰</h4>
          </div>
          <div class="row">
              <table class="table table-bordered table-condensed myreview">
                <tbody>
                  <tr>
                    <th>작성날짜</th>        
                    <th>리뷰내용</th>  
                    <th>리뷰숙소</th>  
                  </tr>
                  
                <c:forEach items="${accomlist}" var="alist">
                  <tr>
                    <td class="num" data-writenum="${alist.rseq}" data-catenum="${alist.rcategoryseq}">${alist.rdate}</td>
                    <td>${alist.rcontent}</td>   
                    <td>${alist.raccomname}<i class="fas fa-edit"></i><i class="fas fa-times"></i></td>
                  </tr>
				</c:forEach>
                </tbody>
              </table>           
            </div>

          <div class="row">
              <h4>맛집 리뷰</h4>
          </div>
          <div class="row">
              <table class="table table-bordered table-condensed myreview">
                <tbody>
                  <tr>
                    <th>작성날짜</th>        
                    <th>리뷰내용</th>  
                    <th>맛집</th>  
                  </tr>
                <c:forEach items="${restolist }" var="rlist">
                  <tr>
                    <td class="num" data-writenum="${rlist.rseq}" data-catenum="${rlist.rcategoryseq}">${rlist.rdate}</td>
                    <td>${rlist.rcontent}</td>   
                    <td>${rlist.rrestname}<i class="fas fa-edit"></i><i class="fas fa-times"></i></td>
                  </tr>
				</c:forEach>

                </tbody>
              </table>           
            </div>

          <div class="row">
            <h4>관광소 리뷰</h4>
          </div>
          <div class="row">
              <table class="table table-bordered table-condensed myreview">
                <tbody>
                  <tr>
                    <th>작성날짜</th>        
                    <th>리뷰내용</th>  
                    <th>관광소</th>  
                  </tr>
  				<c:forEach items="${tourlist}" var="tlist">
                  <tr>
                    <td class="num" data-writenum="${tlist.rseq}" data-catenum="${tlist.rcategoryseq}">${tlist.rdate}</td>
                    <td>${tlist.rcontent}</td>   
                    <td>${tlist.rtourname}<i class="fas fa-edit"></i><i class="fas fa-times"></i></td>
                  </tr>
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

     $(".table.table-bordered.table-condensed.myreview tr").on({
      mouseover : function(){
        $(this).children("td").children(".fas.fa-edit").css("visibility","visible");
        $(this).children("td").children(".fas.fa-times").css("visibility","visible");
      },
      mouseout : function(){
        $(this).children("td").children(".fas.fa-edit").css("visibility","hidden");
        $(this).children("td").children(".fas.fa-times").css("visibility","hidden");
      }
     });

     $(".fas.fa-edit").closest("td").css({
       "position" : "relative"
     });

    
     $(".fas.fa-edit").css({
      "position" : "absolute",
      "visibility": "hidden",
      "left" : "70%",
      "top" : "35%"
     });

     $(".fas.fa-times").css({
      "position" : "absolute",
      "visibility": "hidden",
      "left" : "90%",
      "top" : "35%"
     });

     $(".fas.fa-edit").on({
       click : function(){
    	   
          var rseq = $(this).closest("tr").find(".num").data("writenum");
          var cateseq = $(this).closest("tr").find(".num").data("catenum");
          
          var myreviewwindow = window.open("/bnb/myreviewedit.do?rseq="+rseq+"&rcateseq="+cateseq,"child","width=550,height=600,left=500,top=200 resizable=no scrollbars=no");
           /* var that = this; */

			console.log(rseq);          
       	  /* setTimeout(function(){
          $("#reviewkey",myreviewwindow.document).val($(that).closest("td").closest("tr").children(".num").text())
          },1000); */

          //function(){}로쓸경우 this는 $()을가리킴, ()=>{}로 쓸경우 this는 window를 가리킴
       },
       mouseover : ()=>{
        $(".fas.fa-edit").css({
          "cursor" : "pointer",
          "color" : "blue"
        });
       },
       mouseout : ()=>{
        $(".fas.fa-edit").css({
          "color" : "#464545"
        });
       }
     });

     $(".fas.fa-times").on({
        click : function(){
          $(this).closest("tr").remove();
        },
       mouseover : ()=>{
        $(".fas.fa-times").css({
          "cursor" : "pointer",
          "color" : "red"
        });
       },
       mouseout : ()=>{
        $(".fas.fa-times").css({
          "color" : "#464545"
        });
       }
     });
    });
  </script>

</body>
</html>
