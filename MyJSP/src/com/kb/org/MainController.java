package com.kb.org;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kb.org.member.*;

@WebServlet("*.do")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MemberDAO dm = MemberDAO.getInstance();
       
    public MainController() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = null;		// JSP 파일지정
		request.setCharacterEncoding("UTF-8");
		String reqURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String cmd = reqURI.substring(contextPath.length());
		
//		System.out.println("reqURI = " + reqURI);
//		System.out.println("contextPath = " + contextPath);
//		System.out.println("cmd = " + cmd);
		
		if(cmd.equals("/index.do")) {
			/*
			 * recent 회원가입 list 5
			 * recent content list 5
			 */
			rd = request.getRequestDispatcher("index.jsp");
		}else if(cmd.equals("/member.do")) {
			dm.select(request);
			dm.cntmember(request);
			rd = request.getRequestDispatcher("member.jsp");
		}else if(cmd.equals("/freeboard.do")) {
			rd = request.getRequestDispatcher("freeboard.jsp");
		}else if(cmd.equals("/memberInsert.do")) {
			rd = request.getRequestDispatcher("memberInsert.jsp");
		}else if(cmd.equals("/memberInsertProc.do")) {
			// 회원 등록 하고 list 화면 보여주기
			dm.insert(request);
			dm.select(request);
			rd = request.getRequestDispatcher("member.jsp");
		}else if(cmd.equals("/memberUpdate.do")) {
			// String seq = request.getParameter("seq");
			dm.selectRow(request);
			rd = request.getRequestDispatcher("memberUpdate.jsp");
		}else if(cmd.equals("/memberUpdateProc.do")) {
			dm.updateRow(request);
			dm.select(request);
			rd = request.getRequestDispatcher("member.jsp");
		}else if(cmd.equals("/memberDelete.do")) {
			String[] seqs = request.getParameterValues("seq");
			for(String temp : seqs) System.out.println("temp = " + temp);
			rd = request.getRequestDispatcher("memberDelete.jsp");
		}else {
			rd = request.getRequestDispatcher("error404.jsp");
		}
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
