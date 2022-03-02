package kr.co.Farmstory1.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import kr.co.Farmstory1.bean.TermsBean;
import kr.co.Farmstory1.bean.UserBean;
import kr.co.Farmstory1.db.DBConfig;
import kr.co.Farmstory1.db.Sql;

public class UserDao {
	
	private static UserDao instance = new UserDao();
	
	public static UserDao getInstance() {
		return instance;
	}
	
	private UserDao() {}
	
	// CRUD
	public void insertUser(UserBean user) {
		try{
			// 1,2�ܰ�
			Connection conn = DBConfig.getInstance().getConnection();
			// 3�ܰ�
			
			// 4�ܰ�	   
			PreparedStatement psmt = conn.prepareStatement(Sql.INSERT_USER);
			psmt.setString(1, user.getUid());
			psmt.setString(2, user.getPass());
			psmt.setString(3, user.getName());
			psmt.setString(4, user.getNick());
			psmt.setString(5, user.getEmail());
			psmt.setString(6, user.getHp());
			psmt.setString(7, user.getZip());
			psmt.setString(8, user.getAddr1());
			psmt.setString(9, user.getAddr2());
			psmt.setString(10, user.getRegip());
			
			psmt.executeUpdate();
			// 5�ܰ�
			// 6�ܰ�
			conn.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public TermsBean selectTerms() {
		
		TermsBean tb = new TermsBean();
		try {
			Connection conn = DBConfig.getInstance().getConnection();
			
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(Sql.SELECT_TERMS);
			
			if(rs.next()) {
				tb.setTerms(rs.getString(1));
				tb.setPrivacy(rs.getString(2));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return tb;
	}
	public UserBean selectUser(String uid, String pass) {
		
		UserBean ub = null;
		
		try{
			Connection conn = DBConfig.getInstance().getConnection();
					
			PreparedStatement psmt = conn.prepareStatement(Sql.SELECT_USER);
			psmt.setString(1, uid);
			psmt.setString(2, pass);
			
			ResultSet rs = psmt.executeQuery();
			
			if(rs.next()){
				// ��ġ�ϴ� ȸ���� ������
				ub = new UserBean();
				ub.setUid(rs.getString(1));
				ub.setPass(rs.getString(2));
				ub.setName(rs.getString(3));
				ub.setNick(rs.getString(4));
				ub.setEmail(rs.getString(5));
				ub.setHp(rs.getString(6));
				ub.setGrade(rs.getInt(7));
				ub.setZip(rs.getString(8));
				ub.setAddr1(rs.getString(9));
				ub.setAddr2(rs.getString(10));
				ub.setRegip(rs.getString(11));
				ub.setRdate(rs.getString(12));
							
			conn.close();
			
		}
	
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return ub;
	}
	public void updateUser() {}
	public void deleteUser() {}
	
}
