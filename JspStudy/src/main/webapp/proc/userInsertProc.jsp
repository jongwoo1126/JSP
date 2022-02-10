<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String uid = request.getParameter("uid");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String age = request.getParameter("age");
	
	// 데이터베이스 정보
	String host = "jdbc:mysql://3.34.94.228:3306/lucky4527";
	String user = "test";
	String pass = "1234";
	
	try{
		// 1단계
		Class.forName("com.mysql.jdbc.Driver");
		
		// 2단계
		Connection conn = DriverManager.getConnection(host, user, pass);
		
		// 3단계
		Statement stmt = conn.createStatement();
		
		// 4단계
		String sql = "INSERT INTO `User1` VALUES('"+uid+"', '"+name+"', '"+hp+"', "+age+");";
		stmt.executeUpdate(sql);
		
		// 5단계
		// 6단계
		conn.close();
	
	}catch(Exception e){
		e.printStackTrace();
	}
	
	// 리다이렉트
	response.sendRedirect("../Sub5/1_Insert.jsp");
%>
