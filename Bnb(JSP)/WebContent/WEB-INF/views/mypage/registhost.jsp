<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>EstateAgency Bootstrap Template</title>
  <style>
    @font-face { font-family: 'Cafe24Simplehae'; 
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/Cafe24Simplehae.woff')
            format('woff');
            font-weight: normal;
            font-style: normal;
             }
            
    body{
      font-family: 'Cafe24Simplehae';
    }
    #jutack{
      width:300px;
      height:40px;
    }
  .nav-item {
    margin: 0px 100px;
  }
  h4{
    width:100%;
    
  }
  #total{
    overflow: auto;
    height:600px;
  }
  
  #josa{
    width:1000px;
    height:1000px;
    margin:30px auto;
    position:relative;
  }
 
  section{
    animation-name: fadein;
    animation-duration: 1s;
    position: relative;
    left:0px;
    top:0px;
  }
  @keyframes fadein{
    from{
      opacity: 0;
      left:100px;
    }
    to{
      opactiy:1;
      left:0px;
    }
  }
  .radiobox{
    float: right;
  }
  .radiobox::after{
    display:block;
    content:"";
    clear:both;
  }
  
</style>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">

  <!-- =======================================================
    Theme Name: EstateAgency
    Theme URL: https://bootstrapmade.com/real-estate-agency-bootstrap-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
</head>

