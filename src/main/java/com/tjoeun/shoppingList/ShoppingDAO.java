package com.tjoeun.shoppingList;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tjoeun.admin.AdminVO;
import com.tjoeun.register.RegisterVO;
import com.tjoeun.shoppingList.ShoppingVO;

public class ShoppingDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public ShoppingDAO() {
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

	public int insertItem(ShoppingVO vo) {
		System.out.println("shoppingDAO 클래스의 insertItem() 메소드");
		try {
			String sql = "insert into shoppinglist (IDX, ID, NAME, INUM, INAME, IPRICE, ICONTENT, ITYPE, IIMG, ICOUNT) values (SEQ_ITEM_NUM.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getName());
			pstmt.setInt(3, vo.getiNum());
			pstmt.setString(4, vo.getiName());
			pstmt.setInt(5, vo.getiPrice());
			pstmt.setString(6, vo.getiContent());
			pstmt.setString(7, vo.getiType());
			pstmt.setString(8, vo.getiImg());
			pstmt.setInt(9, vo.getiCount());
						
			return pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;
	}

	public List<ShoppingVO> listItem(String id) {
		System.out.println("shoppingDAO 클래스의 listItem() 메소드");
		try {
			String sql = "select * from(select rownum rnum, GG.* from (select * from shoppinglist where id = ? order by IDX desc) GG where rownum <= 5)where rownum >= 1";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			List<ShoppingVO> voList = new ArrayList<>();
			while (rs.next()) {
				ShoppingVO vo = new ShoppingVO();
				vo.setId(rs.getString("ID"));
				vo.setName(rs.getString("NAME"));
				vo.setiNum(rs.getInt("iNum"));
				vo.setiName(rs.getString("iName"));
				vo.setiPrice(rs.getInt("iPrice"));
				vo.setiContent(rs.getString("iContent"));
				vo.setiType(rs.getString("iType"));
				vo.setiImg(rs.getString("iImg"));
				vo.setiCount(rs.getInt("iCount"));
				voList.add(vo);
			}
			return voList;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public ShoppingVO getProduct(ShoppingVO vo) {
		System.out.println("shoppingDAO 클래스의 getProduct() 메소드");
		try {
			String sql = "select * from shoppinglist where idx = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getIdx());
			rs = pstmt.executeQuery();
			ShoppingVO dbVo = new ShoppingVO();
			while (rs.next()) {
				dbVo.setIdx(rs.getInt("IDX"));
				dbVo.setName(rs.getString("NAME"));
				dbVo.setiName(rs.getString("INAME"));
				dbVo.setiPrice(rs.getInt("IPRICE"));
				dbVo.setiContent(rs.getString("ICONTENT"));
			}
			return dbVo;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	

	public int modifyItem(ShoppingVO vo) {
		System.out.println("shoppingDAO 클래스의 modifyItem() 메소드");
		try {
			String sql = "update shoppinglist set ICOUNT = ? where idx = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getiCount());
			pstmt.setInt(2, vo.getIdx());
			
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;
	}

	
	public int deleteItem(int itemNum) {
		System.out.println("shoppingDAO 클래스의 deleteItem() 메소드");
		try {
			String sql = "delete from shoppinglist where IDX = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, itemNum);
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;
	}	
	
	
	
	
	
	
}




















