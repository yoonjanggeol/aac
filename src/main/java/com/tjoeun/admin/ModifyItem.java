package com.tjoeun.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/modifyItem")
public class ModifyItem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ModifyItem() {
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
		// System.out.println("UserRegister 서블릿의 actionDo() 메소드 실행");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");

		String itemNum = request.getParameter("itemNum").trim();
		String itemType = request.getParameter("itemType").trim();
		String itemName = request.getParameter("itemName").trim();
		String itemPrice = request.getParameter("itemPrice").trim();
		String itemContent = request.getParameter("itemContent").trim();
		AdminVO vo = new AdminVO();
		vo.setItemNum(Integer.parseInt(itemNum));
		vo.setItemType(itemType);
		vo.setItemName(itemName);
		vo.setItemPrice(itemPrice);
		vo.setItemcontent(itemContent);
		try {
			int result = new AdminDAO().modifyItem(vo);
			if (result == 1) {
				response.getWriter().write("1");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
