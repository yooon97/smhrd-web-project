package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.MemberDTO;

import model.MemberDAO;

@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 0.인코딩
		request.setCharacterEncoding("UTF-8");

		// 1. 아이디와 비밀번호 가져오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		

		MemberDAO dao = new MemberDAO();
		MemberDTO dto = dao.login(id, pw);
		
		if (dto != null) {
			// 로그인에 성공한 경우
			// 세션 객체 생성하기
			HttpSession session = request.getSession();
			// dto 객체를 세션에 저장
			session.setAttribute("dto", dto);
			// id를 세션에 저장
			// session.setAttribute("id", id);
			// 세션에 정보를 담고 나면 페이지 이동(Main.jsp)
			response.sendRedirect("main.jsp");

		} else {
			// dto <= null , 로그인에 실패
			response.sendRedirect("Login.jsp");
		}

	}

}
