package kr.or.ddit.app.rsv.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.app.rsv.service.IRsvService;
import kr.or.ddit.app.rsv.service.RsvServiceImpl;
import kr.or.ddit.app.rsv.vo.RsvVO;

@WebServlet("/customer/rsv.do")
public class ListController extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		IRsvService rsvService = RsvServiceImpl.getInstance();
		
		HttpSession session = req.getSession();
		//세션 확인
		System.out.println("세션 id : "+session.getAttribute("id"));
		String memMail = (String) session.getAttribute("id");
		RsvVO rv = new RsvVO();
		rv.setMemMail(memMail);
		//1명 예약내역
		List<RsvVO> rsvList2 = rsvService.getRsvList(rv);
		rsvList2.toString();
		req.setAttribute("rsvList", rsvList2);
		
		//모든 예약내역
//		List<RsvVO> rsvList = rsvService.getAllRsvList();
//		req.setAttribute("rsvList", rsvList);
//		for(int i = 0; i< rsvList.size();i++) {
//			System.out.print(rsvList.toString().indexOf(i));
//			
//		}

		RequestDispatcher dispatcher = req.getRequestDispatcher("/customer/rsv.jsp");

		dispatcher.forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
