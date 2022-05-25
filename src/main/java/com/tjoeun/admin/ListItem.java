package com.tjoeun.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.jni.File;

import com.google.gson.Gson;
import com.google.gson.JsonArray;

@WebServlet("/listItem")
public class ListItem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ListItem() {
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

		List<AdminVO> list = new AdminDAO().listItem();
		for (int i = 0; i < list.size(); i++) {
			list.get(i).setItemImg("./upload/"+list.get(i).getItemImg());
		}
		if (list != null) {
			String json = new Gson().toJson(list);
			response.getWriter().write(json);
		}
	}
}
