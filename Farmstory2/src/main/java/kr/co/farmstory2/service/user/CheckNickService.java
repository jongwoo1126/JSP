package kr.co.farmstory2.service.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;

import kr.co.farmstory2.controller.CommonService;
import kr.co.farmstory2.dao.UserDao;

public class CheckNickService implements CommonService{

	@Override
	public String businessProc(HttpServletRequest req, HttpServletResponse resp) {
		
		String nick = req.getParameter("nick");
		
		int count = UserDao.getInstance().selectUserCount(nick, 2);
		
		JsonObject json = new JsonObject();
		json.addProperty("result", count);
		
		return "json:"+json.toString();
	}

}
