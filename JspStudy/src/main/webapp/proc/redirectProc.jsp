<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>redirectProc</title>
	</head>
	<body>
		<h3>리다이렉트 페이지</h3>
		
		<%
			response.sendRedirect("../Sub1/Hello.jsp");
			// response.sendRedirect("https://www.naver.com");
		%>
	</body>
</html>