<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="/inc/asset4.jsp"></jsp:include>
<jsp:include page="/inc/asset.jsp"></jsp:include> <!-- HTML 라이브러리 -->


<link rel="stylesheet" href="/bnb/css/jquery-ui.css">


<style>
	
	#anititle{
      text-align: center;
    }
    #anititle>h1{
      color: #C6DFD6;
    }
    #hostbtnbox{
      margin-top: 50px;
    }
    #hostbtnbox input{
      position: relative;
      left: 38%;
    }
    .intro-single .container{
      background-color: rgba(0,0,0, 0.5);
      padding-top: 200px;
      height: 400px;
    }
   
    
     #back {
        background-image: url(/bnb/img/host_background.jpg);
		background-repeat: no-repeat;
		background-size: cover;
		height: 840px;
		background-attachment: fixed;
		background-position: center center;
    }
	

  /* #ui-datepicker-div {
    font-family: 'Cafe24Simplehae';
  }

  .ui-datepicker-title{
    color: white;
    height: 40px;
  }

  .ui-datepicker-month {
    width: 10px;
    height: 30px;
  }

  .box {
    width: 500px; 
    height: 500px; 
    position: fixed; 
    left: 400px; 
    top: 235px; 
    background-color: white; 
    border-radius: 10px;
  }

  .inline > div { display: inline-block; } 
  .content-size {font-size: 18px;}
 */

</style>
<meta charset="utf-8">
  
</head>

<body style="">

<jsp:include page="/inc/header.jsp"></jsp:include> <!-- 메뉴바(헤더) --> 
 
 <!--/ Intro Single star /-->
  <div id="back">
  
  </div>
  <!--/ Intro Single End /-->
 
 
  
<script src="/bnb/js/header.js"></script>
<jsp:include page="/inc/footer.jsp"></jsp:include> <!-- Footer (맨밑 메뉴) -->
<jsp:include page="/inc/asset3.jsp"></jsp:include>

  <script>
  
  $("#search").submit(function(){
	   event.preventDefault();
	   
	      
	   var data=$("#search").serialize();
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
      from = $( ".checkin" )
        .datepicker({
          defaultDate: "+1w",
          changeMonth: true,
          numberOfMonths: 1
        })
        .on( "change", function() {
          to.datepicker( "option", "minDate", getDate( this ) );
        }),
      to = $( ".checkout" ).datepicker({
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
  
  </script>

</body>
</html>