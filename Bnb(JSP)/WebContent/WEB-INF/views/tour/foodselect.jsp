<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<jsp:include page="/inc/asset.jsp"></jsp:include>
<!-- HTML 라이브러리 -->
<script src="/bnb/lib/jquery/jquery.min.js"></script>
<script src="/bnb/js/jquery-ui.js"></script>
<link rel="stylesheet" href="/bnb/css/jquery-ui.css">

<script src="/bnb/js/string.js"></script>


<!-- 이 링크때문에 footer 깨짐 -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
.tab-content {
	border: 1px solid black;
}

.nav-item {
	border: 0px solid tomato;
	margin: 0px auto;
}

.property-description {
	width: 850px;
	border: 0px solid blueviolet;
}

.col-md-7 {
	border: 0px solid steelblue;
	margin-bottom: 50px;
}

.section-md-t3 {
	border: 0px solid orangered;
}

.col-sm-12 {
	border: 1px solid brown;
}
/* .row{
     
        border: 1px solid blue;
    } */
#textMessage {
	height: 150px;
}

.menu-list {
	border: 0xp solid palevioletred;
	width: 800px;
	height: 300px;
	margin-bottom: 50px;
}

.menu-img {
	display: inline-block;
	width: 350px;
	height: 225px;
	margin-top: 50px;
}

.menu-price {
	color: red;
}

.menu-item {
	display: inline-block;
	font-weight: bold;
	position: relative;
	top: -65px;
	left: 105px;
	border: 0px solid teal;
	margin-top: 50px;
	margin-right: 80px;
	font-size: 1.5em;
}

.menu-description {
	display: block;
	width: 350px;
	height: 180px;
	float: right;
	margin-right: 40px;
	/* margin-bottom: 600px; */
	margin-top: -160px;
	border: 0px solid teal;
}

.menu-description::after {
	content: "";
	clear: both;
	display: block;
}

.menu {
	margin-top: -40px;
	padding-top: 8px;
	float: right;
	cursor: pointer;
	border-radius: 10px;
	color: white;
	border: 2px solid #56C3B8;
	background-color: #56C3B8;
	width: 150px;
	height: 40px;
	text-align: center;
	font-weight: bold;
}

.menu:hover {
	background-color: white;
	color: #56C3B8;
	text-decoration: underline;
}

.modal-body {
	height: 800px;
}

#carouselExampleControls {
	border: 0px solid black;
	margin: auto 0px;
}

.carousel-item img {
	width: 300px;
	height: 750px;
}

.hit {
	width: 500px;
	height: 500px;
	border: 0px solid blue;
	background: url('/bnb/img/hit.png');
	transform: scale(0.06) rotate(-30deg);
	position: relative;
	left: 188px;
	top: -470px;
}

#reviewstar {
	border: 1px solid black;
	width: 700px;
	position: relative;
	top: 0px;
	left: 0px;
}

#review-info {
	border: 1px solid #B02525;
}

#myimg {
	width: 130px;
	height: 130px;
}

.starRev {
	width: 280px;
	height: 50px;
	overflow: hidden;
	border: 1px solid blue;
	display: inline-block;
	position: relative;
	top: 20px;
	left: 60px;
}

.starR1 {
	display: inline-block;
	background: url('/bnb/img/star.png');
	background-repeat: no-repeat;
	width: 42px;
	height: 40px;
	margin-right: -5px;
	text-indent: -9999px;
	cursor: pointer;
	/* border: 1px solid olivedrab; */
	transform: scale(1.0);
}

.starR2 {
	display: inline-block;
	/* visibility: hidden; */
	/* display: none; */
	opacity: 0.1;
	position: relative;
	top: -65px;
	left: 1px;
	background: url('/bnb/img/star.png');
	background-position: 0px 40px;
	/* background-repeat: no-repeat; */
	transform: scale(1.0);
	width: 21px;
	height: 40px;
	text-indent: -9999px;
	cursor: pointer;
	/* border: 1px solid blue; */
}

.starR3 {
	display: inline-block;
	/* visibility: hidden; */
	/* display: none; */
	opacity: 0.1;
	position: relative;
	top: -65px;
	left: 1px;
	background: url('/bnb/img/star.png');
	background-position: 21px 40px;
	/* background-repeat: no-repeat; */
	transform: scale(1.0);
	width: 21px;
	height: 40px;
	margin-right: -5px;
	text-indent: -9999px;
	cursor: pointer;
	margin-left: -4px;

	/* border: 1px solid blue; */
}

