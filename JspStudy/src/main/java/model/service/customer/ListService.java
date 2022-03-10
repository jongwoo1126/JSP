package model.service.customer;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.CustomerDao;
import model.dao.MemberDao;
import model.dao.UserDao;
import model.service.CommonService;
import vo.CustomerVo;
import vo.MemberVo;
import vo.UserVo;

public class ListService implements CommonService{

	@Override
	public String businessProc(HttpServletRequest req, HttpServletResponse resp) {
		// Dao 실행(데이터 가져오기)
			List<CustomerVo> customers = CustomerDao.getInstance().selectCustomers();
			
			// users 데이터셋을 View에서 참조하기 위해 reqest 객체로 저장
			req.setAttribute("customers", customers);
			
			return "/Sub8/customer/list.jsp";
		
	}

}
