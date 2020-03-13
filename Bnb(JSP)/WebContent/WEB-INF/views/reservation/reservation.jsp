<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<jsp:include page="/inc/asset.jsp"></jsp:include> <!-- HTML 라이브러리 -->
<link rel="stylesheet" href="/bnb/css/test.css">
</head>
<body>
<jsp:include page="/inc/header.jsp"></jsp:include> <!-- 메뉴바(헤더) -->
<jsp:include page="/inc/asset4.jsp"></jsp:include> <!-- JavaScript Libraries -->
		<section class="intro-single">
		
<form method="POST" id="ask" action="/bnb/reservation/reservationok.do">
		<div class="container">
		<div id="box" class="box-bottom">
		<div><input type="button" id="prebtn" onclick="history.back();" value="<">예약하기</div>
		
		</div>
		<div id="paymentbox">
		<div id="checktime">
			<div class="list">여행 날짜 확인하기</div>
			<span>체크인</span>
			<span id="check-in">${checkin}</span>
			->
			<span>체크아웃</span>
			<span id="check-out">${checkout}</span>
		</div>
		<hr>
		<div>
			<span class="list">문의번호</span>
			<span id="hostnum">${accomdto.tel}</span>
		</div>
		<hr>
		<div id="selectpay">
			<span class="list">결제수단 선택</span>
			
			<div class="dropdown" id="paylist">
				<button class="btn btn-default dropdown-toggle" type="button" name="button" id="dropdownMenu paylist" id="status"
					data-toggle="dropdown">
					<i class="far fa-credit-card">결제수단 선택</i>
				</button>
				<ul id="menuselect" class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
					<li role="presentation"><a role="menuitem" tabindex="-1" href="#">농협카드</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1" href="#">신한카드</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1" href="#">국민카드</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1" href="#">삼성카드</a></li>
				</ul>
			</div>
		</div>
		<hr>
		<div>
			<div class="list">결제(취소)정책</div>
			<div>
				체크인 날짜의 12:00PM 이전까지 예약을 취소하면 예약금의 50%를 환불해 드립니다.
			</div>
		</div>
		<hr>
			<div id="tohost">
			<div class="list">호스트에게 하고 싶은 말</div>
				<textarea required name="talktohost" rows="6" cols="50" placeholder="호스트님에게 인사하세요!"></textarea>
			</div>
			
			<!-- <div>
				<span class="list">이메일 인증하기</span>
				<div id="email-check"></div>
			</div>   -->

		</div>
		

	<div id="box4">
		<span><img id="represent-img" src="${accompic}" alt=""></span>
			<span class="lent-name">
				<h5>${accomname}</h5>
			</span>
			<div class="arrange">
				<span><i class="fas fa-users"></i>게스트 인원</span>
				<span>${cnt}명</span>
			</div>
		<div class="arrange" id="lent-price">
			<span><i class="fas fa-home"></i>숙박비</span>
			<span>${fee}원</span>
		</div>
		<div class="arrange" id="lent-sum pay">
			<span><i class="fas fa-won-sign"></i>합계</span>
			<span>${sum}원</span>
		</div>
		<input type="submit" id="paybtn" name="paybtn" value="예약요청하기">
		<input type="hidden" name="checkin" value="${checkin}">
		<input type="hidden" name="checkout" value="${checkout}">
		<input type="hidden" name="sum" value="${sum}">
		<input type="hidden" name="hseq" value="${hseq}">
		<input type="hidden" name="days" value="${days}" />
		</div>
		</div>
		</form>
		</section>
	

</body>

</html>