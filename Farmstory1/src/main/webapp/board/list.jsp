<%@page import="kr.co.Farmstory1.bean.ArticleBean"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.Farmstory1.dao.ArticleDao"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../_header.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
	String cate = request.getParameter("cate");
	String type = request.getParameter("type");
	String pg = request.getParameter("pg");
	
	pageContext.include("./inc/_"+cate+".jsp");

	ArticleDao dao = ArticleDao.getInstance();
	
	// 페이지 번호 작업
	int total = dao.selectCountTotal(type);
	int lastPageNum = 0;
	
	if(total % 10 == 0){
		lastPageNum = total / 10;
	}else{
		lastPageNum = total / 10 + 1;
	}
	
	int currentPg = 1;
	
	if(pg != null){
		currentPg = Integer.parseInt(pg);
	}
	
	int start = (currentPg - 1) * 10;
	int pageStartNum = total - start;
	
	int groupCurrent = (int)Math.ceil(currentPg / 10.0);
	int groupStart = (groupCurrent -1) * 10 +1; 
	int groupEnd = groupCurrent * 10;
	
	if(groupEnd > lastPageNum){
		groupEnd = lastPageNum;
	}
	
	// 글 가져오기
	List<ArticleBean> articles = dao.selectArticles(type, start);
	
%>

<section id="board" class="list">
    <h3>글목록</h3>
    <article>
        <table border="0">
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>글쓴이</th>
                <th>날짜</th>
                <th>조회</th>
            </tr>
            
            <% for(ArticleBean article : articles){ %>
            <tr>
                <td><%= pageStartNum-- %></td>
                <td><a href="/Farmstory1/board/view.jsp?cate=<%= cate %>&type=<%= type %>&no=<%= article.getNo() %>"><%= article.getTitle() %></a>&nbsp;[3]</td>
                <td><%= article.getNick() %></td>
                <td><%= article.getRdate().substring(2, 10) %></td>
                <td><%= article.getHit() %></td>
            </tr>
            <% } %>
        </table>
    </article>

    <!-- 페이지 네비게이션 -->
    <div class="paging">
   		<%if(groupStart > 1){ %>
        	<a href="/Farmstory1/board/list.jsp?cate=<%= cate %>&type=<%= type %>&pg=<%= groupStart-1 %>" class="prev">이전</a>
		<% } %>
                
		<% for(int p=groupStart ; p<=groupEnd ; p++){ %>     
        	<a href="/Farmstory1/board/list.jsp?cate=<%= cate %>&type=<%= type %>&pg=<%= p %>" class="num <%= (currentPg == p) ? "current" : "" %>"><%= p %></a> 
		<% } %>
                
        <%if(groupEnd < lastPageNum){ %>               
        	<a href="/Farmstory1/board/list.jsp?cate=<%= cate %>&type=<%= type %>&pg=<%= groupEnd+1 %>" class="next">다음</a>
        <% } %>
	</div>

    <!-- 글쓰기 버튼 -->
    <a href="/Farmstory1/board/write.jsp?cate=<%= cate %>&type=<%= type %>" class="btnWrite">글쓰기</a>

</section>
<!-- 내용 끝 -->

</article>
</section>
</div>
        
 <%@ include file = "../_footer.jsp"%>