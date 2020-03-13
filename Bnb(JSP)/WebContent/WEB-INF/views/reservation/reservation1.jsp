<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

<jsp:include page="/inc/asset.jsp"></jsp:include> <!-- HTML 라이브러리 -->
<jsp:include page="/inc/asset2.jsp"></jsp:include> <!-- JavaScript Libraries -->
<link rel="stylesheet" href="/bnb/css/test.css">
</head>

<body>

<jsp:include page="/inc/header.jsp"></jsp:include> <!-- 메뉴바(헤더) -->

<!-- 결제 창 -->
<section class="intro-single"> 
<form action="" method="POST" id="snext">
 <div class="container" id="payask">
<!-- <div id="box3"> -->
	<div id="box" class="box-bottom">
		<div>예약하기 <input  type="submit" id="btnsub" value=">"></div>

	</div>


<div id="paymentbox">
	<div id="checktime">
			<div class="list"><i class="far fa-calendar-alt"></i> 여행 날짜 확인하기</div>
			<div>
				<span id="check-in">
					${from}&nbsp;&nbsp;입실시간:${accomdto.checkintime}
				</span>
				<i class="fas fa-arrow-right"></i>
				<span id="check-out">
					${to}&nbsp;&nbsp;퇴실시간:${accomdto.checkouttime}
				</span>
			</div>
	</div>

	<hr>

	<div id="warning">
		<div class="list">
			주의할 사항
		</div>
		<%-- <c:forEach items="${rulelist}" var="list"> --%>
		<div>
			${rule}			
		</div>
		<%-- </c:forEach> --%>
		
		<!-- <a href="" id="infobtn">주의사항 더보기</a> -->
		<!-- <input type="button" id="infobtn" name="button" value="주의사항 더보기"></button>
		<div id="moreinfo" for="infobtn">
			<span class="list">추가 유의사항</span>
			<p>
				
			</p>
		</div> -->
	</div>
	<hr>
	<div>
		<div class="list">마일리지 및 이벤트</div>
		<div>
			리뷰 작성시 숙박비의 5% 마일리지를 적립 가능!
			숙박 6일 시 1일 숙박 무료 제공!
			</div>
		</div>
	</div>

<div id="box4">
	<span><img id="represent-img" src="${pic}"></span>
		<span class="lent-name">
			<h5>${accomdto.accomname}</h5>
		</span>
		<div class="arrange">
			<span><i class="fas fa-users"></i>게스트 인원</span>
			<span>${cnt}명</span>
		</div>
	<div class="arrange" id="lent-price">
		<span><i class="fas fa-home"></i>숙박비/1박</span>
		<span>${fee}원</span>
	</div>
	<div class="arrange" id="lent-sum">
		<span><i class="fas fa-won-sign"></i>합계</span>
		<span>${day*fee}원</span>
	</div>
</div>

</div>
<input type="hidden" value="${cnt*fee}" name="sum"/>
<input type="hidden" value="${fee}" name="fee"/>
<input type="hidden" value="${cnt}" name="cnt"/>
<input type="hidden" value="${from}" name="checkin"/>
<input type="hidden" value="${to}" name="checkout"/>
<input type="hidden" value="${accomdto.accomname}" name="accomname"/>
<input type="hidden" value="${hseq}" name="hseq"/>
<input type="hidden" value="${day}" name="day"/>
<input type="hidden" value="${pic}" name="accompic"/>

</form>
</section>
<jsp:include page="/inc/asset3.jsp"></jsp:include>

<script src="/bnb/js/header.js"></script>






<script>

$("#snext").submit(function(){
	event.preventDefault();
	var data=$("#snext").serialize();
	location.href="/bnb/reservation/reservation.do?"+data;
	//alert(data);
	
})




	$('#menuselect li > a').click(function () {
		$('#menustatus').text($(this).text());
		alert($(this).text());

	});

	$('#infobtn').on('click', function () {
		// $('#moreinfo').toggle(500);
		$('#moreinfo').fadeToggle(600);
	});

</script>



</body>

</html>