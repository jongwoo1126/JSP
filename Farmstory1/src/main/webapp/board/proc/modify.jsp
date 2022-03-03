<%@page import="kr.co.Farmstory1.dao.ArticleDao"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String no = request.getParameter("no");
	String cate = request.getParameter("cate");
	String type = request.getParameter("type");
	
	// Update
	ArticleDao dao = ArticleDao.getInstance();
	dao.updateArticle(title, content, no);
		
	// 리다이렉트
	response.sendRedirect("/Farmstory1/board/view.jsp?cate="+cate+"&type="+type+"&no="+no);
%>