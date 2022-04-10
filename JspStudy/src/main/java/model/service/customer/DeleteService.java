package model.service.customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.MemberDao;
import model.service.CommonService;

public class DeleteService implements CommonService{

	@Override
	public String businessProc(HttpServletRequest req, HttpServletResponse resp) {
	
		String uid = req.getParameter("uid");
		
		MemberDao.getInstance().deleteMember(uid);
		
		return "redirect:/JspStudy/Sub8/member/list.do";
	}

}
