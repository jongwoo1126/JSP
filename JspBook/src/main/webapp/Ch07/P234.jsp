<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>Insert title here</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script>
			$(function(){
				$("p").mouseenter(function() {
					$(this).text("왔구려, 마우스포인터!!!");
				})
			});
			
			$(function(){
				$("p").mouseleave(function() {
					$(this).text("돌아와, 마우스포인터!!!");
				})
			});
			
			$(function(){
				$("button").dbclick(function() {
					$(this).css("background-color","#cccccc");
				})
			});
		</script>
	</head>
	<body>
		<p>마우스 포인터를 여기에!!!</p>
		<button>더블클릭하시구려</button>
	</body>
</html>