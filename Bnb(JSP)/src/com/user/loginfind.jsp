<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="/inc/asset.jsp"></jsp:include>
<!-- HTML 라이브러리 -->

<link rel="stylesheet" href="/bnb/css/jquery-ui.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">

<style>
#txtnumber {
   padding: 0px 8px;
   outline: none;
   margin-left: 10px;
   color: black;
}

.findid {
   position: absolute;
   left: 450px;
   top: 200px;
   font-size: 25px;
   width: 500px;
   height: 600px;
   text-align: center;
}

.findpassword {
   position: absolute;
   left: 950px;
   top: 200px;
   font-size: 25px;
   width: 500px;
   height: 600px;
   text-align: center;
}

.boxid {
   border: 2px solid #3E656B;
   width: 400px;
   height: 220px;
   position: absolute;
   left: 500px;
   top: 270px;
   border-radius: 10px;
}

.name {
   margin-bottom: 20px;
   padding: 10px;
}

.boxpassword {
   border: 2px solid #3E656B;
   width: 400px;
   height: 220px;
   position: absolute;
   left: 1000px;
   top: 270px;
   border-radius: 10px;
}

.btnid {
   margin: 30px 70px;
   border-radius: 5px;
   border: none;
   background-color: teal;
   color: white;
   width: 110px;
   height: 40px;
   outline: none;
   cursor: pointer;
}

.btnpassword {
   margin: 30px 70px;
   border-radius: 5px;
   border: none;
   background-color: teal;
   color: white;
   width: 110px;
   height: 40px;
   outline: none;
   cursor: pointer;
}

.find-login {
   float: right;
}

.find {
   font-size: 20px;
   border: 0px solid black;
}

.find-content {
   display: block;
   height: 70px;
   margin: 30px 0px;
}

.find input[name=rb] {
   display: none;
}

.find label {
   border: 1px solid #ccc;
   border-bottom: 0px;
   width: 350px;
   padding: 20px 0px;
   margin: 0px;
   cursor: pointer;
   float: left;
}

.find input[type=radio]:checked+label {
   background-color: #56C3B8;
   color: white;
   font-weight: bold;
}

.find input[type=radio]+label {
   color: black;
}

#txt2 {
   display: none;
}

.rblist {
   margin-right: 5px;
   margin-left: 60px;
   margin-top: 20px;
}

.rbs {
   margin: 0px;
   text-align: left;
}

li > input {
   width: 250px;
   height: 30px;
   padding: 0px 8px;
}

#btnphone {
   margin-left: 10px;
   width: 60px;
   /* transform: translate(0px, 2.5px); */
}
#btnbirth {
   margin-left: 10px;
   width: 60px;
   /* transform: translate(0px, 2.5px); */
}




</style>
<head>
	
</head>

