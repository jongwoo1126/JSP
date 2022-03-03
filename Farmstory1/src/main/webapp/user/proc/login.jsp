<%@page import="kr.co.Farmstory1.dao.UserDao"%>
<%@page import="kr.co.Farmstory1.bean.UserBean"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.co.Farmstory1.db.DBConfig"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String cate = request.getParameter("cate");
	String type = request.getParameter("type");
	String uid = request.getParameter("uid");
	String pass = request.getParameter("pass");
	
	UserBean ub = UserDao.getInstance().selectUser(uid, pass);
	
	if(ub != null){
		// 회원이 맞는 경우
		session.setAttribute("sessUser", ub);
		
		if(cate.equals("null")){
			response.sendRedirect("/Farmstory1");
		}else{
			response.sendRedirect("/Farmstory1/board/list.jsp?cate="+cate+"&type="+type);
		}
		
	}else{
		// 회원이 아닌 경우
		response.sendRedirect("/Farmstory1/user/login.jsp?success=100");
	}
%>