<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>Insert title here</title>
		<script>
		$(document).ready(function() {
			$("#b1").click(function() {
				$("result").load("xhrTest1.jsp");
			});
		});
		</script>
	</head>
	<body>
		<button id="b1">결과</button>
		<div id="result"></div>
	</body>
</html>