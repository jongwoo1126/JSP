<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>Insert title here</title>
		<style>
			div#displayArea{
				width : 200px;
				height : 200px;
				border : 5px double #6699FF;
				overflow: hidden;
			}
		</style>
		<script>
			$(function(){
				$("button").click(function() {
					$("#displayArea").html("<img src='./img/imagespic_1.jpg'/>");
				});
			});
		</script>
	</head>
	<body>
		<div id="displayArea">이곳의 내용이 변경</div>
		<button>표시</button>
	</body>
</html>