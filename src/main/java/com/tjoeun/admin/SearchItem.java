package com.tjoeun.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/searchItem")
public class SearchItem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SearchItem() {
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
		AdminVO vo = new AdminDAO().searchItem(Integer.parseInt(itemNum));
		if (vo != null) {
			String json = new Gson().toJson(vo);
			response.getWriter().write(json);
		}
	}
}
