package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;

public class UpdateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("[UpdateCon]");
		
		// 인코딩
		request.setCharacterEncoding("UTF-8");
		
		//email 넣을때
		HttpSession session = request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		String email = loginMember.getEmail();
		
		// form태그 통해서 넘겨준 pw, tel, address 가져오기
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
	
		Member m_vo = new Member(email, pw, tel, address);
	}

}
