<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>P122</title>
	</head>
	<body>
		<h2>주석 예제</h2>
		<%
			//자바주석입니다.
			String str1 = "소스보기를 하면 화면에 표시됩니다";
			String str2 = "소스보기를 해도 화면에 표시되지 않습니다.";
		%>
		
		<!--  -->
		<!-- HTML 주석입니다.<%= str1 %> -->
		<%-- JSP 주석입니다.<%= str2 %>  --%>
	</body>
</html>