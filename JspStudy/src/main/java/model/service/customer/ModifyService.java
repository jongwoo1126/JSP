package model.service.customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.CustomerDao;
import model.dao.MemberDao;
import model.dao.UserDao;
import model.service.CommonService;
import vo.CustomerVo;
import vo.MemberVo;
import vo.UserVo;

public class ModifyService implements CommonService{

	@Override
	public String businessProc(HttpServletRequest req, HttpServletResponse resp) {
		
		if(req.getMethod().equals("GET")) {
			// Get 요청
			String custid = req.getParameter("custid");
			CustomerVo customer = CustomerDao.getInstance().selectCustomer(custid);
			
			req.setAttribute("customer", customer);
			
			
			return "/Sub8/customer/modify.jsp";
		}else {
			// Post 요청
			String custid = req.getParameter("custid");
			String name = req.getParameter("name");
			String address = req.getParameter("address");
			String phone = req.getParameter("phone");
			
			CustomerVo vo = new CustomerVo();
			vo.setCustid(custid);
			vo.setName(name);
			vo.setAddress(address);
			vo.setPhone(phone);
			
			CustomerDao.getInstance().updateCustomer(vo);
			
			return "redirect:/JspStudy/Sub8/customer/list.do";
			
		}
		
	}

}
