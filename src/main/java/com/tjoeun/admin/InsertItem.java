package com.tjoeun.admin;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/insertItem")
public class InsertItem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public InsertItem() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// System.out.println("UserRegister 서블릿의 doGet() 메소드 실행");
		actionDo(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// System.out.println("UserRegister 서블릿의 doPost() 메소드 실행");
		actionDo(request, response);
	}

	protected void actionDo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 System.out.println("UserRegister 서블릿의 actionDo() 메소드 실행");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");

		/* 상품 이미지 저장 */
		System.out.println("이미지 저장 시작");
		String path = request.getServletContext().getRealPath("/upload/"); // 경로 설정
		System.out.println("이미지 저장 경로::" + path);
		File file = new File(path);
		boolean isDirFalg = file.isDirectory(); // 경로 확인용

		if (isDirFalg) {
			System.out.println("경로에 upload 파일 있음");
		} else {
			System.out.println("경로에 upload 파일 없음");
			file.mkdirs();
			System.out.println("경로에 upload 파일 생성");
		}

		MultipartRequest m = null;
		try {
			m = new MultipartRequest(request, path, 10 * 1024 * 1024, "UTF-8", new DefaultFileRenamePolicy());
			System.out.println("서버에 업로드 성공");
		} catch (Exception e) {
			System.out.println("서버에 업로드 실패");
		}

		String uploadFileName = "";
		String savedFileName = "";
		try {
			file = m.getFile("filename");
			if (file != null) {
				uploadFileName = m.getOriginalFileName("filename");
				savedFileName = file.getName();
				System.out.println("서버에 저장된 파일 명 :: "+savedFileName);
			}
		} catch (Exception e) {
			System.out.println("파일명 추출 실패");
		}
		System.out.println("이미지 저장 종료");

		/* 테이블 바인딩 데이터 세팅 */
		System.out.println("테이블에 데이터 저장 시작");
		String itemType = m.getParameter("itemType");
		String itemName = m.getParameter("itemName");
		String itemPrice = m.getParameter("itemPrice");
		String itemContent = m.getParameter("description");
		String itemImg = savedFileName;

		System.out.println(savedFileName);
		System.out.println("상품종류:   " + itemType);
		System.out.println("상품명:   " + itemName);
		System.out.println("가격:   " + itemPrice);
		System.out.println("상품설명:   " + itemContent);
		System.out.println("파일이름:   " + savedFileName);

		AdminVO vo = new AdminVO();
		vo.setItemType(itemType);
		vo.setItemName(itemName);
		vo.setItemPrice(itemPrice);
		vo.setItemcontent(itemContent);
		vo.setItemImg(savedFileName);
		
		int result = new AdminDAO().insertItem(vo);
		System.out.println(result);
		if (result == 1) {
			System.out.println("테이블에 데이터 저장 성공");
			RequestDispatcher rd = request.getRequestDispatcher("/listItem.jsp");
			rd.forward(request, response);
		}
	}
}
