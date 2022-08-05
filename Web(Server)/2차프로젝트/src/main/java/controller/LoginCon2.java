package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.MemberDTO2;

import model.MemberDAO2;

@WebServlet("/LoginCon2")
public class LoginCon2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		String sql = "";
		int cnt = 0;
		MemberDTO2 dto = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 3. DB 경로, id/pw 인증
			// [프로젝트때 받을 주소]
			String url = "jdbc:oracle:thin:@127.0.0.1:1521";
			String dbid = "hr";
			String dbpw = "hr";

			conn = DriverManager.getConnection(url, dbid, dbpw);
			if (conn != null) {
				System.out.print("연결 성공");
			} else {
				System.out.print("연결 실패");
			}

		} catch (Exception e) {

			e.printStackTrace();
		}
		
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				// 3. DB 경로, id/pw 인증
				// [프로젝트때 받을 주소]
				String url = "jdbc:oracle:thin:@127.0.0.1:1521";
				String dbid = "hr";
				String dbpw = "hr";

				conn = DriverManager.getConnection(url, dbid, dbpw);
				if (conn != null) {
					System.out.print("연결 성공");
				} else {
					System.out.print("연결 실패");
				}

			} catch (Exception e) {

				e.printStackTrace();
			}
	
		// 0.인코딩
		request.setCharacterEncoding("UTF-8");

		// 1. 아이디와 비밀번호 가져오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		MemberDAO2 dao = new MemberDAO2();
		MemberDTO2 dto = dao.login(id, pw);

		if (dto != null) {
			// 로그인에 성공한 경우
			// 세션 객체 생성하기
			HttpSession session = request.getSession();

			// dto 객체를 세션에 저장
			session.setAttribute("dto", dto);
			// id를 세션에 저장
			// session.setAttribute("id", id);
			// 세션에 정보를 담고 나면 페이지 이동(Main.jsp)
			response.sendRedirect("test.jsp");

		} else {
			// dto <= null , 로그인에 실패
			response.sendRedirect("main.jsp");
			System.out.println("실패");
			System.out.println(id);
			System.out.println(pw);
		}
		try {
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
