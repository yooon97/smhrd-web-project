package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;

@WebServlet("/DeleteCon")
public class DeleteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 인코딩 (post방식으로 넘겨줄때 인코딩)
		request.setCharacterEncoding("UTF-8");

		// 아이디 값 가져오기
		String id = request.getParameter("id");

		PreparedStatement psmt = null;
		Connection conn = null;
		MemberDAO dao = new MemberDAO();
		int cnt = dao.delete(id);
		if (cnt > 0) {
			// Sql문 실행이 성공하면 메인으로 이동

			// System.out.print(id + "님 삭제 성공했습니다.");
			// out.print("<a href='Main.jsp'>메인으로가기</a>");
			HttpSession session = request.getSession();
			response.sendRedirect("main.jsp");
			session.removeAttribute("dto");

		} else {
			// Sql문 실행이 실패하면
			System.out.print("회원 삭제 실패");
			response.sendRedirect("delete.html");
			// out.print("<a href='delete.html'>회원삭제 돌아가기</a>");
		}

	}

}