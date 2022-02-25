<%@page import="kr.co.board1.bean.ArticleBean"%>
<%@page import="kr.co.board1.dao.ArticleDao"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.co.board1.db.DBConfig"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String id = request.getParameter("id");
	
	// Update
	ArticleDao dao = ArticleDao.getInstance();
	dao.updateArticle(title, content, id);
		
	// 리다이렉트
	response.sendRedirect("/Board1/view.jsp?id="+id);
%>