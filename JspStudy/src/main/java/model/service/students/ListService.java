package model.service.students;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.MemberDao;
import model.dao.UserDao;
import model.service.CommonService;
import vo.MemberVo;
import vo.UserVo;

public class ListService implements CommonService{

	@Override
	public String businessProc(HttpServletRequest req, HttpServletResponse resp) {
		// Dao ����(������ ��������)
			List<MemberVo> members = MemberDao.getInstance().selectMembers();
			
			// users �����ͼ��� View���� �����ϱ� ���� reqest ��ü�� ����
			req.setAttribute("members", members);
			
			return "/Sub8/member/list.jsp";
		
	}

}
