<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>5_Cookie</title>
		<!-- 
			날짜 : 2022/02/08
			이름 : 박종우
			내용 : JSP 내장객체 실습하기
			
			Cookie
			 - 클라이언트와 서버간의 식별을 위해 사용되는 조각파일
			 - 쿠키는 서버에서 생성하고 클라이언트 전송
			 - 클라이언트는 전송된 쿠키를 보관, 해당 서버로 다시 전송한다.
		-->
	</head>
	<body>
		<h3>5_Cookie</h3>
		<form action="../proc/cookieProc.jsp" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="uid"/></td>
				</tr>
				
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pass"/></td>
				</tr>
				
				<tr>
					<td colspan="2" align="right">
						<input type="submit" value="로그인"/>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>