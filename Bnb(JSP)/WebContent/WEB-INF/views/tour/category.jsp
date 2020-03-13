<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<jsp:include page="/inc/asset.jsp"></jsp:include> <!-- HTML 라이브러리 -->
<jsp:include page="/inc/asset4.jsp"></jsp:include>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/inc/asset.jsp" %>
<style>
  .nav-item:nth-child(1), .nav-item:nth-child(2), .nav-item:nth-child(3) {
    margin: 0px 100px;
  }
  .navbar-nav {
    margin: 0px 0px;
  }
  
  @font-face { font-family: 'Cafe24Simplehae'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/Cafe24Simplehae.woff') format('woff'); font-weight: normal; font-style: normal; }




  body {
    font-family: 'Cafe24Simplehae';
    font-weight: bold;
    color: #555555;
  }

  
 

.dg-map{
  
  text-align: center;
  /* background: #f7f5f2; */


}

.dg-map svg{
  margin:35px 0 0;
}
.dg-map-in{
  width: 50%;
  float: left;
  height: 540px;
  }



      



#dg-map-area{
            
  width: 1140px;
  height: 1000px;
  /* border: 1px solid black; */
  margin-bottom: 100px;

  position: relative;
  left: 0px;
  top: 0px;
}


#dg-map{
  transform: scale(2);
  height: 460px;
  
  position: relative;

  top: 270px;
  left: 280px;


}

    

#f_seoul{

    position: absolute;
    width: 40px;
    top: 260px;
    left: 450px;
    pointer-events: none;
    text-align: center;
  
}
#f_gangwon{
  position: absolute;
  width: 50px;
  top: 225px;
  left: 585px;
  pointer-events: none;
  text-align: center;
}
#f_incheon{
  position: absolute;
  top: 265px;
  left: 405px;
  width: 50px;
  pointer-events: none;
  text-align: center;

}
#f_daejeon{
  position: absolute;
  top: 435px;
  left: 490px;
  width: 50px;
  pointer-events: none;
  text-align: center;

  font-family: Cafe24Simplehae;

}
#f_daegu{
  position: absolute;
  top: 505px;
  left: 630px;
  width: 50px;
  pointer-events: none;
  text-align: center;
}

#f_ulsan{
  position: absolute;
  top: 545px;
  left: 705px;
  width: 50px;
  pointer-events: none;
  text-align: center;
}
#f_busan{
  position: absolute;
  top: 595px;
  left: 690px;
  width: 50px;
  pointer-events: none;
  text-align: center;
}
#f_gyeonggi{
  position: absolute;
  top: 275px;
  left: 490px;
  width: 50px;
  pointer-events: none;
  text-align: center;
}

#f_chungbuk{
  position: absolute;
  top: 375px;
  left:525px;
  width: 50px;
  pointer-events: none;
  text-align: center;
}
#f_chungnam{
  position: absolute;
  top: 410px;
  left: 425px;
  width: 50px;
  pointer-events: none;
  text-align: center;
}
#f_jeonbuk{
  position: absolute;
  top: 520px;
  left: 460px;
  width: 50px;
  pointer-events: none;
  text-align: center;
}
#f_jeonnam{
  position: absolute;
  top: 640px;
  left: 435px;
  width: 50px;
  pointer-events: none;
  text-align: center;
}
#f_gyeongbuk{
  position: absolute;
  top: 430px;
  left: 640px;
  width: 50px;
  pointer-events: none;
  text-align: center;
}
#f_gyeongnam{
  position: absolute;
  top: 575px;
  left: 595px;
  width: 50px;
  pointer-events: none;
  text-align: center;
}

#f_jeju{
  position: absolute;
  top: 855px;
  left: 390px;
  width: 50px;
  pointer-events: none;
  text-align: center;
}
#f_gwangju{
  position: absolute;
  top: 605px;
  left: 425px;
  width: 50px;
  pointer-events: none;
  text-align: center;
}
#f_sejong{
  position: absolute;
  top: 400px;
  left: 475px;
  width: 50px;
  pointer-events: none;
  text-align: center;
}

#tempbox {
  position: relative;
  transform: translate(400px, -2000px); 
  width: 800px;
  height: 700px;
  /* 700,-815 */
  opacity: 0;
  /* border: 1px solid black; */
  /* background: #f7f5f2; */
  
}

