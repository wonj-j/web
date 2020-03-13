<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/inc/asset.jsp"></jsp:include> <!-- HTML 라이브러리 -->
 <jsp:include page="/inc/asset4.jsp"></jsp:include><!-- HTML 라이브러리 -->
<link rel="stylesheet" href="/bnb/css/jquery-ui.css">

<link rel="stylesheet" href="/bnb/css/test.css">
</head>

<script type="text/javascript"src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b6d170cfdb78893c5094b86ea037bee7&libraries=services"></script>

<jsp:include page="/inc/header.jsp"></jsp:include> <!-- 메뉴바(헤더) -->
  
  
<section class="intro-single">

   <div id="lentlist">
      <c:forEach items="${localist}" var="list" begin="0" end="3">
      <div class="lent1" onclick="deliver(${list.hseq})">
      
  <img class="lentimg2" src="/bnb/img/property-1.jpg" >
    <c:forEach items="${piclist}" var="pic" begin="0" end="0">
    <%-- <img class="lentimg2" src="${pic.accompic}">  --%>
  </c:forEach>
      <div>
         <span>${list.accomtype}</span>
      </div>
      <div>
         <span id="accomname">${list.accomname}</span>
      </div>
      
      <div>
           <span>${list.fee}원/1박</span>
      </div>
   </div>
       </c:forEach>
</div>
<div id="detailsearch">
   <div id="map">
   </div>
</div>

</section>

        
 

<jsp:include page="/inc/asset3.jsp"></jsp:include> <!-- JavaScript Libraries -->
	<%-- <jsp:include page="/inc/footer.jsp"></jsp:include> --%> <!-- Footer (맨밑 메뉴) -->
  <script src="/bnb/js/header.js"></script>

   <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
   <div id="preloader"></div>


   

   <script>
   
   

   function deliver(result){
		location.href = "/bnb/accomodate/lentinfo.do?&hseq="+result
						+"&child=${child}&adult=${adult}&checkin=${checkin}&checkout=${checkout}";
		
	}
	 
   
   
      //마커를 담을 배열
      var markers = [];
      var container = document.getElementById("map");

      var option = {
         center: new daum.maps.LatLng(35.179791, 129.075019),
         level: 3
      };
      //지도생성
      var map = new daum.maps.Map(container, option);

      function displayMarker(place) {
         var marker = new daum.maps.Marker({
            map: map,
            position: new daum.maps.LatLng(place.y, place.x)
         });

         //마커에 클릭이벤트 등록하기
         daum.maps.event.addListener(marker, 'click', function () {
            infowindow.setContent("<div style='padding:3px;font-size:8px;'>" + place.place_name + "</div>");
            infowindow.open(map, marker);
         });
      }




	


      var geocoder = new kakao.maps.services.Geocoder();
      var data2;
      var destination;
     
  geocoder.addressSearch('${destination}', function(result, status) {

 	    // 정상적으로 검색이 완료됐으면 
 	     if (status === kakao.maps.services.Status.OK) {

 	        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
			console.log(coords);
			
 	        // 결과값으로 받은 위치를 마커로 표시합니다
 	        var marker = new kakao.maps.Marker({
 	            map: map,
 	            position: coords
 	        });

 	        // 인포윈도우로 장소에 대한 설명을 표시합니다
 	        /* var infowindow = new kakao.maps.InfoWindow({
 	            content: '<div style="width:150px;text-align:center;padding:6px 0;">${destination}</div>'
 	        }); */
 	/*         infowindow.open(map, marker);
 */
 	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
 	        map.setCenter(coords);
 	    } 
 	});    
	 
  
  
  
  
 	var latlng;
 	
 	var positions=[
 		<c:forEach items="${localist}" var="list" varStatus="status">
 		{
 		 	content:"<div>'${list.accomname}'</div>",
 	 		latlng:new daum.maps.LatLng('${list.lat}', '${list.lng}')
 	 	},
 	 	<c:if test="${status.last}">
 	 	{
 		 	content:"<div>'${list.accomname}'</div>",
 	 		latlng:new daum.maps.LatLng('${list.lat}', '${list.lng}')
 	 	}
 	 	</c:if>
 		</c:forEach>
		];
 	
 	for(i=0;i<positions.length;i++){
		var marker=new daum.maps.Marker({
			map: map, // 마커를 표시할 지도
	        position: positions[i].latlng // 마커의 위치

		});
		
		  var infowindow = new kakao.maps.InfoWindow({
	        content: '<div style="width:90px;text-align:center;padding:5px 5px;">'+positions[i].content+'</div>' // 인포윈도우에 표시할 내용
	    });  

	    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
	    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
	    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
	    
	     infowindow.open(map, marker); 
	    //kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
 	
		/* marker.setMap(map);
		map.panTo(latlng); */
		 
	
		

		//마커 위에 커스텀오버레이를 표시합니다
		//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
		/* var overlay = new kakao.maps.CustomOverlay({
			content: positions[i].content,
			map: map,
			position: marker.getPosition()       
		});
 */
 	}
       
		</script>
		
		
  

</body>

</html>
