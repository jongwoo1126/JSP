<%@page import="java.util.List"%>
<%@page import="kr.co.Farmstory1.bean.ArticleBean"%>
<%@page import="kr.co.Farmstory1.dao.ArticleDao"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../_header.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
	String cate = request.getParameter("cate");
	String type = request.getParameter("type");
	
	request.setCharacterEncoding("utf-8");
	String no = request.getParameter("no");
	
	ArticleDao dao = ArticleDao.getInstance();
	ArticleBean article = dao.selectArticle(no);
	
	// 조회수 +1
	dao.updateArticleHit(article.getNo());
	
	// 댓글 가져오기
	List<ArticleBean> comments = dao.selectComments(no);
	
	pageContext.include("./inc/_"+cate+".jsp");
%>
        <section id="board" class="view">
            <h3>글보기</h3>
            <table>
                <tr>
                    <td>제목</td>
                    <td><input type="text" name="title" value="<%= article.getTitle() %>" readonly/></td>
                </tr>
                <tr>
                    <td>첨부파일</td>
                    <td>
                        <a href="#">2020년 상반기 매출자료.xls</a>
                        <span>7회 다운로드</span>
                    </td>
                </tr>
                <tr>
                    <td>내용</td>
                    <td>
                        <textarea name="content" readonly><%= article.getContent() %></textarea>
                    </td>
                </tr>
            </table>
            <div>
                <a href="#" class="btnDelete">삭제</a>
                <a href="/Farmstory1/board/modify.jsp?cate=<%= cate %>&type=<%= type %>&no=<%= no %>" class="btnModify">수정</a>
                <a href="/Farmstory1/board/list.jsp?cate=<%= cate %>&type=<%= type %>" class="btnList">목록</a>
            </div>  
            
            <!-- 댓글리스트 -->
            <section class="commentList">
                <h3>댓글목록</h3>
                <% for(ArticleBean comment : comments) {%>
                <article class="comment">
                    <span>
                        <span><%= comment.getNick() %></span>
                        <span><%= comment.getRdate() %></span>
                    </span>
                    <textarea name="comment" readonly><%= article.getComment() %></textarea>
                    <div>
                        <a href="#">삭제</a>
                        <a href="#">수정</a>
                    </div>
                </article>
                <% } %>
                <% if(comments.size() == 0) {%>
                <p class="empty">
                    등록된 댓글이 없습니다.
                </p>
                <% } %>
            </section>

            <!-- 댓글입력폼 -->
            <section class="commentForm">
                <h3>댓글쓰기</h3>
                <form action="/Farmstory1/board/proc/comment.jsp" method="post">
                	<input type="hidden" name="cate"  value="<%= cate %>"/>
                	<input type="hidden" name="type" value="<%= type %>"/>
                	<input type="hidden" name="no"  value="<%= no %>"/>
                	<input type="hidden" name="uid" value="<%= sessUser.getUid() %>"/>
                    <textarea name="comment"></textarea>
                    <div>
                        <a href="#" class="btnCancel">취소</a>
                        <input type="submit" class="btnWrite" value="작성완료"/>
                    </div>
                </form>
            </section>

        </section>
<!-- 내용 끝 -->

</article>
</section>
</div>
<%@ include file = "../_footer.jsp"%>