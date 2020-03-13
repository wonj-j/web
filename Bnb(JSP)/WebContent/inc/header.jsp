<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="click-closed"></div>

<!--/ Form Search Start /-->
<div class="box-collapse">
   <div class="title-box-d">
      <h3 class="title-d">예약</h3>
   </div>
    <span class="close-box-collapse right-boxed ion-ios-close"></span>
   <div class="box-collapse-wrap form" style="margin: 0;">
      <form class="form-a" id="searchform">
         <div class="row">
            <div class="col-md-12 mb-2">
               <div class="form-group" style="margin-top: 70px;">
                  <label for="Type">목적지</label> 
                  <!-- <input type="text" class="form-control form-control-lg form-control-a" name="destination" id="destination"
                     placeholder="모든 위치"> -->
                  <select name="destination" id="destination" class="form-control form-control-lg form-control-a">
                     <option value="부산광역시">부산광역시</option>
                     <option value="부산광역시 북구">부산광역시 북구</option>
                     <option value="부산광역시 금정">부산광역시 금정</option>
                     <option value="부산광역시 금정구 장전2동 부산대학로">부산대학교</option>
                     <option value="부산광역시 진구">부산광역시 진구</option>               
                  </select>
                     
               </div>
            </div>
            <div class="col-md-6 mb-2" style="margin-top: 30px;">
               <div class="form-group">
                  <label for="checkin">체크인</label> <input type="text"
                     placeholder="년/월/일"
                     class="form-control form-control-lg form-control-a" name="checkin" id="checkin">
               </div>
            </div>
            <div class="col-md-6 mb-2" style="margin-top: 30px;">
               <div class="form-group">
                  <label for="checkout">체크아웃</label> <input type="text"
                     placeholder="년/월/일"
                     class="form-control form-control-lg form-control-a" name="checkout" id="checkout" >
               </div>
            </div>
            <div class="col-md-6 mb-2" style="margin-top: 30px;">
               <div class="form-group">
                  <label for="adult">성인</label> 
                  <select name="adult" id="adult" class="form-control form-control-lg form-control-a">
                     <c:forEach var="i" begin="1" end="16">
                        <option value="${i}">성인 ${i}명</option>
                     </c:forEach>
                  </select>
               </div>
            </div>
            <div class="col-md-6 mb-2" style="margin-top: 30px;">
               <div class="form-group">
                  <label for="kids">어린이</label> 
                  <select name="child" id="child" class="form-control form-control-lg form-control-a">
                     <c:forEach var="i" begin="0" end="5">
                        <option value="${i}">어린이 ${i}명</option>
                     </c:forEach>
                  </select>
               </div>
            </div>
            <div class="col-md-12">
               <input type="submit" value="확인" class="bar-search" />
            </div>
         </div>
      </form>
   </div>
</div>

<!--/ Form Search End /-->



<!--/ Form Bar Start /-->


<nav
   class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top"
   style="background-color: white; width: auto;">
   <div id="loginout" class="log" style="border: 0px solid red;">
      <div style="position: absolute; left: 1620px; top: 5px;">
         <c:if test="${empty id}">
            <a class="login" href="#!" data-toggle="modal" data-target="#myModal">로그인</a>
         </c:if>
         <c:if test="${not empty id}">
            <a class="logout" href="#" onclick="location.href='/bnb/user/logout.do?url=' + location.href">로그아웃</a>
         </c:if>
      </div>
      <div style="position: absolute; left: 1690px; top: 5px;">
         <c:if test="${empty id}">
            <a class="regist" href="#" onclick="location.href='/bnb/user/regist.do'">회원가입</a>
         </c:if>
         <c:if test="${not empty id}">
            <a class="regist" href="/bnb/myinfo.do">마이페이지</a>
         </c:if> 
      </div>
   </div>
   <div class="container">
      <button class="navbar-toggler collapsed" type="button"
         data-toggle="collapse" data-target="#navbarDefault"
         aria-controls="navbarDefault" aria-expanded="false"
         aria-label="Toggle navigation">
         <span></span> <span></span> <span></span>
      </button>

      <a class="navbar-brand text-brand" href="/bnb/main.do"><img
         src="/bnb/img/logo.png" style="width: 120px;"></a>

      <div class="navbar-collapse collapse justify-content-center"
         id="navbarDefault" style="margin-top: 18px;">
         <ul class="navbar-nav">
            <li class="nav-item2" style="border: 0px solid black;"><a class="nav-link active headbar" href="/bnb/main.do" style="margin-right: 140px;">홈</a></li>

            <li class="nav-item2 dropdown" style="border: 0px solid black;" ><a
                href="/bnb/tour/tourmain.do" class="nav-link headbar"  id="navbarDropdown1"
               role="button" aria-haspopup="true" aria-expanded="false"  style="margin-right :130px;">여행지</a>
            </li>

            <li class="nav-item2 dropdown" style="border: 0px solid black;"><a
               class="nav-link dropdown-toggle headbar" href="#" id="navbarDropdown2"
               role="button" aria-haspopup="true" aria-expanded="false"  style=" margin-right :130px;">매칭</a>
               <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="/bnb/matching/localChatting.do"  >지역 채팅방</a> <a
                     class="dropdown-item" href="/bnb/matching/onechatting.do"  >1 : 1 매칭</a>
               </div></li>

            <li class="nav-item2" style="border: 0px solid black;"><a class="nav-link headbar" href="/bnb/host/addhost.do"
               >호스트 되기</a></li>
         </ul>
      </div>
      <button type="button"
         class="btn btn-b-n navbar-toggle-box-collapse d-none d-md-block"
         data-toggle="collapse" data-target="#navbarTogglerDemo01"
         aria-expanded="false">
         <span class="fa fa-search" aria-hidden="true"></span>
      </button>
   </div>
