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
  
    .col-md-12.col-lg-8 .titleboxes{
      border-left: 3px solid #56C3B8;
      padding-left: 20px;
    }
    .mylodginginfo span{
      display: inline-block;
      width: 100px;
      text-align: right;
    }
    .mylodginginfo div{
      display: inline-block;
      margin-left: 10px;
    }
    .mylodginginfo input{
      margin-left: 10px;
      border: 0;
    }

    #lodgingedit{
      border-top: 3px solid #56C3B8;
      border-bottom: 3px solid #56C3B8;
    }
    .col-md-6.mylodginginfobox {
      padding-top: 30px;
      border-top: 3px solid #56C3B8;
      border-bottom: 3px solid #56C3B8;
      border-right: 3px solid #56C3B8;
    }
    .imgsize {
      padding: 0;
      border-top: 3px solid #56C3B8;
      border-bottom: 3px solid #56C3B8;
      overflow: hidden;
      position: relative;
    }
    .imgsize img{
      width: 100%;
      height: 197px;
    }
    .imgsize div{
      width: 100%;
      height: 50px;
      background-color: rgba(0, 0, 0, 0.8);
      position: absolute;
      left: 0px;
      top: 200px;
      color: white;
      padding-top: 10px;
    }
    .property-single.nav-arrow-b .container .row{
      margin-bottom: 20px;
    }
    .property-single.nav-arrow-b .container .row .col-md-3:nth-child(3){
      padding-top: 60px;
      font-size: 2.0em;
    }
    .property-single.nav-arrow-b .container .row .col-md-3:nth-child(3) .fas.fa-edit{
      margin-left: 20px;
      margin-right: 20px;
    }
    .table th,.table td{
      text-align: center;
    }

    .table.table-bordered tr:nth-last-child(1){
      border-bottom: 1px solid #AFB8AA;
    }
    td .fas.fa-check{
      margin-right: 30px;
    }
    .img-round{
      border-radius: 100%;
    }
    .guestbox{
      border: 1px solid #AFB8AA;
      width: 350px;
      box-shadow: 6px 6px 5px 5px gray;
    }
    .guestbox img{
      width: 80px;
      height: 80px;
      padding: 0;
      margin: 10px 30px;
      float: left;
    }
    .guestbox div{
      position: relative;
      border: 0px solid black;
      margin-top: 15px;
      margin-right: 20px;
      float: left;
      
    }
    .guestbox div:after{                                                                   
      content: "";
      clear: both;
    }
    .guestbox div h4{
      border: 0px solid black;
      margin: 0;
    }
    .guestbox div p{
      border: 0px solid black;
      width: 140px;
      height: 20px;
      overflow: hidden;
      white-space: nowrap;
      text-overflow: ellipsis;
    }
    .messagetime{
      position: absolute;
      width: 70px;
      top: 0px;
      left: 130px;
      border: 0px solid black;
      text-align: right;
    }
    .messagebox{
      border : 0px solid #464545;
      position: absolute;
      width: 300px;
      height: 300px;
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
            <h1 class="title-single">호스트</h1>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--/ Intro Single End /-->

  <!--/ Property Single Star /-->
  <section class="property-single nav-arrow-b">
    <div class="container">
      <form>
      <div class="row">       
        <h3>나의 숙소</h3>
        <input type="hidden" id="imgname" name="imgname">
        <input type="hidden" id="imgkeyvalue" name="imgkeyvalue">
      </div>

      <div class="row">
        <div class="col-md-3 imgsize img-wrapper"><img src="${hostaccomdto.accompic}" imagenum="0" class="img-responsive"><div>email : ${hostaccomdto.accomemail }</div></div>
        <div class="col-md-6 mylodginginfobox">
          <div class="mylodginginfo"><span>숙소이름:</span><input type="text" id="lodgingname" value="${hostaccomdto.accomname }" readonly></div>
          <div class="mylodginginfo"><span>위치:</span><div>${hostaccomdto.accomaddress}</div></div>
          <div class="mylodginginfo"><span>1박요금:</span><input type="text" id="lodginprice" value="${hostaccomdto.accomfee}Won"></div>
          <div style=" width: 500px; text-align:center;"><b>이용규칙</b></div>
          <div>||<c:forEach items="${hostaccomruledto}" var="rule"><span style="color: white;background-color:tomato;border-radius: 10%;">${rule.accomrule}</span>||</c:forEach>
          </div>
          
      	 <input type="hidden" id="accomseq" value="${hostaccomdto.accomhostseq}">
        </div>
        <div class="col-md-3" id="lodgingedit"><i class="fas fa-edit"></i><i class="fas fa-times"></i></div>
      </div>
    
      <div style="margin-bottom: 100px">
      </div>
      
      <div class="row">       
       <h3>숙소예약리스트</h3>
      </div>

      <div class="row">
        <table class="table">
          <tbody>
            <tr>
              <th>예약번호</th>
              <th>예약자</th>
              <th>예약날짜</th>
              <th>예약숙소</th>
              <th>예약승인여부</th>
            </tr>
            <c:forEach items="${hostbookdto}" var="booklist">
            <c:if test="${booklist.bookcnt == roop}">
            	<input type="hidden" value="${roop = 0}">
            </c:if>
            <c:if test="${roop == 0}">
            <tr>
              <td>${booklist.bookseq}</td>
              <td>${booklist.bookname }</td>
              <td>체크인:${booklist.bookcheckindate}<br>체크아웃:${booklist.bookcheckoutdate}</td>
              <td>${booklist.bookaccomname}</td>
              <td><i class="fas fa-check"></i><i class="fas fa-times"></td>
            </tr>
            </c:if>
            <input type="hidden" value="${roop = roop + 1}">
            </c:forEach>  
          </tbody>
        </table>
      </div>

      <div style="margin-bottom: 100px">
      </div>

      <div class="row">       
       <h3>숙소예약자메시지</h3>
      </div>
      
      <c:forEach items="${hostmsgdto}" var="msglist">
      <div class="row">
        <div class="guestbox">
            <img src="${msglist.msguserpic}" class="img-round">
            <div><h4>게스트:${msglist.msgusername}</h4><span class="messagetime">${msglist.msgtime}</span>
            <p>${msglist.msgcontent}</p>
            </div>
            <input type="hidden" class="userseq" value="${msglist.msguserseq}">
            <input type="hidden" class="hostseq" value="${msglist.msghostseq}">   
            <input type="hidden" class="bookseq" value="${msglist.msgbookseq}">  
        </div>
      </div>
	  </c:forEach>
	  
        <div class="messagebox">
          
        </div>
      </form>
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
  <!-- Template Main Javascript File -->
  <script src="/bnb/js/mypagemenu.js"></script>
  <script src="/bnb/js/titleani.js"></script>
  
   
  <script>

   
    

    $(document).ready(function () {
        var child; 
		var accomseq = "${hostaccomdto.accomseq}";
        $("#lodgingedit>.fas.fa-edit").each(function () {
        $(this).on({
          click: function () {
            child = window.open("/bnb/mylodgingedit.do?hostseq="+$("#accomseq").val(), "child", "width=1000, height=900, resizable = no");
            //var imgval = $(this).closest("div").siblings(".imgsize").children("img").attr("src");
            //var imgkey = $(this).closest("div").siblings(".imgsize").children("img").attr("imagenum");
            /*setTimeout(function ()  {
                child.document.getElementById("imgvalue").value = imgval;
                child.document.getElementById("imgkey").value = imgkey;
                console.log(child.document.getElementById("imgvalue").value);
                console.log(child.document.getElementById("imgkey").value);
              }, 500); */

          },
          mouseover: function () {
            $(this).css({
              "color": "blue",
              "cursor": "pointer"
            });
          },
          mouseout: function () {
            $(this).css("color", "#464545");
          }
        });
      });

        $("#lodgingedit>.fas.fa-times").on({
          click: function () {
            alert("숙소리스트에서 삭제합니다.");
            $(event.srcElement).closest(".row").remove();
          },
          mouseover: function () {
            $(event.srcElement).css({
              "color": "red",
              "cursor": "pointer"
            });
          },
          mouseout: function () {
            $(event.srcElement).css("color", "#464545");
          }
        });

        $(".fas.fa-check").on({
          click: function () {
            alert("예약승인 완료");
          },
          mouseover: function () {
            $(event.srcElement).css({
              "color": "green",
              "cursor": "pointer"
            });
          },
          mouseout: function () {
            $(event.srcElement).css("color", "#464545");
          }
        });

        $("td>.fas.fa-times").on({
          click: function () {
            alert("예약승인 거부");
            $(event.srcElement).closest("td").closest("tr").remove();
          },
          mouseover: function () {
            $(event.srcElement).css({
              "color": "red",
              "cursor": "pointer"
            });
          },
          mouseout: function () {
            $(event.srcElement).css("color", "#464545");
          }
        });

        $(".guestbox").each(function(){

          var guestbox = $(this);
          guestbox.css({
                "position" : "relative",
                "transition" : "all 1s"
          });

          var x1=0;
          var timer;

          $(this).on({
            mouseover : ()=> {        
              clearInterval(timer);
                    timer = setInterval(function(){
                    guestbox.css("left",x1+"px");
                    x1+=10;
                    // console.log(x1);
                    if(x1 >= 120){
                      clearInterval(timer);
                      x1 = 120;
                    }  
                  },10);
              },
            mouseout :()=>{
              clearInterval(timer);        
              timer = setInterval(function(){
                guestbox.css("left",x1+"px");
                x1-=10;
                // console.log(x1);
                if(x1 <= 0){
                    clearInterval(timer);        
                    x1 = 0
                  }
              },80);
            },
            click : function() {
            	var user = guestbox.find(".userseq").val();
            	var host = guestbox.find(".hostseq").val();
            	var book = guestbox.find(".bookseq").val();
            	
            	window.open("/bnb/websocket.do?userseq="+user+"&hostseq="+host+"&caller=h&bookseq="+book,
            			"child","width=550,height=600,left=500,top=200 resizable=no scrollbars=no");
            }
          });
        });


        $(".imgsize").on({
          mouseover: function(){
            console.log("a");
            $(this).children("img").css({
              "transform" : "scale(1.2,1.2)",
              "transition" : "all 1s"
            });
            $(this).children("div").css({
              "top" : "150px",
              "transition" : "all 1s"
            });
          },
          mouseout : function(){
            $(this).children("img").css({
              "transform" : "scale(1.0,1.0)",
              "transition" : "all 1s"
            });
            $(this).children("div").css({
              "top" : "200px"
            });
          }
        
        });
        
      
        
    });
  </script>

</body>
</html>
    