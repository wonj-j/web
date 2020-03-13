<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="/inc/asset.jsp"></jsp:include>
<style>

</style>
</head>
<body>
	<main>		
		<jsp:include page="/inc/header.jsp"></jsp:include>
		<section class="section">
			<%-- <jsp:include page="/inc/user.jsp"></jsp:include> --%>
			<div class="content">
			
				<h1>Board <small>User Communication</small></h1>
				
				<c:if test="${result==1}">
				<script>
					location.href = "/web/reservation/payment.do";
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
		<jsp:include page="/inc/footer.jsp"></jsp:include>
	</main>
	
	<script>

		
	
	</script>
</body>
</html>