#f-category img {
    width: 300px;
    height: 300px;
}
/* 
#td1, #td2{
      text-decoration: none;
      font-size:2rem;
      color:white;
      padding:10px 20px 10px 20px;
      margin:20px;
      display:inline-block;
      border-radius: 10px;
      transition:all 0.1s;
      text-shadow: 0px -2px rgba(0, 0, 0, 0.44);
      font-family: 'Lobster', cursive;
      border-bottom:3px solid #000;
    }
    #td1:active, #td2:active{
      transform: translateY(3px);
      border-bottom:2px solid #000;
    } */

    #tbl {
        width: 1123px;
        height: 550px;
        border: 1px solid black;
        border-collapse: collapse;

    }

    #tbl td {
        width: 561px;
    }

    #td2 {
      overflow: hidden;
      position: relative;
        background-image: url(/bnb/img/부산3.jpg);
        background-repeat: no-repeat;
        background-position: center center;
        background-size: 100% 105%;
    }

    #td1 {
      overflow: hidden;
      position: relative;
      background-image: url(/bnb/img/맛집.jpg);
        background-repeat: no-repeat;
        background-position: center center;
        background-size: 100% 100%;
    }

    #tbl2 {
      height: 561px;
      border-collapse: collapse;
      position: absolute;
      left: -1500px;
      top: 0px;
      transition: all 2s;
    }
  

    #tbl2 td{
      padding: 0px;
      background-repeat: no-repeat;
      background-position: center center;
      background-size: 100% 100%;
    }


    #tbl2 tr:nth-child(1) td:nth-child(1) {
      background-image: url(/bnb/img/한식.jpg);
    }
    #tbl2 tr:nth-child(1) td:nth-child(2) {
      background-image: url(/bnb/img/중식.jpg);
    }
    #tbl2 tr:nth-child(2) td:nth-child(1) {
      background-image: url(/bnb/img/일식.jpg);
    }
    #tbl2 tr:nth-child(2) td:nth-child(2) {
      background-image: url(/bnb/img/양식.jpg);
    }
    #tbl2 tr:nth-child(3) td:nth-child(1) {
      background-image: url(/bnb/img/분식.jpg);
    }
    #tbl2 tr:nth-child(3) td:nth-child(2) {
      background-image: url(/bnb/img/카페.jpg);
    }

    #res {
      position: relative;
      left: 250px;
      top: -310px;
      font-size: 2em;
      cursor: default;
      visibility: hidden;
    }
    #tour {
      position: relative;
      left: 720px;
      top: -310px;
      font-size: 2em;
      cursor: default;
      visibility: hidden;
    }
    .food {
      visibility: hidden;
      font-size: 1.5em;
      color: white;
      cursor: default;
    }

    .tour {
      visibility: hidden;
      font-size: 1.5em;
      color: white;
      cursor: default;
    }

    #tbl3 {
      width: 561px;
      height: 548px;
      border-collapse: collapse;
      position: absolute;
      left: 600px;
      top: 0px;
      transition: all 2s;
    }

    #tbl3 td{
      padding: 0px;
      background-repeat: no-repeat;
      background-position: center center;
      background-size: 100% 100%;
    }

    #tbl3 tr:nth-child(1) td:nth-child(1) {
      background-image: url(/bnb/img/한식.jpg);
    }
    #tbl3 tr:nth-child(1) td:nth-child(2) {
      background-image: url(/bnb/img/중식.jpg);
    }
    #tbl3 tr:nth-child(2) td:nth-child(1) {
      background-image: url(/bnb/img/일식.jpg);
    }
    #tbl3 tr:nth-child(2) td:nth-child(2) {
      background-image: url(/bnb/img/양식.jpg);
    }
    /* .btn:active{
      transform: translateY(3px);
    }
    .btn.blue{
      background-color: #1f75d9;
      border-bottom:5px solid #165195;
    }
    .btn.blue:active{
      border-bottom:2px solid #165195;
    } */

</style>
</head>
<body>
	<!--  -->
