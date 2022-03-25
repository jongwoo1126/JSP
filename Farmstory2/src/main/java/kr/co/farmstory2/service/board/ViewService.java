package kr.co.farmstory2.service.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.farmstory2.controller.CommonService;
import kr.co.farmstory2.dao.ArticleDao;
import kr.co.farmstory2.vo.ArticleVo;
import kr.co.farmstory2.vo.UserVo;

public class ViewService implements CommonService{

	@Override
	public String businessProc(HttpServletRequest req, HttpServletResponse resp) {
		
		HttpSession sess = req.getSession();
		UserVo userVo = (UserVo) sess.getAttribute("sessUser");
		
		if(userVo == null) {
			return "redirect:/Farmstory2/user/login.do?success=103";
		}else {
			String cate = req.getParameter("cate");
			String type = req.getParameter("type");
			String no = req.getParameter("no");
			String pg = req.getParameter("pg");
			
			ArticleDao dao = ArticleDao.getInstance();
			
			ArticleVo article = dao.selectArticle(no);
			List<ArticleVo> comments = dao.selectComments(no);
			
			req.setAttribute("article", article);
			req.setAttribute("comments", comments);
			req.setAttribute("cate", cate);
			req.setAttribute("type", type);
			req.setAttribute("pg", pg);
			req.setAttribute("no", no);
		
			return "/board/view.jsp";
		}
	}

}
