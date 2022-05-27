package com.tjoeun.shoppingList;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.eclipse.jdt.internal.compiler.parser.RecoveredRequiresStatement;


import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.tjoeun.admin.AdminVO;
import com.tjoeun.register.RegisterVO;

@WebServlet("/products")
public class ShoppingList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public ShoppingList() {
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

		HttpSession session = request.getSession();
		
		String id = session.getAttribute("id").toString();
		System.out.println(id);
		String name = session.getAttribute("name").toString(); 
		System.out.println(name);
		int iNum = Integer.parseInt(request.getParameter("iNum").trim());
		System.out.println(iNum);
		String iName = request.getParameter("iName").trim();
		int iPrice = Integer.parseInt(request.getParameter("iPrice").trim());
		String iContent = request.getParameter("iContent").trim();
		String iType = request.getParameter("iType").trim();
		String iImg = request.getParameter("iImg").trim();
		int iCount = Integer.parseInt(request.getParameter("iCount").trim());
		System.out.println(iCount);
		
		
		
		
		ShoppingVO vo = new ShoppingVO();
		vo.setId(id);
		vo.setName(name);
		vo.setiNum(iNum);
		vo.setiName(iName);
		vo.setiPrice(iPrice);
		vo.setiContent(iContent);
		vo.setiType(iType);
		vo.setiImg(iImg);
		vo.setiCount(iCount);
				
		
		int result = new ShoppingDAO().insertItem(vo);
		System.out.println(result);

		if (result == 1) {
			response.getWriter().write("1");
		}
	}
	
	
	
	
}