<jsp:include page="/inc/header.jsp"></jsp:include> <!-- 메뉴바(헤더) -->


 <section class="intro-single">
    <div class="container">
      <div class="row"  style="margin: 15px 0px;">
        <div class="col-md-12 col-lg-8">
          <div class="title-single-box" style="height: 60px;">
            <h1 class="title-single">Category</h1>
          </div>
        </div>
        
      </div>
        <table id="tbl">
            <tr>
                <td id="td1">
                  <table id="tbl2">
                    <tr>
                      <td class="tfood"></td>
                      <td class="tfood"></td>
                    </tr>
                    <tr>
                      <td class="tfood"></td>
                      <td class="tfood"></td>
                    </tr>
                    <tr>
                      <td class="tfood"></td>
                      <td class="tfood"></td>
                    </tr>
                </table>
                </td>
                <td id="td2">
                    <span style="position: relative; left: 250px; top: -100px; font-size: 1.5em; cursor: default;">부 산</span>
                    <span style="position: relative; left: 80px; top: 10px; cursor: default;">돼지 국밥</span>
                    <span style="position: relative; left: 147px; top: 10px; cursor: default;">동백섬</span>
                    <span style="position: relative; left: 210px; top: 13px; cursor: default;">해동 용궁사</span>
                    <span style="position: relative; left: -100px; top: 120px; cursor: default;">부산역</span>
                    <span style="position: relative; left: -30px; top: 120px; cursor: default;">아쿠아리움</span>
                    <span style="position: relative; left: 10px; top: 120px; cursor: default;">영화의전당</span>
                    <span style="position: relative; left: -290px; top: 230px; cursor: default;">장안사</span>
                    <span style="position: relative; left: -225px; top: 230px; cursor: default;">영화의 거리</span>
                    <table id="tbl3">
                      <tr>
                        <td></td>
                        <td></td>
                      </tr>
                      <tr>
                        <td></td>
                        <td></td>
                      </tr>
                    </table>
                </td>
            </tr>
        </table>
        <span id="res" class="txt">맛 집</span>
        <span id="tour" class="txt">관 광 지</span>
        <span class="food" style="position: relative; top: -480px; left: -50px;">한 식</span>
        <span class="food" style="position: relative; top: -480px; left: 185px;">중 식</span>
        <span class="food" style="position: relative; top: -295px; left: -150px;">일 식</span>  
        <span class="food" style="position: relative; top: -295px; left: 85px;">양 식</span>
        <span class="food" style="position: relative; top: -120px; left: -260px;">분 식</span>
        <span class="food" style="position: relative; top: -120px; left: -20px;">카 페</span>
        <span class="tour" style="position: relative; top:-450px; left: 210px;">산</span>
        <span class="tour" style="position: relative; top:-450px; left: 450px;">바 다</span>
        <span class="tour" style="position: relative; top:-160px; left: 120px;">도 시</span>
        <span class="tour" style="position: relative; top:-160px; left: 330px;">문화 유산</span>
          <!-- <input type="button" id="btn" value="음식"> -->
          <!-- <a class="btn" id="f-btn" href="#blue">맛집</a>
          <div id="f-category">
              <img src="img/한식.jpg">
              <img src="img/중식.jpg">
              <img src="img/일식.jpg">
              <img src="img/양식.jpg">
              <img src="img/분식.jpg">
              <img src="img/카페.jpg">
          </div> -->
    </div>
  </section>

      
