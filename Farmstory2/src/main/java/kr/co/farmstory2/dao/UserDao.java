package kr.co.farmstory2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import kr.co.farmstory2.config.DBConfig;
import kr.co.farmstory2.config.Sql;
import kr.co.farmstory2.vo.TermsVo;
import kr.co.farmstory2.vo.UserVo;

public class UserDao {
	
	private static UserDao instance = new UserDao();
	
	public static UserDao getInstance() {
		return instance;
	}
	
	private UserDao() {}
	
	// CRUD
	public void insertUser(UserVo user) {
		try{
			// 1,2단계
			Connection conn = DBConfig.getInstance().getConnection();
			// 3단계
			
			// 4단계	   
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
			// 5단계
			// 6단계
			conn.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public TermsVo selectTerms() {
		
		TermsVo tv = new TermsVo();
		try {
			Connection conn = DBConfig.getInstance().getConnection();
			
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(Sql.SELECT_TERMS);
			
			if(rs.next()) {
				tv.setTerms(rs.getString(1));
				tv.setPrivacy(rs.getString(2));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return tv;
	}
	
	public int selectCountUid(String uid) {
	
		int count = 0;
		
		try {
			Connection conn = DBConfig.getInstance().getConnection();
			PreparedStatement psmt = conn.prepareStatement(Sql.SELECT_COUNT_UID);
			psmt.setString(1, uid);
			
			ResultSet rs = psmt.executeQuery();
			if(rs.next()) {
				count = rs.getInt(1);
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}
	
	public UserVo selectUser(String uid, String pass) {
		
		UserVo uv = null;
		
		try{
			Connection conn = DBConfig.getInstance().getConnection();
					
			PreparedStatement psmt = conn.prepareStatement(Sql.SELECT_USER);
			psmt.setString(1, uid);
			psmt.setString(2, pass);
			
			ResultSet rs = psmt.executeQuery();
			
			if(rs.next()){
				// 일치하는 회원이 있으면
				uv = new UserVo();
				uv.setUid(rs.getString(1));
				uv.setPass(rs.getString(2));
				uv.setName(rs.getString(3));
				uv.setNick(rs.getString(4));
				uv.setEmail(rs.getString(5));
				uv.setHp(rs.getString(6));
				uv.setGrade(rs.getInt(7));
				uv.setZip(rs.getString(8));
				uv.setAddr1(rs.getString(9));
				uv.setAddr2(rs.getString(10));
				uv.setRegip(rs.getString(11));
				uv.setRdate(rs.getString(12));
							
			conn.close();
			
		}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return uv;
	}
	
	public int selectUserCount(String info, int what) {
		
		int count = 0;
		
		try {
			Connection conn = DBConfig.getInstance().getConnection();
			PreparedStatement psmt = null; 
			if(what ==1){
				psmt = conn.prepareStatement(Sql.SELECT_COUNT_UID);
			}else if(what ==2){
				psmt = conn.prepareStatement(Sql.SELECT_COUNT_NICK);
			}else if(what ==3) {
				psmt = conn.prepareStatement(Sql.SELECT_COUNT_EMAIL);
			}else if(what ==4) {
				psmt = conn.prepareStatement(Sql.SELECT_COUNT_HP);
			}
			psmt.setString(1, info);
			
			ResultSet rs = psmt.executeQuery();
			
			if(rs.next()) {
				count = rs.getInt(1);
			}
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return count;
	}
	
	
	public void updateUser() {}
	public void deleteUser() {}
	
}
