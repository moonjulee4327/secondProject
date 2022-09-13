package kr.or.ddit.app.mem.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.app.mem.service.IMemService;
import kr.or.ddit.app.mem.service.MemServiceImpl;
import kr.or.ddit.app.mem.vo.MemberVO;

@WebServlet("/login_check.do")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginController() {
		super();
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);

	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("서블릿이 호출되었습니다.");
		req.setCharacterEncoding("utf-8");

		String memMail = req.getParameter("memMail");
		String memPw = req.getParameter("memPw");

		String res = getEncrypt(memPw);

		MemberVO mv = new MemberVO();
		mv.setMemMail(memMail);
		IMemService memservice = MemServiceImpl.getInstance();

		MemberVO rs = memservice.selectMem(mv);

		if (memMail.equals(rs.getMemMail()) && res.equals(rs.getMemPw())) {
			String memNm = rs.getMemNm();
			System.out.println("환영합니다 " + memNm + "님");
		} else {

			System.out.println("이메일과 비밀번호를 확인해하세요.");

		}

	}

	public String getEncrypt(String pwd) {

		String result = "";

		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");

			md.update(pwd.getBytes("UTF-8"));

			byte[] nPwd = md.digest();

			StringBuffer sb = new StringBuffer();
			for (byte b : nPwd) {
				sb.append(String.format("%02x", b));
			}

			result = sb.toString();

//			System.out.println("암호화 적용 후 pw : " + result);

		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		return result;
	}
}