<jsp:include page="/inc/footer.jsp"></jsp:include> <!-- Footer (맨밑 메뉴) -->
<jsp:include page="/inc/asset3.jsp"></jsp:include> 
	<script>

      // $("#td1, #res").mouseover(function(){
      //   $("#td1").css("opacity", "0.3")
      //   $("#res").css("visibility", "visible")
      // })

      var food = document.getElementsByClassName("food");

      $("#td1").on("mouseover", over1)
               .on("mouseout", out1);

      $("#td2").on("mouseover", over2)
               .on("mouseout", out2);
      // $("#td1").on("mouseout", out1())
      
      function over1() {
        $("#td1").css("opacity", "0.3")
        $("#res").css("visibility", "visible")
      }

      function out1() {
        $("#td1").css("opacity", "1")
        $("#res").css("visibility", "hidden")
      }

      function over2() {
        $("#td2").css("opacity", "0.3")
        $("#tour").css("visibility", "visible")
      }

      function out2() {
        $("#td2").css("opacity", "1")
        $("#tour").css("visibility", "hidden")
      }

      $("#td1").mouseup(function(){
        $("#td1").off("mouseover", over1)
                 .off("mouseout", out1);
        $("#td1").css("opacity", "1");
        $("#tbl2").css("left", "0px")
        $("#res").css("visibility", "hidden")
        })

        var tbl2 = $("#tbl2").children().children().children();
      
      var param = "&area="+'${bigarea}'+"&area2="+'${smallarea}';
      
      //어떤 유형의 맛집인지 보내는거
      //형한테 보낼꺼
        for(var i=0; i<6; i++){
        	$(tbl2).eq(i).data("i", i+1);
          	tbl2.eq(i).mousedown(function(){
          		window.location.href = "/bnb/food/foodlist.do?category=" + $(this).data("i") + param;
          		
          	});
        }

       tbl2.eq(0).mouseover(function(){
        food[0].style.visibility = "visible";
       })

       tbl2.eq(0).mouseout(function(){
        food[0].style.visibility = "hidden";
       })

       tbl2.eq(1).mouseover(function(){
        food[1].style.visibility = "visible";
       })

       tbl2.eq(1).mouseout(function(){
        food[1].style.visibility = "hidden";
       })

       tbl2.eq(2).mouseover(function(){
        food[2].style.visibility = "visible";
       })

       tbl2.eq(2).mouseout(function(){
        food[2].style.visibility = "hidden";
       })

       tbl2.eq(3).mouseover(function(){
        food[3].style.visibility = "visible";
       })

       tbl2.eq(3).mouseout(function(){
        food[3].style.visibility = "hidden";
       })

       tbl2.eq(4).mouseover(function(){
        food[4].style.visibility = "visible";
       })

       tbl2.eq(4).mouseout(function(){
        food[4].style.visibility = "hidden";
       })

       tbl2.eq(5).mouseover(function(){
        food[5].style.visibility = "visible";
       })

       tbl2.eq(5).mouseout(function(){
        food[5].style.visibility = "hidden";
       });

         food[0].onmouseover = function() {
          food[0].style.visibility = "visible";
         }
         food[1].onmouseover = function() {
          food[1].style.visibility = "visible";
         }
         food[2].onmouseover = function() {
          food[2].style.visibility = "visible";
         }
         food[3].onmouseover = function() {
          food[3].style.visibility = "visible";
         }
         food[4].onmouseover = function() {
          food[4].style.visibility = "visible";
         }
         food[5].onmouseover = function() {
          food[5].style.visibility = "visible";
         }

         $("#td2").mouseup(function(){
        $("#td2").off("mouseover", over2)
                 .off("mouseout", out2);
        $("#td2").css("opacity", "1");
        $("#tbl3").css("left", "0px")
        $("#tour").css("visibility", "hidden")
        });

        var tbl3 = $("#tbl3").children().children().children();
        var tour = document.getElementsByClassName("tour");

        tbl3.eq(0).mouseover(function(){
        tour[0].style.visibility = "visible";
       })

       tbl3.eq(0).mouseout(function(){
        tour[0].style.visibility = "hidden";
       })

       tbl3.eq(1).mouseover(function(){
         tour[1].style.visibility = "visible";
       })

       tbl3.eq(1).mouseout(function(){
        tour[1].style.visibility = "hidden";
       })

       tbl3.eq(2).mouseover(function(){
        tour[2].style.visibility = "visible";
       })

       tbl3.eq(2).mouseout(function(){
        tour[2].style.visibility = "hidden";
       })

       tbl3.eq(3).mouseover(function(){
        tour[3].style.visibility = "visible";
       })

       tbl3.eq(3).mouseout(function(){
        tour[3].style.visibility = "hidden";
       })

       tour[0].onmouseover = function() {
          tour[0].style.visibility = "visible";
         }
         tour[1].onmouseover = function() {
          tour[1].style.visibility = "visible";
         }
         tour[2].onmouseover = function() {
          tour[2].style.visibility = "visible";
         }
         tour[3].onmouseover = function() {
          tour[3].style.visibility = "visible";
         }

         //어떤 유형 여행인지 보내는거
         //형한테 보낼꺼
         for(var i=6; i<10; i++){
       	 tbl3.eq(i).data("i", i+1)
          tbl3.eq(i).mousedown(function(){
          window.location.href = "/bnb/food/foodlist.do?&category=" + $(this).data("i") + param;
          })
        }

  </script>

</body>
</html>