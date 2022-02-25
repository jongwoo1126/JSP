<%@page import="kr.co.board1.log.Mylog"%>
<%@page import="kr.co.board1.dao.ArticleDao"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//삭제 글 번호 수신
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	
	ArticleDao dao = ArticleDao.getInstance();

	// 게시글 삭제 
	dao.deleteArticle(id);
	
	// 리다이렉트
	response.sendRedirect("/Board1/list.jsp");
	
	
	Mylog.getInstance().info("delete article...");
%>