.man {
	color: #B02525;
}

.point {
	position: absolute;
	top: 8px;
	left: 220px;
	display: inline-block;
	font-size: 1.0em;
	color: black;
	font-weight: bold;
	/* border: 1px solid navy; */
}

#myreview {
	border: 1px solid springgreen;
	width: 700px;
	margin-top: 10px;
}

#leave-review {
	position: relative;
	left: 450px;
	background-color: #56C3B8;
	color: white;
	width: 200px;
	height: 40px;
	border: 0px;
	font-weight: bold;
	cursor: pointer;
}

#leave-review:hover {
	background-color: white;
	color: #56C3B8;
	font-weight: bold;
	border: 2px solid #56C3B8;
}

#map {
	width: 97%;
	margin: 0px auto;
	margin-top: 50px;
	border: 0px solid;
}

.comment-avatar img {
	border-radius: 35px;
}

.revstar {
	display: inline-block;
	background: url('/bnb/img/star.png');
	background-position: 0px 40px;
	width: 42px;
	height: 40px;
	transform: scale(0.5) translate(20px, 25px);
}

.comment-details {
	position: relative;
	top: 0px;
	left: 0px;
}

.wrap-revstar {
	position: absolute;
	left: 100px;
	top: 14px;
	border: 0px solid springgreen;
}



#loading{
	text-align: center;

	display: none;	

	
}


/*----------------------------------  */



</style>

<script>
   
    $(document).ready(function(){
      
      var star = $(".star");
      
      $(".starR2").click(function(){
        fill(event.srcElement.dataset['star']);
        point(event.srcElement.dataset['star']);
        
      });
      $(".starR3").click(function(){
        fill(event.srcElement.dataset['star']);
        point(event.srcElement.dataset['star']);
      });

   
      function point(number){
      
        if(number==0){
        
          $(".point").html('0.5<span class="man">/5.0');
    
          
        } else if(number==1){
          $(".point").html('1.0<span class="man">/5.0');
       
         
       
    

        } else if(number==2){
          $(".point").html('1.5<span class="man">/5.0');

        } else if(number==3){
          $(".point").html('2.0<span class="man">/5.0');

        }else if(number==4){
          $(".point").html('2.5<span class="man">/5.0');

        } else if(number==5){
          $(".point").html('3.0<span class="man">/5.0');

        } else if(number==6){
          $(".point").html('3.5<span class="man">/5.0');

        } else if(number==7){
          $(".point").html('4.0<span class="man">/5.0');

        } else if(number==8){
          $(".point").html('4.5<span class="man">/5.0');

        } else if(number==9){
          $(".point").html('5.0<span class="man">/5.0');

        }

      }

      function fill(number) {

        for(var i=0; i<10; i++){
          // console.log(star[i]);
          // star[i].style.visibility="hidden";
     
          star[i].style.opacity="0.1";
        }
       


        for(var i=0; i<=number; i++){
          star[i].style.opacity="1";
          // star[i].style.visibility="visible";
        }
        
      } //fill
		
      
      $("#btn5").click(function() {
    	  $.ajax({
    		  
    		type:"POST",
  			url: "/bnb/food/menuimg.do",
  			data: "seq=" + ${seq}, 
  			//--------------------------요청
  			dataType:"json",
  			success:function(result){
  				
  				$("#carousel-inner").html(""); //초기화
  				
  				
  				
  				
  				$(result).each(function(index, item) {
  				
  					if(index==0){
  						var row = String.format("<div class='carousel-item active'><img class='d-block w-100' src='/bnb{0}' alt='First slide'></div>", item.menuImg);
  						
  					} else{
  						var row = String.format("<div class='carousel-item'><img class='d-block w-100' src='/bnb{0}' alt='First slide'></div>", item.menuImg);
  					}
  					
					
					$("#carousel-inner").append(row);
					
				});
  				
  				
  					
  					
  					
  			},
  			error:function(a,b,c){
  				console.log(a,b,c);
  			}
    		  
    		  
    	  });
		
	});
      
      
    $("#send").click(function() {
    	
			var receivemail = $("#receivemail").text();
			var name = $("#inputName").val();
			var subject = $("#inputSubject").val();
			var content =  $("#textMessage").val();
			var param = "receivemail="+receivemail+"&name="+name+"&subject="+subject+"&content="+content;
			
			$("#loading").show();
			$.ajax({
	    		  
	    		type:"POST",
	  			url: "/bnb/postman.do",
	  			data: param, 
	  			//--------------------------요청
	  			success:function(result){
	  				alert(result);
	  				$("#loading").hide();
	  				
	  					
	  			
	  					
	  			},

	  			error:function(a,b,c){
	  				
	  				console.log(a,b,c);
	  			}
	    		  
	    		  
	    	  });
		
			
			
	});
    

    }); //ready


  </script>
