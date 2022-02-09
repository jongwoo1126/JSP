<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>P164</title>
	</head>
	<body>
		<% String info = this.getServletInfo(); %>
		<h2>page 내장객체 예제</h2>
		page 디렉티브의 info 속성값 "<%= info %>"을 얻어낸다.
	</body>
</html>