</nav>

<!--/ Form Bar End /-->


<!--/ Form Login Start / -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
   aria-labelledby="my80sizeModalLabel">
   <div class="modal-dialog modal-80size mdialog" role="document">
      <div class="modal-content modal-80size" style="border-radius: 15px;">
         <div class="modal-header" style="padding: 0px;">
            <div class="modal-title1" id="myModalLabel">
               <div class="modal-title2">
                  <span>로그인</span>
               </div>
            </div>
         </div>
         <div class="modal-body mbody" style="height: 265px;">

               <div class="wrap-input100 validate-input m-b-26"
                  data-validate="작성란을 입력하지 않았습니다.">
                  <span class="label-input100">아이디</span> <input class="input100"
                     type="text" name="id" autocomplete="off" id="idinput" required>
                  <span class="focus-input100"></span>
               </div>

               <div class="wrap-input100 validate-input m-b-18" data-validate="Password is required">
                  <span class="label2-input100">비밀번호</span> 
                  <input class="input100" type="password" name="pw" autocomplete="off" id="pwinput" required> 
                  
                  
                  <span class="login-message messagegroup" style="display: none;">가입하지 않은 아이디이거나, 잘못된 비밀번호입니다.</span>
                  
               </div>
               <div>
                  <input type="button" id="btnlogin" value="로그인"/>
                  <a href="/bnb/user/loginfind.do" class="txt1">아이디/비밀번호 찾기 </a> 
               </div>
               <input type="hidden" name="url" id="url">
         </div>
         <div class="modal-footer" style="border: none;">
            <button type="button" class="ion-ios-close btnclose" data-dismiss="modal"
               style="border: 1px solid #5D727C; position: absolute; left: 625px; top: 0px; font-weight: bold; background-color: #5D727C; color: white; font-size: 40px; outline: none; cursor: pointer;"></button>
         </div>
      </div>
   </div>
</div>
<script>


window.onload = function () {

   $("#searchform").submit(function(){
      event.preventDefault();
      
         
      var data=$("#searchform").serialize();
      //alert(data);
      location.href = "/bnb/accomodate/lentlist.do?" + data;
                  
   }); 

   
   $.datepicker.setDefaults({
       dateFormat: 'yy-mm-dd',
       prevText: '이전 달',
       nextText: '다음 달',
       monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
       monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
       dayNames: ['일', '월', '화', '수', '목', '금', '토'],
       dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
       dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
       showMonthAfterYear: true,
       yearSuffix: '년'
   });
   
   $( function() {
   var dateFormat = "mm/dd/yy",
     from = $( "#checkin" )
       .datepicker({
         defaultDate: "+1w",
         changeMonth: true,
         numberOfMonths: 1
       })
       .on( "change", function() {
         to.datepicker( "option", "minDate", getDate( this ) );
       }),
     to = $( "#checkout" ).datepicker({
       defaultDate: "+1w",
       changeMonth: true,
       numberOfMonths: 1
     })
     .on( "change", function() {
       from.datepicker( "option", "maxDate", getDate( this ) );
     });
   
   function getDate( element ) {
     var date;
     try {
       date = $.datepicker.parseDate( dateFormat, element.value );
     } catch( error ) {
       date = null;
     }
     return date;
   }
   });
   
   }
</script>

<!-- Form Login End -->













