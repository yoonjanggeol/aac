package com.tjoeun.admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tjoeun.admin.AdminVO;

public class AdminDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public AdminDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			conn = DriverManager.getConnection(url, "tjoeunit", "0000");
			System.out.println("연결성공: " + conn);
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 클래스가 없거나 읽어올 수 없습니다.");
		} catch (SQLException e) {
			System.out.println("데이터베이스 연결 정보가 올바르지 않습니다.");
		}
	}
	
	public int insertItem(AdminVO vo) {
		System.out.println("adminDAO 클래스의 insertItem() 메소드");
		try {
			String sql = "insert into AACITEMLIST (ITEMNUM, ITEMNAME, ITEMPRICE, ITEMCONTENT) values (SEQ_ITEM_NUM.NEXTVAL, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getItemName());
			pstmt.setString(2, vo.getItemPrice());
			pstmt.setString(3, vo.getItemContent());
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public List<AdminVO> listItem() {
		System.out.println("adminDAO 클래스의 listItem() 메소드");
		try {
			String sql = "select * from( select rownum rnum, GG.* from ( select * from aacitemlist order by ITEMNUM desc) GG where rownum <= 5)where rownum >= 1";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			List<AdminVO> voList = new ArrayList<>();
			while(rs.next()) {
				AdminVO vo = new AdminVO();
				vo.setItemNum(rs.getInt("ITEMNUM"));
				vo.setItemName(rs.getString("ITEMNAME"));
				vo.setItemPrice(rs.getString("ITEMPRICE"));
				vo.setItemContent(rs.getString("ITEMCONTENT"));
				voList.add(vo);
			}
			return voList;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
}
