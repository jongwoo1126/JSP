package kr.co.board2.service.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.board2.controller.CommonService;
import kr.co.board2.dao.UserDao;
import kr.co.board2.vo.UserVo;

public class LogoutService implements CommonService {

	@Override
	public String businessProc(HttpServletRequest req, HttpServletResponse resp) {
		
		// 현재 세션 구하기
		HttpSession sess = req.getSession();
		
		// 세션 해제
		sess.invalidate();
		
		// 리다이렉트
		return "redirect:/Board2/user/login.do?success=103";
		
	}
		
}
