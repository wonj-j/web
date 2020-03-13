<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/inc/asset.jsp"></jsp:include> <!-- HTML 라이브러리 -->


<jsp:include page="/inc/asset4.jsp"></jsp:include> <!-- JavaScript Libraries -->	
		
</head>
<body>



</head>
<body>
	<jsp:include page="/inc/header.jsp"></jsp:include> <!-- 메뉴바(헤더) -->

<section class="intro-single">		
<div class="container">
				
				<c:if test="${result==1}">
				<script>
					location.href = "/bnb/main.do";
				</script>
				</c:if>
				
				<c:if test="${result==0}">
				<script>
					alert('failed');
					history.back();
				</script>	
				</c:if>
			
			</div>
		
		
		</section>
		
		
<jsp:include page="/inc/asset3.jsp"></jsp:include> <!-- JavaScript Libraries -->		
<jsp:include page="/inc/footer.jsp"></jsp:include> <!-- Footer (맨밑 메뉴) -->
<script src="/bnb/js/header.js"></script>



</body>
</html>