</head>

<body>

	<jsp:include page="/inc/header.jsp"></jsp:include>
	<!-- 메뉴바(헤더) -->


	<!--/ Intro Single star /-->
	<section class="intro-single">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-8">
					<div class="title-single-box">
						<h1 class="title-single">대독장</h1>
						<span class="color-text-a">북구, 논현로94길, 19</span>
					</div>
				</div>
				<div class="col-md-12 col-lg-4">
					<nav aria-label="breadcrumb"
						class="breadcrumb-box d-flex justify-content-lg-end">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html">부산</a></li>
							<li class="breadcrumb-item"><a href="property-grid.html">북구</a>
							</li>
							<li class="breadcrumb-item" aria-current="page"><a
								class="breadcrumb-item active" href="property-grid.html">한식</a>
							</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!--/ Intro Single End /-->

	<!--/ Property Single Star /-->
	<section class="property-single nav-arrow-b">



		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="property-single-carousel"
						class="owl-carousel owl-arrow gallery-property">
						<div class="carousel-item-b">
							<img src="/bnb/img/dadok.jpg" alt="">
						</div>
						<div class="carousel-item-b">
							<img src="/bnb/img/slide-3.jpg" alt="">
						</div>
						<div class="carousel-item-b">
							<img src="/bnb/img/slide-1.jpg" alt="">
						</div>

					</div>

					<hr>

					<div class="col-sm-12">
						<ul class="nav nav-pills-a nav-pills mb-3 section-t3"
							id="pills-tab" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								id="pills-video-tab" data-toggle="pill" href="#pills-video"
								role="tab" aria-controls="pills-video" aria-selected="true">메뉴판</a>
							</li>
							<li class="nav-item"><a class="nav-link"
								id="pills-plans-tab" data-toggle="pill" href="#pills-plans"
								role="tab" aria-controls="pills-plans" aria-selected="false">리뷰</a>
							</li>
							<li class="nav-item"><a class="nav-link" id="pills-map-tab"
								data-toggle="pill" href="#pills-map" role="tab"
								aria-controls="pills-map" aria-selected="false">정보</a></li>
						</ul>

						<!-- 모달 -->
						<div class="modal fade" id="dialog2">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">
									<div class="modal-header">
										<h4 class="modal-title">Menu</h4>
										<button type="button" class="btn btn-default close"
											data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>

									</div>
									<div class="modal-body">

										<div id="carouselExampleControls" class="carousel slide">
											<div id="carousel-inner" class="carousel-inner"></div>
											<a class="carousel-control-prev"
												href="#carouselExampleControls" role="button"
												data-slide="prev"> <span
												class="carousel-control-prev-icon" aria-hidden="true"></span>
												<span class="sr-only">Previous</span>
											</a> <a class="carousel-control-next"
												href="#carouselExampleControls" role="button"
												data-slide="next"> <span
												class="carousel-control-next-icon" aria-hidden="true"></span>
												<span class="sr-only">Next</span>
											</a>
										</div>







									</div>

								</div>
								<!--/.modal-content -->
							</div>
							<!--/.modal-dialog -->
						</div>
						<!--/.modal -->

						<div class="tab-content" id="pills-tabContent">

							<!-- 메뉴 -->
							<div class="tab-pane fade show active" id="pills-video"
								role="tabpanel" aria-labelledby="pills-video-tab">

								<!-- <div class="col-md-7 col-lg-7 section-md-t3"> -->
								<div class="col-md-10 offset-md-1 col-lg-10 offset-lg-1">
									<div class="title-box-d">
										<h3 class="title-d section-t4">음식</h3>

										<input type="button" class="menu" value="메뉴판 사진 보기" id="btn5"
											data-toggle="modal" data-target="#dialog2">
									</div>


									<c:forEach items="${list}" var="dto" varStatus="status">

										<div class="property-description menu-list">
											<img src="/bnb${dto.img}" class="menu-img">
											<div class="menu-item">${dto.name}
												- <span class="menu-price">$${dto.price}</span>
											</div>
											<div class="menu-description">${dto.content }</div>

											<c:if test="${dto.hit==1}">
												<div class="hit"></div>
											</c:if>
										</div>
									</c:forEach>


								</div>


							</div>

			<!-- 리뷰 -->
            <div class="tab-pane fade" id="pills-plans" role="tabpanel" aria-labelledby="pills-plans-tab">
              
              <div class="col-md-10 offset-md-1 col-lg-10 offset-lg-1">
                <!--  -->
                <div class="title-box-d">
                  <h3 class="title-d section-t4">Comments (6)</h3>
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
                        <div class="wrap-revstar">
                          <div class="revstar"></div> <b class="spoint">4.5</b>
                        </div>
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
                        <div class="wrap-revstar">
                          <div class="revstar"></div> <b class="spoint">4.5</b>
                        </div>
                        <p class="comment-description">
                          Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores reprehenderit, provident cumque
                          ipsam temporibus maiores
                          quae natus libero optio.
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
                        <div class="wrap-revstar">
                          <div class="revstar"></div> <b class="spoint">4.5</b>
                        </div>
                        
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
                    
                        <span class="point">0.0<span class="man">/5.0 </span>
                  
                    </div> <!-- starRev -->
  
  
  
                    </div><!-- review-info -->
                    
  
                    
                    <div id="myreview">
                      <textarea name="" id="reply" cols="84" rows="6" placeholder="리뷰를 남겨주세요
                                      ." required></textarea>
                      <input type="button" id="leave-review" value="리뷰작성하기">
                    </div> <!-- myreview -->
                    
                  </div> <!-- reviewstar -->

                </div>

              </div>
       

            </div>

							<!-- 정보 -->
							<div class="tab-pane fade" id="pills-map" role="tabpanel"
								aria-labelledby="pills-map-tab">
								<div class="col-md-10 offset-md-1 col-lg-10 offset-lg-1">

									<div class="row">
										<div class="col-sm-12">
											<div class="title-box-d">
												<h3 class="title-d section-t3">Property Description</h3>
											</div>
										</div>
									</div>
									<div class="property-description">
										<p class="description color-text-a">Vestibulum ante ipsum
											primis in faucibus orci luctus et ultrices posuere cubilia
											Curae; Donec velit neque, auctor sit amet aliquam vel,
											ullamcorper sit amet ligula. Cras ultricies ligula sed magna
											dictum porta. Curabitur aliquet quam id dui posuere blandit.
											Mauris blandit aliquet elit, eget tincidunt nibh pulvinar
											quam id dui posuere blandit.</p>
										<p class="description color-text-a no-margin">Curabitur
											arcu erat, accumsan id imperdiet et, porttitor at sem. Donec
											rutrum congue leo eget malesuada. Quisque velit nisi, pretium
											ut lacinia in, elementum id enim. Donec sollicitudin molestie
											malesuada.</p>
									</div>
									<div class="row section-t3">
										<div class="col-sm-12">
											<div class="title-box-d">
												<h3 class="title-d">Amenities</h3>
											</div>
										</div>
									</div>
									<div class="amenities-list color-text-a">
										<ul class="no-margin">
											<li style="list-style-type: none;"><i
												class="fa fa-clock-o" aria-hidden="true"></i> 평일 16:00 -
												24:00</li>
											<li style="list-style-type: none;"><i
												class="fa fa-clock-o" aria-hidden="true"></i> 토요일 16:00 -
												23:30</li>
											<li style="list-style-type: none;"><i
												class="fa fa-clock-o" aria-hidden="true"></i> 일요일 16:00 -
												23:30</li>
											<li style="list-style-type: none;"><i
												class="fa fa-map-marker" aria-hidden="true"></i> 서울 강남구 강남대로
												110길 14</li>
											<li style="list-style-type: none;"><i class="fa fa-home"
												aria-hidden="true"></i> 단체석, 주차, 예약, 무선 인터넷, 남/녀 화장실 구분</li>


										</ul>
									</div>
								</div>
								<div id="map">
									<iframe
										src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.1422937950147!2d-73.98731968482413!3d40.75889497932681!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25855c6480299%3A0x55194ec5a1ae072e!2sTimes+Square!5e0!3m2!1ses-419!2sve!4v1510329142834"
										width="100%" height="460" frameborder="0" style="border: 0"
										allowfullscreen></iframe>
								</div>
								<div class="col-md-12">
									<div class="row section-t3">
										<div class="col-sm-12">
											<div class="title-box-d">
												<h3 class="title-d">Contact Agent</h3>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-lg-4">
											<img src="/bnb/img/agent-4.jpg" alt="" class="img-fluid">
										</div>
										<div class="col-md-6 col-lg-4">
											<div class="property-agent">
												<h4 class="title-agent">Anabella Geller</h4>
												<p class="color-text-a">Nulla porttitor accumsan
													tincidunt. Vestibulum ac diam sit amet quam vehicula
													elementum sed sit amet dui. Quisque velit nisi, pretium ut
													lacinia in, elementum id enim.</p>
												<ul class="list-unstyled">
													<li class="d-flex justify-content-between"><strong>Phone:</strong>
														<span class="color-text-a">(222) 4568932</span></li>
													<li class="d-flex justify-content-between"><strong>Mobile:</strong>
														<span class="color-text-a">777 287 378 737</span></li>
													<li class="d-flex justify-content-between"><strong>Email:</strong>
														<span class="color-text-a" id="receivemail">sososwek@naver.com</span></li>
													<li class="d-flex justify-content-between"><strong>Skype:</strong>
														<span class="color-text-a">Annabela.ge</span></li>
												</ul>
												<div class="socials-a">
													<ul class="list-inline">
														<li class="list-inline-item"><a href="#"> <i
																class="fa fa-facebook" aria-hidden="true"></i>
														</a></li>
														<li class="list-inline-item"><a href="#"> <i
																class="fa fa-twitter" aria-hidden="true"></i>
														</a></li>
														<li class="list-inline-item"><a href="#"> <i
																class="fa fa-instagram" aria-hidden="true"></i>
														</a></li>
														<li class="list-inline-item"><a href="#"> <i
																class="fa fa-pinterest-p" aria-hidden="true"></i>
														</a></li>
														<li class="list-inline-item"><a href="#"> <i
																class="fa fa-dribbble" aria-hidden="true"></i>
														</a></li>
													</ul>
												</div>
											</div>
										</div>
										<div class="col-md-12 col-lg-4">
											<div class="property-contact">
												<form class="form-a">
													<div class="row">
														<div class="col-md-12 mb-1">
															<div class="form-group">
																<input type="Name"
																	class="form-control form-control-lg form-control-a"
																	id="inputName" placeholder="Name *" required>
															</div>
															
														</div>
														<div class="col-md-12 mb-1">
															<div class="form-group">
																<input type="text"
																	class="form-control form-control-lg form-control-a"
																	id="inputSubject" placeholder="Subject *" required>
															</div>
															
														</div>
														<div class="col-md-12 mb-1">
															<div class="form-group">
																<textarea id="textMessage" class="form-control"
																	placeholder="Comment *" name="message" cols="45"
																	rows="8" required></textarea>
															</div>
														</div>
														<div class="col-md-12">
															<button type="button" class="btn btn-a" id="send">Send
																Message</button>
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>

							</div>
							

						</div>
						<!-- tab-content -->
						

					</div>
					<div id="loading">
						<img src="/bnb/img/loading.png" >
					</div>

					<hr>

				</div>

			</div>
		</div>
	</section>
	
	<script type="text/javascript">
	
	
	
	
	
	
	</script>
	
	<!--/ Property Single End /-->
	<jsp:include page="/inc/asset3.jsp"></jsp:include>
	<!-- JavaScript Libraries -->
	<jsp:include page="/inc/footer.jsp"></jsp:include>
	<!-- Footer (맨밑 메뉴) -->
	

</body>
</html>