<body>

  <div class="click-closed"></div>
  <!--/ Form Search Star /-->
  <div class="box-collapse">
    <div class="title-box-d">
      <h3 class="title-d">예약</h3>
    </div>
    <span class="close-box-collapse right-boxed ion-ios-close"></span>
    <div class="box-collapse-wrap form">
      <form class="form-a">
        <div class="row">
          <div class="col-md-12 mb-2">
            <div class="form-group" style="margin-top: 80px;">
              <label for="Type">목적지</label>
              <input type="text" class="form-control form-control-lg form-control-a" placeholder="모든 위치">
            </div>
          </div>
          <div class="col-md-6 mb-2">
            <div class="form-group">
              <label for="datepicker">체크인</label>
              <input type="text" class="form-control form-control-lg form-control-a" id="datepicker">
            
            </div>
          </div>
          <div class="col-md-6 mb-2">
            <div class="form-group">
              <label for="datepicker2">체크아웃</label>
              <input type="text" class="form-control form-control-lg form-control-a" id="datepicker2">
            
            </div>
          </div>
          <div class="col-md-6 mb-2">
            <div class="form-group">
              <label for="bedrooms">Bedrooms</label>
             
            </div>
          </div>
          <div class="col-md-6 mb-2">
            <div class="form-group">
              <label for="garages">Garages</label>
             
            </div>
          </div>
        
          <div class="col-md-12">
            <button type="submit" class="btn btn-b">Search Property</button>
          </div>
        </div>
      </form>
    </div>
  </div>
  <!--/ Form Search End /-->

  <!--/ Nav Star /-->
  <nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top" style="background-color: white;">
    <div class="log">
      <div style="position: absolute; left: 1640px; top: 5px;"><a class="login" href="#!" data-toggle="modal" data-target="#myModal">로그인</a></div>
      
      <div style="position: absolute; left: 1710px; top: 5px;"><a class="regist" href="regist.html">회원가입</a></div>
    </div>
    <div class="container" style="height: 60px;">
      <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault"
        aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span></span>
        <span></span>
        <span></span>
      </button>

      <!-- <a class="navbar-brand text-brand" href="index.html" style="color: black;">SY <span class="color-b">BNB</span></a> -->
      <a class="navbar-brand text-brand" href="index.html"><img src="img/logo.png" style="width: 120px;"></a>
      
      <button type="button" class="btn btn-link nav-search navbar-toggle-box-collapse d-md-none" data-toggle="collapse"
        data-target="#navbarTogglerDemo01" aria-expanded="false">
        <span class="fa fa-search" aria-hidden="true"></span>
      </button>
      
      <div class="navbar-collapse collapse justify-content-center" id="navbarDefault" style="margin-top: 18px;" >
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active" href="index.html">홈</a>
          </li>

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" 
              aria-haspopup="true" aria-expanded="false" >여행지</a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="property-single.html">관광지</a>
              <a class="dropdown-item" href="blog-single.html">음식</a>
            </div>
          </li>

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" 
              aria-haspopup="true" aria-expanded="false">매칭</a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="property-single.html">지역 채팅방</a>
              <a class="dropdown-item" href="blog-single.html">1 : 1 매칭</a>
            </div>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="blog-grid.html" style="padding-right: 0;">호스트 되기</a>
          </li>
          
          <!-- <li class="nav-item">
            <a class="nav-link" href="about.html">About1</a>
          </li> -->

          <!-- <li class="nav-item">
            <a class="nav-link" href="property-grid.html">Match</a>
          </li> -->

          <!-- <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
              aria-haspopup="true" aria-expanded="false">
              About2
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="property-single.html">tourist</a>
              <a class="dropdown-item" href="blog-single.html">food</a>
              <a class="dropdown-item" href="agents-grid.html">Agents Grid</a>
              <a class="dropdown-item" href="agent-single.html">Agent Single</a>
            </div>
          </li> -->

          <!-- <li class="nav-item">
            <a class="nav-link" href="contact.html">Contact</a>
          </li> -->

        </ul>
      </div>
      <button type="button" class="btn btn-b-n navbar-toggle-box-collapse d-none d-md-block" data-toggle="collapse"
        data-target="#navbarTogglerDemo01" aria-expanded="false">
        <span class="fa fa-search" aria-hidden="true"></span>
      </button>
    </div>
    
  </nav>
  <!--/ Nav End /-->

  <!--/ Intro Single star /-->
  <section class="intro-single">
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-lg-8">
          <div class="title-single-box ss" style="border-left: 5px solid #5F9EA0">
            <h1 class="title-single" style="width:350px;">호스트 되어보기</h1>
            <span class="color-text-a">아래 내용들을 작성해 주세요</span>
          </div>
        </div>
      </div>
    </div>
    <div id="josa">
    
      
      <div id="total" class="container">
        <div class="row">
          <div class="col-md-12 col-lg-8">
              <h2 class="title-single" style="width:500px;">등록하실 숙소의 종류를 등록하세요</h2>
              <h4><input type="radio" name="hotel" style="font-size:17px; width:23px;height:23px"> 아파트</h4>
              <h4><input type="radio" name="hotel" style="font-size:17px; width:23px;height:23px"> 주택</h4>
              <h4><input type="radio" name="hotel" style="font-size:17px; width:23px;height:23px"> 별채</h4>
              <h4><input type="radio" name="hotel" style="font-size:17px; width:23px;height:23px"> 독특한 숙소</h4>
              <h4><input type="radio" name="hotel" style="font-size:17px; width:23px;height:23px"> 기타</h4>
              <input style ="width:300px"type="text" placeholder="내용을 입력해 주세요" disabled>
            </div>   
              
          </div>
          <hr>
        <div class="row" style="margin:20px 0px;">
          <div class="col-md-12 col-lg-8">
            <h2 class="title-single" style="width:500px;">건물의 유형을 선택하세요</h2>
            <select id="jutack">
              <option>주택</option>
              <option>전원주택</option>
              <option>펜션</option>
              <option>저택</option>
            </select>
          </div>
        </div>

        <hr>
        
        <div>
          <div class="row">
            <div class="col-md-12 col-lg-8">

              <h2>게스트가 머무를 숙소의 유형을 선택해주세요</h2>
              <h4><input type="radio" name="hotel1" style="font-size:17px; width:23px;height:23px"> 집 전체</h4>
              <span>게스트가 숙소 전체를 다른 사람과 공유하지 않고 단독으로 이요합니다. 일반적으로 잠실,욕실,부엌이 포함됩니다</span>
              <h4><input type="radio" name="hotel1" style="font-size:17px; width:23px;height:23px"> 개인실</h4>
              <span>게스트에게 개인 침실이 제공됩니다. 침실 이외의 공간은 공용할 수 있습니다.</span>
              <h4><input type="radio" name="hotel1" style="font-size:17px; width:23px;height:23px"> 다인실</h4>
              <span>게스트는 개인 공간없이, 다른 사람과 함께 쓰는 침실이나 공용 공간에서 숙박합니다.</span>
             </div>
          </div>
        </div>
        <hr>

        <div class="row">
          <div class="col-md-12 col-lg-8">

            <h2>게스트만 사용하도록 만들어진 숙소인가요?</h2>
            <h4><input type="radio" name="hotel2" style="font-size:17px; width:23px;height:23px">예,게스트용으로 따로 마련된 숙소입니다.</h4>
            <h4><input type="radio" name="hotel2" style="font-size:17px; width:23px;height:23px">아니요, 제 개인 물건이 숙소에 있습니다.</h4>
           
        </div>
      </div>
      <hr>
      <div class="row">
        <div class="col-md-12 col-lg-8">

          <h2>숙박업체로 숙소를 등록하시나요?</h2>
          <h4><input type="radio" name="hotel3" style="font-size:17px; width:23px;height:23px">예,저는 숙박업체의 운영자 또는 직원입니다.</h4>
          <h4><input type="radio" name="hotel3" style="font-size:17px; width:23px;height:23px">아니요,해당하지 않습니다.</h4>
         
      </div>
    </div>

      </div>
     
  
      
     

    
    
  
  </div>
  </section>

  <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <nav class="nav-footer">
            <ul class="list-inline">
              <li class="list-inline-item">
                <a href="#">Home</a>
              </li>
              <li class="list-inline-item">
                <a href="#">About</a>
              </li>
              <li class="list-inline-item">
                <a href="#">Property</a>
              </li>
              <li class="list-inline-item">
                <a href="#">Blog</a>
              </li>
              <li class="list-inline-item">
                <a href="#">Contact</a>
              </li>
            </ul>
          </nav>
          <div class="socials-a">
            <ul class="list-inline">
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-facebook" aria-hidden="true"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-twitter" aria-hidden="true"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-instagram" aria-hidden="true"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-pinterest-p" aria-hidden="true"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-dribbble" aria-hidden="true"></i>
                </a>
              </li>
            </ul>
          </div>
          <div class="copyright-footer">
            <p class="copyright color-text-a">
              &copy; Copyright
              <span class="color-a">EstateAgency</span> All Rights Reserved.
            </p>
          </div>
          <div class="credits">
            <!--
              All the links in the footer should remain intact.
              You can delete the links only if you purchased the pro version.
              Licensing information: https://bootstrapmade.com/license/
              Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=EstateAgency
            -->
            Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <!--/ Intro Single End /-->

  <!--/ News Single Star /-->
 
  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/popper/popper.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/scrollreveal/scrollreveal.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>
  <script>

    
    

    
   
   

    
  </script>
</body>
</html>
