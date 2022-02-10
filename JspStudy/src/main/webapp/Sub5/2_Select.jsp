<%@page import="bean.User1Bean"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//데이터베이스 정보
	String host = "jdbc:mysql://3.34.94.228:3306/lucky4527";
	String user = "test";
	String pass = "1234";
	
	List<User1Bean> users = null;
	
	try{
		// 1단계
		Class.forName("com.mysql.jdbc.Driver");
		
		// 2단계
		Connection conn = DriverManager.getConnection(host, user, pass);
		
		// 3단계
		Statement stmt = conn.createStatement();
		
		// 4단계
		String sql = "SELECT * FROM `User1`;";
		ResultSet rs = stmt.executeQuery(sql);
		
		// 5단계
		users = new ArrayList<>();
		
		while(rs.next()){
		
			User1Bean ub = new User1Bean();
			ub.setUid(rs.getString(1));
			ub.setName(rs.getString(2));
			ub.setHp(rs.getString(3));
			ub.setAge(rs.getInt(4));
			
			// 리스트 추가
			users.add(ub);
		}
		
		// 6단계
		stmt.close();
		conn.close();
	
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>2_Select</title>
	</head>
	<body>
		<h3>2_Select</h3>
		
		<h4>User1 등록</h4>
		<a href="./1_Insert.jsp">User1 등록하기</a>
		<table border="1">
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>휴대폰</th>
				<th>나이</th>
				<th>관리</th>
			</tr>
			<% for(User1Bean ub : users){ %>
			<tr>
				<th><%= ub.getUid() %></th>
				<th><%= ub.getName() %></th>
				<th><%= ub.getHp() %></th>
				<th><%= ub.getAge() %></th>
				<td>
					<a href=#>삭제</a>
					<a href=./3_Update.jsp?uid=<%= ub.getUid() %>>수정</a>
				</td>
			</tr>
			<% } %>
		</table>	
	</body>
</html>