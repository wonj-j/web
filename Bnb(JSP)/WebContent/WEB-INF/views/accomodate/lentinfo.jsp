<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/inc/asset.jsp"></jsp:include> <!-- HTML 라이브러리 -->

<link rel="stylesheet" href="/bnb/css/test.css">
<link rel="stylesheet" href="/bnb/css/jquery-ui.css">

<style>
	
	#topcontent td{
		/* border: 1px solid black; */
		margin:5px;
	}
	.item{
		
		width:300px;
		height: 250px;

	}
	#big {
		width: 540px;
		height:500px;
	}
</style>

</head>
<body>

<jsp:include page="/inc/header.jsp"></jsp:include> <!-- 메뉴바(헤더) -->
<jsp:include page="/inc/asset4.jsp"></jsp:include> <!-- JavaScript Libraries -->
		<section class="intro-single"> 
		<div class="container">
		<table id="topcontent">
			<tr>
				<td rowspan="2" colspan="2" >
					<img id="big" src="${pic1}" alt="First slide">
				</td>

				<td>
					<img class="item" src="${pic2}" alt="First slide">
				</td>
							<td>
					<img class="item" src="${pic3}" alt="First slide">
				</td>
			</tr>
			<tr>
				<td>
					<img class="item" src="${pic4}" alt="First slide">
				</td>
				<td>
					<img class="item" src="${pic5}" alt="First slide">
				</td>
			</tr>
		</table>
		
	<%-- 	<div id="mycarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#mycarousel" data-slide-to="0" class="active"></li>
		
			<li data-target="#mycarousel" data-slide-to="1"></li>
			<li data-target="#mycarousel" data-slide-to="2"></li>
			<li data-target="#mycarousel" data-slide-to="3"></li>
		</ol>

		<!-- Wrapper for slides -->
		
		<div id="topcontent" class="carousel-inner">
		<c:forEach items="${piclist}" var="pic" begin="0" end="0">
			<div class="carousel-item active picsize">
				<img src="${pic.accompic}" alt="First slide">
			</div>
		</c:forEach>
		<c:forEach items="${piclist}" var="pic" begin="1">
			<div class="carousel-item picsize">
				<img src="${pic.accompic}" alt="Second slide">
			</div>
		</c:forEach>
		
		</div>
		
		<!-- Controls -->
		<a class="left carousel-control" href="#mycarousel" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span>
			<span class="sr-only"></span>
		</a>
		<a class="right carousel-control" href="#mycarousel" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right"></span>
			<span class="sr-only"></span>
		</a>
	</div>
 --%>

	
	<div id="contents">
		<!-- <div class="box"> -->
		<div  id="accomtitle">
			 <i class="fas fa-home"></i>${accomresult.accomname}
		</div>
		<div>
			<div>
				<strong>숙소 소개</strong>
				<div>
					${accomresult.accominfo}
				</div>			
			</div>
			<a href="#!" id="btninfo" onclick="detailinfo()">숙소 자세히 알아보기<i class="fas fa-arrow-circle-down"></i> </a>
			<div id="detail">
				<strong>기타 사항</strong>
				<div>${accomresult.detailinfo}</div>
			</div>
		</div>
		<hr>
		<div id="convenience">
		<table id="conlist">
			<tr>
				<td class="upline size1">
					
					<strong><i class="fas fa-building"></i>건물유형</strong>
					
				</td>
				<td class="upline">
					<ul>
						<li>${accomresult.accomtype}</li>
					</ul>
				</td>
			</tr>
			<tr>
				<td class="upline size1">
					<strong>편의시설</strong>
				</td>
				<td class="upline">
					<ul>
					<c:forEach items="${clist}" var="nn">
						<li>${nn.name} : ${nn.cnt}개</li>
					</c:forEach>
					</ul>
				</td>
			</tr>
			<tr>
				<td class="upline size1">
					<strong>입실/퇴실 시간</strong>
				</td>
				<td class="upline">
					<ul>		
						<li>입실시간 : ${accomresult.checkintime}</li>
						<li>퇴실시간 : ${accomresult.checkouttime}</li>
					</ul>
				</td>
			</tr>
		</table>
		
		<hr>

		<div id="host-info">
		<div id="hostimg">
			<img src="${accomresult.userpic}" alt="">
		</div>
				<span id="hostname">호스트: ${accomresult.id} 님</span>
			<div id="hostintro">
				${accomresult.hostinfo}
			</div>
		</div>
		
		<hr>
		<div class="">
			<div class="title-box-d">
			<!--<h3 class="title-d section-t4">Comments (6)</h3>-->
			  <h3 class="title-d">Comments (6)</h3>
			</div>

			<div class="box-comments">
			  <ul class="list-comments">
			    <li>
				 <div class="comment-avatar">
				   <img src="/bnb/img/author-2.jpg" alt="">
				 </div>
				 <div class="comment-details">
				   <h4 class="comment-author">Emma Stone</h4>
				   <span>18 Sep 2017</span>
				   <p class="comment-description">
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores reprehenderit, provident cumque
					ipsam temporibus maiores
					quae natus libero optio, at qui beatae ducimus placeat debitis voluptates amet corporis.
				   </p>
				   <a href="3">Reply</a>
				 </div>
			    </li>
			    <li class="comment-children">
				 <div class="comment-avatar">
				   <img src="/bnb/img/author-1.jpg" alt="">
				 </div>
				 <div class="comment-details">
				   <h4 class="comment-author">Oliver Colmenares</h4>
				   <span>18 Sep 2017</span>
				   <p class="comment-description">
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores reprehenderit, provident cumque
					ipsam temporibus maiores
					quae.
				   </p>
				   <a href="3">Reply</a>
				 </div>
			    </li>
			    <li>
				 <div class="comment-avatar">
				   <img src="/bnb/img/author-2.jpg" alt="">
				 </div>
				 <div class="comment-details">
				   <h4 class="comment-author">Emma Stone</h4>
				   <span>18 Sep 2017</span>
				   <p class="comment-description">
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores reprehenderit, provident cumque
					ipsam temporibus maiores
					quae natus libero optio.
				   </p>
				   <a href="3">Reply</a>
				 </div>
			    </li>
