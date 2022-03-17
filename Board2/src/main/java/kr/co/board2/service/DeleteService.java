package kr.co.board2.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.board2.controller.CommonService;
import kr.co.board2.dao.ArticleDao;

public class DeleteService implements CommonService {

	@Override
	public String businessProc(HttpServletRequest req, HttpServletResponse resp) {
		String no = req.getParameter("no");
		
		ArticleDao.getInstance().deleteArticle(no);
		
		return "redirect:/Board2/list.do";
	}

}
