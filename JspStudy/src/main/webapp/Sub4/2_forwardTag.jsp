<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>2_forwardTag</title>
		<!-- 
			날짜 : 2022/02/10
			이름 : 박종우
			내용 : JSP 액션태그 실습하기
			
			forward태그
			 - 서버 시스템에서 페이지 요청을 처리하는 pageContext의 기능 
			 - 최초 요청에 대한 주소가 반영
		 -->
	</head>
	<body>
		<h3>2_forward 액션태그 실습</h3>
		
		<!-- forward 태그 -->
		<jsp:forward page="../Sub1/Hello.jsp"></jsp:forward>
		
		<!-- forward 함수 -->
		<%
			pageContext.forward("../Sub1/Hello.jsp");
		%>
	</body>
</html>