</ul>
			</div>

			<hr>
			
			<div class="form-comments">
			  <div class="title-box-d">
			    <h3 class="title-d"> Leave a Reply</h3>
			</div>
			
			  <div id="reviewstar">
			    <div id="review-info">
				 <img src="/bnb/img/man_04.png" alt="" id="myimg">
				 <input type="text" placeholder="아이디" id="id">
				 <div class="starRev">
				   <!-- 별 회색 -->
				   <div class="starR1"></div>
				   <div class="starR1"></div>
				   <div class="starR1"></div>
				   <div class="starR1"></div>
				   <div class="starR1"></div>
				   <hr style="border:0px;">
			    
				   <!-- 별 색깔 -->
				   <div class="starR2 star" data-star="0"></div>
				   <div class="starR3 star" data-star="1"></div>
				   <div class="starR2 star" data-star="2"></div>
				   <div class="starR3 star" data-star="3"></div>
				   <div class="starR2 star" data-star="4"></div>
				   <div class="starR3 star" data-star="5"></div>
				   <div class="starR2 star" data-star="6"></div>
				   <div class="starR3 star" data-star="7"></div>
				   <div class="starR2 star" data-star="8"></div>
				   <div class="starR3 star" data-star="9"></div>
			    
				   <span class="point">0</span><span class="man">/5.0 </span>
			  
			    </div> <!-- starRev -->
 
			    </div><!-- review-info -->

			    <div id="myreview">
				 <textarea name="" id="reply" cols="80" rows="6" placeholder="리뷰를 남겨주세요." required></textarea>
				 <input type="button" id="leave-review" value="리뷰작성하기">
			    </div> <!-- myreview -->
			    
			  </div> <!-- reviewstar -->

			</div>

		   </div>
		
	</div>
	</div>

</div>
	<form action="/bnb/reservation/reservation1.do" method="POST">
	<div id="bookmain">
		<div>예약 날짜와 인원 선택</div>
		<hr>
		<div>
			<div>날짜</div>
			<label for="from">From</label>
			<input type="text" id="from" value="${checkin}" name="from" required onchange="setdate()">
			<!-- <i class="fas fa-arrow-right"></i>-->
			<label for="to">To</label>
			<input type="text" id="to" name="to" value="${checkout}" required onchange="setdate()">
		</div>
		<hr>
		<div>
			인원
			<div>
				<input name="btn1" id="btn1" type="text" value="${adult+child}" required readonly>
				<div id="selectnum">
					<div>
						<span>성인</span>
						<span>
							<button id="minus1" type="button"><i class="fas fa-minus"></i></button>
							<input id="adult2" type="text" value="${adult}" readonly>
							<button id="plus1" type="button"><i class="fas fa-plus"></i></button>
						</span>
					</div> 
					<div>
						<span>어린이</span>
						<span>
							<button id="minus2" type="button"><i class="fas fa-minus"></i></button>
							<input id="child2" type="text" value="${child}" readonly>
							<button id="plus2" type="button"><i class="fas fa-plus"></i></button>
						</span>
					</div> 
				</div>
			</div>
		</div>
		<hr>
		<div class="book3">
			<div>
				<span><i class="fas fa-won-sign"></i>기본요금</span>
				<span>${accomresult.fee}</span>
			</div>
			<div>
				<span>숙박일</span>
				<!-- <span id="accomday"></span> -->
				<span><input type="text" name="day" id="accomday" readonly>일</span>
				<!-- <span><input type="text" readonly id="accomday"></span> -->
			</div>
			<div>
				<span><i class="fas fa-won-sign"></i>합계</span>
				<span><input type="text" name="sum" id="accomsum" readonly></span>
			</div>
		</div>
		<hr>
			<input type="submit" id="bookbtn" value="예약하기">
			<input type="hidden" name="checkin" value="${accomresult.checkintime}"/>
			<input type="hidden" name="checkout" value="${accomresult.checkouttime}"/>
			<input type="hidden" name="fee" value="${accomresult.fee}"/>
			<input type="hidden" name="hseq" value="${hseq}"/>
			
	</div>
