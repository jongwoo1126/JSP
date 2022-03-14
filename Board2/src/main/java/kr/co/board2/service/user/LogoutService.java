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
		
		// ���� ���� ���ϱ�
		HttpSession sess = req.getSession();
		
		// ���� ����
		sess.invalidate();
		
		// �����̷�Ʈ
		return "redirect:/Board2/user/login.do?success=103";
		
	}
		
}
