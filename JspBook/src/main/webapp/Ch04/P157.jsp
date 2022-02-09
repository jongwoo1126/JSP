<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>P157</title>
	</head>
	<body>
		<% if(session.getAttribute("id")==null){%>
		<form action="P159.jsp" method="post">
			<div id="unauth" >
				<dl>
					<dd>
						<label for="id">아이디</label>
						<input id="id" name="id" type="text" placeholder="kingdora" autofocus required>		
					</dd>
					
					<dd>
						<label for="pass">비밀번호</label>
						<input id="pass" name="pass" type="password" placeholder="1234" required>		
					</dd>
					
					<dd>
						<input type="submit" value="로그인">
					</dd>
				</dl>
			</div>
		</form>
		<% }else{ %>
		<form action="P160.jsp" method="post">
			<div id="auth">
				<dl>
					<dd>
					<%= session.getAttribute("id") %>님 오셨구려..
					</dd>
					
					<dd>
						<input type="submit" value="로그아웃">
					</dd>
				</dl>
			</div>
		</form>
		<% } %>
	</body>
</html>