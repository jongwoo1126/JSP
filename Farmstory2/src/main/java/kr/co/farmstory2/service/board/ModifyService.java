package kr.co.farmstory2.service.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.farmstory2.controller.CommonService;
import kr.co.farmstory2.dao.ArticleDao;
import kr.co.farmstory2.vo.ArticleVo;

public class ModifyService implements CommonService{

	@Override
	public String businessProc(HttpServletRequest req, HttpServletResponse resp) {

		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String no = req.getParameter("no");
		String cate = req.getParameter("cate");
		String type = req.getParameter("type");
		String pg = req.getParameter("pg");
		
		ArticleDao dao = ArticleDao.getInstance();
		
		req.setAttribute("cate", cate);
		req.setAttribute("type", type);
		req.setAttribute("pg", pg);
		req.setAttribute("title", title);
		req.setAttribute("content", content);
		req.setAttribute("no", no);

		
		if (req.getMethod().equals("GET")) {
		
			ArticleVo article = dao.selectArticle(no);
			req.setAttribute("article", article);
			
			return "/board/modify.jsp";
		}else {
			
			dao.getInstance().updateArticle(title, content, no);
		
			return "redirect:/Farmstory2/board/view.do?cate="+cate+"&type="+type+"&no="+no+"&pg="+pg;
		}
		
	}

}
