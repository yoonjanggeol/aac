package com.tjoeun.register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RegisterDAO {

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public RegisterDAO() {
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

	public int register(RegisterVO vo) {
		System.out.println("RegisterDAO 클래스의 register() 메소드");
		try {
			String sql = "insert into AACREGISTER (userID, userPassword, userName, userAge, userGender, userEmail) "
					+ "values (?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getUserID());
			pstmt.setString(2, vo.getUserPassword());
			pstmt.setString(3, vo.getUserName());
			pstmt.setInt(4, vo.getUserAge());
			pstmt.setString(5, vo.getUserGender());
			pstmt.setString(6, vo.getUserEmail());
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;
	}

//	가입하려는 아이디가 테이블에 존재하는가 확인하는 메소드
	public int registerCheck(String userID) {
		System.out.println("RegisterDAO 클래스의 registerCheck() 메소드");
		try {
			String sql = "select * from AACREGISTER where userID = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();

			if (userID.trim().equals("")) {
				// 중복 검사할 아이디를 입력하지 않고 중복 체크 버튼을 클릭했을 경우, 0				
				return 0;
			} else if (rs.next()) { // count(*)로 sql문을 작성한다면 rs>0으로 조건식을 줄수 있다.
				// 존재하는 회원일 경우, 1
				return 1;				
			} else {
				// 존재하지 않는 회원일 경우, 2
				return 2;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
			
		return -1;
	}
	
}






