<body>

   <jsp:include page="/inc/header.jsp"></jsp:include>
   <jsp:include page="/inc/asset4.jsp"></jsp:include>


   <div class="find-bx"
      style="width: 700px; height: 345px; margin: 230px auto; text-align: center;">
      <div class="find-content" style="display: block; width: 700px;">
         <div class="find">
            <input type="radio" id="rb1" name="rb" checked /> <label for="rb1"
               style="border-right: 0px;"><i class="far fa-id-badge"
               style="font-size: 20px;"></i> 아이디 찾기</label> <input type="radio" id="rb2"
               name="rb" /> <label for="rb2" style="border-left: 0px;"><i
               class="fas fa-lock"></i> 비밀번호 찾기</label>
            <div style="clear: both;"></div>
         </div>

         <div id="txt1" style="border: 1px solid #ccc; padding: 10px 0px;">
         	<div id="txt">
            <div class="rbs">
               <input type="radio" id="rblist1" class="rblist" name="rblist" checked><label
                  for="rblist1">회원정보에 등록된 휴대전화로 찾기</label>
            </div>
            <div id="rb-phone" style="border: 0px solid black; margin-left: 37px;">
               <ul style="list-style-type: none; text-align: left;">
                  <li>이름 <input type="text" id="name" name="name" style="margin-left: 38px; outline: none;" required/></li>
               </ul>
               <ul style="list-style-type: none; text-align: left;">
                  <li>
                  	휴대전화 <input type="text" id="tel" name="tel" style="margin-left: 10px; outline: none; margin-bottom: 25px;" required="required" /><input type="submit" value="확인" id="btnphone" />
              	  	<span class="message" style="display: block; color: tomato; font-size: 13px; margin-left: 10px;"></span>
                  </li>
               </ul>
            </div>
            <hr>
            <div class="rbs">
               <input type="radio" id="rblist2" class="rblist" name="rblist"><label
                  for="rblist2">이름 / 생년월일 / 성별로 찾기</label>
            </div>
            <div id="rb-birth" style="border: 0px solid black; margin-left: 37px; display: none;">
               <ul style="list-style-type: none; text-align: left; ">
                  <li>
                     이름 <input type="text" id="name2" name="name2" style="margin-left: 38px; width: 220px; outline: none;" required="required" />
                     <select id="gender" style=" height: 30px; width: 80px;  display: inline-block; margin-left: 5px; "  >
                        <option value="g">성별</option>
                        <option value="m">남자</option>
                        <option value="f">여자</option>
                     </select>
                  </li>
               </ul>
               <ul style="list-style-type: none; text-align: left;">
                  <li>생년월일 <input type="text" id="year" name="year" placeholder="년도(4자리)" style="margin-left: 10px; margin-top: 0; width: 130px; outline: none;" required="required"/>
                     <select id="gender" style=" height: 25px; width: 80px;  display: inline-block; margin-left: 5px; "  >
                        <option value="0">월</option>
                        <c:forEach var="i" begin="1" end="12">
                        <option value="i">${i}</option>
                        </c:forEach>
                     </select>
                     <input type="text" id="date" name="date"  placeholder="일" style="width: 80px;  margin-left: 5px; outline: none;" required="required">
                  <input type="submit" value="확인" id="btnbirth" /></li>
               </ul>
            </div>
            </div>
            <div>
            	<p id="pid" style="display: none;">고객님의 정보와 일치하는 아이디입니다.</p>
            	<span id="asdf" style="margin-left: 10px;"></span>
            </div>
         </div>
         <div id="txt2" style="border: 1px solid #ccc;">
            <div style="margin: 60px 0px;">
               <input type="text" id="id" name="id" placeholder="S2BNB 아이디를 입력해주세요." style="width: 300px; padding: 0px 8px;">
               <input type="submit" value="확인" style="width: 60px; margin-left: 10px;" > 
            </div>
         </div>
      </div>
   </div>

   <jsp:include page="/inc/asset3.jsp"></jsp:include>
  
   <script src="/bnb/js/header.js"></script>


   <script>
		$("#name").focus();
		
		$("#rb1").click(function() {
			$("#txt1").css("display", "block");
			$("#txt2").css("display", "none");
		});
	
		$("#rb2").click(function() {
			$("#txt2").css("display", "block");
			$("#txt1").css("display", "none");
		});
		
		$("#rblist1").click(function() {
			$("#rb-phone").css("display", "block");
			$("#rb-birth").css("display", "none");
		});
		
		$("#rblist2").click(function() {
			$("#rb-phone").css("display", "none");
			$("#rb-birth").css("display", "block");
		});
		
		$("#btnphone").click(function() {
			
			$.ajax({
				
				type: "POST",
				url: "/bnb/user/findphone.do",
				data: "name=" + $("#name").val() + "&tel=" + $("#tel").val(),
				dataType:"text",
				success: function(result) {
					console.log(result);
					if(result != "null") {
						$("#txt").css("display", "none");
						$("#pid").css("display", "block");
						$("#asdf").text("아이디 : " + result);
					} else {
						$(".message").text("회원정보와 일치하는 아이디가 없습니다.");
					} 
				},
				error: function(a,b,c) {
					console.log(a,b,c);
				}
				
			});
			
			
			
			
			
		});
		
		
	</script>









   <!-- <div class="find">
      <div class="findid" style="1px solid red;">
         <i class="far fa-id-badge"></i> 아이디 찾기
      </div>
      <div class="boxid">
         <div style="margin: 30px 80px;">
            <div class="name">
               이름<input type="text" class="txt"
                  style="padding: 0px 8px; outline: none; position: absolute; left: 145px;">
            </div>
            <div class="number">
               전화번호<input type="text" id="txtnumber">
            </div>
            <input type="button" class="btnid" value="아이디 찾기">
         </div>
      </div>
      <div class="findpassword">
         <i class="far fa-id-badge"></i> 비밀번호 찾기
      </div>
      <div class="boxpassword">
         <div style="margin: 40px 80px;">
            <div class="id"
               style="margin-bottom: 30px; border: 0px solid cadetblue;">
               아이디<input type="text" class="txt"
                  style="padding: 0px 8px; outline: none; position: absolute; left: 145px;">
            </div>
            <div class="email">
               이메일<input type="text" class="txtemail"
                  style="padding: 0px 8px; outline: none; margin-left: 24px; color: black;">
            </div>
            <input type="button" class="btnpassword" value="비밀번호 찾기">
         </div>
      </div>
   </div>
 -->



</body>
</html>