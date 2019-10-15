package com.kb.org;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MainController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = null;
		request.setCharacterEncoding("UTF-8");
		String reqURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String cmd = reqURI.substring(contextPath.length());
		
		System.out.println("reqURI = " + reqURI);
		System.out.println("contextPath = " + contextPath);
		System.out.println("cmd = " + cmd);
		
		if(cmd.equals("/index.do")) {
			/*
			 * recent 회원가입 list 5
			 * recent content list 5
			 */
			rd = request.getRequestDispatcher("index.jsp");
		}else if(cmd.equals("/member.do")) {
			HashMap<String, String> list = new HashMap<String, String>();
			
			list.put("MyName1", "홍길동");
			list.put("MyName2", "박길동");
			list.put("MyName3", "이길동");
			
			request.setAttribute("hm", list);
			rd = request.getRequestDispatcher("member.jsp");
		}else if(cmd.equals("/freeboard.do")) {
			rd = request.getRequestDispatcher("freeboard.jsp");
		}
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
