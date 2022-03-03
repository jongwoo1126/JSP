<%@page import="kr.co.Farmstory1.bean.ArticleBean"%>
<%@page import="kr.co.Farmstory1.dao.ArticleDao"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../_header.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
	String cate = request.getParameter("cate");
	String type = request.getParameter("type");
	String no = request.getParameter("no");

	// 글 가져오기
	ArticleBean article = ArticleDao.getInstance().selectArticle(no);
	
	pageContext.include("./inc/_"+cate+".jsp");
%>
        <section id="board" class="modify">
            <h3>글수정</h3>
            <article>
                <form action="/Farmstory1/board/proc/modify.jsp" method="post">
                <input type="hidden" name="no" value="<%= article.getNo() %>"/>
                <input type="hidden" name="cate" value="<%= cate %>"/>
                <input type="hidden" name="type" value="<%= type %>"/>
                    <table>
                        <tr>
                            <td>제목</td>
                            <td><input type="text" name="title" value="<%= article.getTitle() %>"/></td>
                        </tr>
                        <tr>
                            <td>내용</td>
                            <td>
                                <textarea name="content"><%= article.getContent() %></textarea>                                
                            </td>
                        </tr>
                        <tr>
                            <td>첨부</td>
                            <td><input type="file" name="file"/></td>
                        </tr>
                    </table>
                    <div>
                        <a href="/Farmstory1/board/view.jsp?cate=<%= cate %>&type=<%= type %>&no=<%= no %>" class="btnCancel">취소</a>
                        <input type="submit"  class="btnWrite" value="수정완료">
                    </div>
                </form>
            </article>
        </section>
<!-- 내용 끝 -->

</article>
</section>
</div>
<%@ include file = "../_footer.jsp"%>