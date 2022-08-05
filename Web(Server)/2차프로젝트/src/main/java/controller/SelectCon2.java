package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.MemberDTO2;

import model.MemberDAO2;



@WebServlet("/SelectCon2")
public class SelectCon2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 인코딩
		request.setCharacterEncoding("UTF-8");

		// 아이디 값 가져오기
		String id = request.getParameter("id");

		MemberDAO2 dao = new MemberDAO2();
		MemberDTO2 dto = dao.select(id);

		if (dto  != null) {
			HttpSession session = request.getSession();
			session.setAttribute("selectDTO", dto);

			// selectCheck.jsp로 이동
			response.sendRedirect("selectCheck.jsp");
		}else {
			response.sendRedirect("select.html");

		}
	}

}
