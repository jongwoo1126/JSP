package model.service.customer;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.CustomerDao;
import model.service.CommonService;
import vo.CustomerVo;

public class ListService implements CommonService{

	@Override
	public String businessProc(HttpServletRequest req, HttpServletResponse resp) {
		// Dao ����(������ ��������)
			List<CustomerVo> customers = CustomerDao.getInstance().selectCustomers();
			
			// users �����ͼ��� View���� �����ϱ� ���� reqest ��ü�� ����
			req.setAttribute("customers", customers);
			
			return "/Sub8/customer/list.jsp";
		
	}

}
