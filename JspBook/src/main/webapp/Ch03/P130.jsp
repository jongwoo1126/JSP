<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>P130</title>
	</head>
	<body>
		<h2>While문 예제 - 임의의 값을 임의의 횟수로 곱하기</h2>
		<form method="post" action="P131.jsp">
			<dl>
				<dd>
					<label for="number">곱해질 값:</label>
					<input type="number" name="number" autofocus required>
				</dd>
				<dd>
					<label for="num">곱해질 횟수:</label>
					<input type="number" name="num" required>
				</dd>
				<dd>
					<input type="submit" value="확인">
				</dd>
			</dl>
		</form>
	</body>
</html>