</form>
	</section>

	

	<jsp:include page="/inc/footer.jsp"></jsp:include> <!-- Footer (맨밑 메뉴) -->
 	<jsp:include page="/inc/asset3.jsp"></jsp:include>  <!-- JavaScript Libraries --> --%>
	<script src="/bnb/js/header.js"></script>
	<script>

	
	
	$("#from,#to").change(function(){
		setdate();
	});
	
	if($("#from,#to").val()!=null){
		setdate();
	}
	
	

	function detailinfo(){
		
		$("#detail").slideToggle();
		
		
	}
	
	$('#btn1').click(function () {
		$('#selectnum').slideToggle();
	});
	// 인원수

	var sum;


	$('#plus1').click(function () {
		$('#adult2').val(parseInt($('#adult2').val()) + 1);
		sum = parseInt($('#adult2').val()) + parseInt($('#child2').val());
		$('#btn1').val(sum);
	});

	$('#minus1').click(function () {
		if ($('#adult2').val() > 0) {
			$('#adult2').val(parseInt($('#adult2').val()) - 1);
			sum = parseInt($('#adult2').val()) + parseInt($('#child2').val());
			$('#btn1').val(sum);
		}
	});


	$('#plus2').click(function () {
		// sum=parseInt(('#btn1').val());
		$('#child2').val(parseInt($('#child2').val()) + 1);
		sum = parseInt($('#adult2').val()) + parseInt($('#child2').val());
		$('#btn1').val(sum);
	});

	$('#minus2').click(function () {
		if ($('#child2').val() > 0) {
			$('#child2').val(parseInt($('#child2').val()) - 1);
			sum = parseInt($('#adult2').val()) + parseInt($('#child2').val());
			$('#btn1').val(sum);
		}
	});


 
	$(document).scroll(function () {

		if ($(document).scrollTop() > $('#topcontent').outerHeight()) {
			$('#bookmain')
				.css({
					position: "fixed",
					right:"140px",
				    top:"120px"
				});
		}

		else if ($(document).scrollTop() <= $('#topcontent').outerHeight()+10) {
			$("#bookmain")
				.css({
					position: "absolute",
					left:"65%",
				    top:"80%"
				});

		}

	});
	
	$('.carousel').carousel({
		interval: 2000
	}); 
	
	
	$.datepicker.setDefaults({
        dateFormat: 'yy/mm/dd',
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

	
	
	function setdate(){
		var date1=$("#from").val();
		var date2=$("#to").val();
		var a=date1.split("-");
		var b=date2.split("-");
		
		var fromdate=new Date(a[0],a[1],a[2]);
		var todate=new Date(b[0],b[1],b[2]);
		
		var day=todate-fromdate;
		
		day=day/(24*60*60*1000);
		
		$("#accomday").val(day);
		$("#accomsum").val(day*'${accomresult.fee}');
	}
	
	

//datepicker 예약, 검색
		$(function () {
				dateFormat ="yy-mm-dd",
				from = $("#from")
					.datepicker({
						defaultDate: "+1w",
						changeMonth: true,
						numberOfMonths: 1,
						dateFormat:"yy-mm-dd"
					
					})
					.on("change", function () {
						to.datepicker("option", "minDate", getDate(this));
					}),
				to = $("#to").datepicker({
					defaultDate: "+1w",
					changeMonth: true,
					numberOfMonths: 1,
					dateFormat:"yy-mm-dd",
					mindate:from.val()
				})
				
					.on("change", function () {
						from.datepicker("option", "maxDate", getDate(this));
					});

			function getDate(element) {
				var date;
				try {
					date = $.datepicker.parseDate(dateFormat, element.value);
				} catch (error) {
					date = null;
				}
				return date;
			}
		});

		var star = $(".star");
      
      $(".starR2").click(function(){
        fill(event.srcElement.dataset['star']);
          
      });
      $(".starR3").click(function(){
        fill(event.srcElement.dataset['star']);

      });
	
      function fill(number) {
		var point; 
		// point = $(".point").text().split("/");
        for(var i=0; i<10; i++){
          // console.log(star[i]);
          // star[i].style.visibility="hidden";
          star[i].style.opacity="0.1";
        }
	  


        for(var i=0; i<=number; i++){
          star[i].style.opacity="1";
          // star[i].style.visibility="visible";
        }
	//    if(0<number<4){
	// 	$(".point").text(parseFloat(point[0])- 0.5+"/5.0");
	//    }else if(5<number<9){
	// 	$(".point").text(parseFloat(point[0])+ 0.5+"/5.0");
	//    }

      }
 
        

	
	</script>
	
</body>
</html>