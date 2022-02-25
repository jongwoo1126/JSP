<%@page import="kr.co.board1.log.Mylog"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	session.invalidate();

	response.sendRedirect("/Board1/user/login.jsp?success=101");
	
	Mylog.getInstance().info("logout");
%>