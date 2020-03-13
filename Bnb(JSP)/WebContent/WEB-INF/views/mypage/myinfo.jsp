<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- JSTL  -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
	integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP"
	crossorigin="anonymous">
<jsp:include page="/inc/asset.jsp"></jsp:include>


 <link href="/bnb/css/mypagemenu.css" rel="stylesheet">
  <style>

    .name-box{
      display: inline-block;
      width: 35%;
      text-align: right;
    }

    .btn-align{
      margin: 0 auto; 
    }
    .btn.btn-danger{
      position: absolute;
      width: 80px;
      height: 35px;
      left: 70%;
      font-size: 0.8em;
      font-weight: bold;
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
  .label-radio{
    margin-right: 15px;
  }
  .gender{
    margin-right: 30px;
  }
  .birth{
    margin-left: 6px;
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
            <h1 class="title-single">개인 정보 수정</h1>
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
          <form class="form-a" name="form1" method="POST" action="/bnb/checkinfo.do" enctype="multipart/form-data">
          <!-- <form method="POST" action="/bnb/checkinfo.jsp"> -->
          
            <div class="row">
              <div class="col-md-12 mb-1">
                <span class="name-box">이름:</span><input type="text" class="form-control form-control-lg form-control-a"
                  id="inputName" placeholder="이름 *" 
                  style="width: 200px;display: inline-block; margin-left: 10px; margin-top: 100px;" name="inputname" value="${dto.name}" disabled>
              </div>
            </div> 
          
            <div class="row">
              <div class="col-md-12 mb-1">
                <span class="name-box">이메일:</span>
                <input type="email" class="form-control form-control-lg form-control-a"
                  id="inputEmail" placeholder="Email *" 
                  style="width: 400px;display: inline-block; margin-left: 10px;" 
                  name="inputemail" value="${dto.email}" required>
              </div>
            </div>
          
            <div class="row">
              <div class="col-md-12 mb-1">
                <span class="name-box">아이디:</span><input type="text" class="form-control form-control-lg form-control-a"
                  id="inputId" placeholder="아이디 *" style="width: 300px;display: inline-block; margin-left: 10px;" name="inputid" value="${dto.id}" disabled>
              </div>
            </div>
          
            <div class="row">
              <div class="col-md-12 mb-1">
                <span class="name-box">비밀번호:</span><input type="password" class="form-control form-control-lg form-control-a"
                  id="password1" placeholder="비밀번호 *" style="font-family:none!important; width: 300px;display: inline-block; margin-left: 10px;" value="${dto.pw}" required>
              </div>
            </div>
          
            <div class="row">
              <div class="col-md-12 mb-1">
                <span class="name-box">비밀번호확인:</span><input type="password" class="form-control form-control-lg form-control-a"
                  id="password2" placeholder="비밀번호확인 *" style="font-family:none!important;width: 300px;display: inline-block; margin-left: 10px;" name="pw" value="${dto.pw}" required>
              </div>
            </div>
          
            <div class="row">
              <div class="col-md-12 mb-1">
                <span class="name-box">핸드폰번호:</span><select class="form-control"
                  style="display: inline-block; width: 100px; height: 50px; margin-left: 10px; margin-right: 10px;" id="tel1" name="tel1">
                  <option value="010">010</option>
                  <option value="011">011</option>
                </select>-<input type="text" class="form-control form-control-lg form-control-a" id="tel2"
                  style="width: 100px;display: inline-block; margin-left: 10px; margin-right: 10px; height: 50px;" name="tel2" value="${dto.tel.split('-')[1]}"
                  required>-<input type="text" class="form-control form-control-lg form-control-a" id="tel3"
                  style="width: 100px;display: inline-block; margin-left: 10px; height: 50px;" name="tel3"
                  value="${dto.tel.split('-')[2]}" required>
              </div>
            </div>
           
            <div class="row">
              <div class="col-md-12 mb-1">
                <span class="name-box">프로필사진:</span>
                
                <%-- <c:if test="${dto.pic.endsWith(\".jpg\")||dto.pic.endsWith(\".png\")||dto.pic.endsWith(\".jpeg\")||dto.pic.endsWith(\".gif\")}"> --%>
                <input type="hidden" name="picname" value="${dto.pic}">
                <img id="profileimg" src="${dto.pic}">
                <%-- </c:if> --%>
                
              <%--   <c:if test="${!(dto.pic.endsWith(\".jpg\")||dto.pic.endsWith(\".png\")||dto.pic.endsWith(\".jpeg\")||dto.pic.endsWith(\".gif\"))}">
                <input type="hidden" name="picname" value="man_04.png">
                <img id="profileimg" src="/bnb/img/man_04.png">
                 </c:if> --%>
                 
                <input type="file" class="form-control form-control-lg form-control-a"
                  id="profile" style="width: 300px;display: inline-block; margin-left: 10px;" name="pic">
              </div>
            </div>

                       

            <div class="row">
              <div class="col-md-12 mb-1">
              	<span class="name-box">생년월일:</span>
                <input type="text" name="birthYear" class="form-control birth" id="birthYear" value="${dto.birth}"
                style="width: 200px;display: inline-block; margin-left: 8px;" disabled>
              </div>
            </div>

            <div class="row">             
                <span class="name-box" style="margin-left: 5px;">간단소개글(취미):</span>
                
                <textarea name="hobby" id="hobby" cols="30" rows="10" class="form-control" 
                style="width: 200px; display: inline-block; margin-left: 13px;">${dto.hobby}</textarea>
                
            </div> 
            
            <div class="row" style="padding-top:30px;">
              <input type="submit" value="입력완료" class="btn btn-a btn-align">
              <button type="button" class="btn btn-danger" style="margin-top:23px; margin-left: 25px;" id="throwbtn">회원탈퇴</button>
            </div>
            
          	<input type="hidden" name="seq" value="${dto.seq}">
          	
          </form>      
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
var sel_file;

$(document).ready(function() {
    
    $("#profile").on("change", handleImgFileSelect);
    $("#profileimg").css({
    	"width" : "150px",
    	"height" : "150px",
    	"margin-left" : "10px",
    	"border-radius" : "50%"
    });


   	 if("${dto.tel.split('-')[0]}" == $("#tel1").val("010")){
   		$("#tel1").val("010").prop("selected","true");
   		$("#tel1").val("011").prop("selected","false");
   	 } else if ("${dto.tel.split('-')[0]}" == $("#tel1").val("011")){
   		$("#tel1").val("011").prop("selected","true");
   		$("#tel1").val("010").prop("selected","false");
   	 } else {
   		$("#tel1").val("010").prop("selected","true");
   	 }
     
}); 

function handleImgFileSelect(e) {
    var files = e.target.files;
    var filesArr = Array.prototype.slice.call(files);

    filesArr.forEach(function(f) {
        if(!f.type.match("image.*")) {
            alert("확장자는 이미지 확장자만 가능합니다.");
            return;
        }

        sel_file = f;

        var reader = new FileReader();
        reader.onload = function(e) {
            $("#profileimg").attr("src", e.target.result);
        }
        reader.readAsDataURL(f);
    });
}

</script>
</body>
</html>