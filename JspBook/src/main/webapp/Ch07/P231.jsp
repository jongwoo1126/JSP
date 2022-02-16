<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>Insert title here</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script>
			$(function() {
				$("#b1").click(function() {
					$("#b2").text($("p").text());
				});
				$("#b2").click(function() {
					$("#display").html("<img src='./img/imagespic_1.jpg'/>");
				});
			});
		</script>
	</head>
	<body>
		<p>이미지표시</p>
		<button id="b1">버튼레이블 변경</button>
		<div id="display"></div>
		<button id="b2">버튼</button>
	</body>
</html>