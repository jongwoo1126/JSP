<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>Insert title here</title>
	</head>
	<body>
		<h2>response 객체 예제 - sendRedirect() 메소드 사용</h2>
		현재 페이지는 <b>P152.jsp</b> 페이지입니다.
		<% response.sendRedirect("P153.jsp"); %>
	</body>
</html>