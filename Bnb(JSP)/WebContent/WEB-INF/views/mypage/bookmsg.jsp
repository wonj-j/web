<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link href="/bnb/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="/bnb/lib/jquery/jquery.min.js"></script>
	<script src="/bnb/lib/bootstrap/js/bootstrap.min.js"></script>
	<script src="/bnb/js/string.js"></script>
<title>Insert title here</title>
</head>
<body>
 <form>	
    <!-- 송신 메시지 작성하는 창 -->
    <input id="textMessage" type="text">	
    <!-- 송신 버튼 -->	
    <input onclick="sendMessage()" value="Send" type="button">
    <!-- 메시지 보이는 창 -->
    <table>
	    <tbody id="msglist">
	    	
	    </tbody>
    </table>	
    <!-- 종료 버튼 -->	
    <input onclick="disconnect()" value="Disconnect" type="button">	
    <div id="textbox"></div>
  </form>	
  <br />	
</body>
<script>
	/* 메시지보내기  */
	function sendMessage(){
		var datas = String.format("userid={0}&hostid={1}&caller={2}&hostseq={3}&userseq={4}&msg={5}&bookseq={6}",${guestinfo.id},${hostinfo.id},${caller},${hostseq},${guestinfo.seq},$("#textMessage").val(),${bookseq});
		
		$.ajax({
			type: "POST",
			url: "/bnb/managemsg.do",
			data : datas,
			
			datatype: "json",
			success: function(result){
				
				$(result).each(function(index,item){
					var row = String.format("<tr><td>{0}:</td><td>{1}</td></tr>",item.id,item.msg);
					$("#list2").append(row);
				});
			}
			
			
		});
	}
	/* 메시지창닫기  */
	function disconnect(){
		window.close();
	}
</script>
</html>