<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>P176</title>
	</head>
	<body>
		<form action="P177(1).jsp" method="post">
			<dl>
				<dd>
					<label for="name">이름</label>
					<input type="text" id="name" name="name" placeholder="김개동" autofocus required>
				</dd>
				<dd>
					<label for="pagename">포함할 페이지</label>
					<input type="text" id="pagename" name="pageName" value="P177(2).jsp" required>
				</dd>
				<dd>
					<input type="submit" value="전송">
				</dd>
			</dl>
		</form>
	</body>
</html>