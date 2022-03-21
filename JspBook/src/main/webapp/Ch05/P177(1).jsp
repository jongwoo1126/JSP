<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>Insert title here</title>
	</head>
	<body>
		<% request.setCharacterEncoding("utf-8"); %>

		<% String pageName = request.getParameter("pageName"); %>
		
		포함하는 페이지 P177(1).jsp입니다.<br>
		
		<hr>
		<jsp:include page="<%=pageName%>" flush="false"/>
		P177(1).jsp의 나머지 내용입니다.
	</body>
</html>