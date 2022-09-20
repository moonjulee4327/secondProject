package kr.or.ddit.app.review.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.app.common.service.AtchFileServiceImpl;
import kr.or.ddit.app.common.service.IAtchFileService;
import kr.or.ddit.app.common.vo.AtchFileVO;
import kr.or.ddit.app.review.service.IReviewService;
import kr.or.ddit.app.review.service.ReviewServiceImpl;
import kr.or.ddit.app.review.vo.ReviewVO;

@MultipartConfig
@WebServlet("/review/reviewInsert.do")
public class InsertReviewController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/review/reviewInsert.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String reviewTitle = req.getParameter("reviewTitle");
		String reviewCont = req.getParameter("reviewCont");
		String reviewRat = req.getParameter("reviewRat");
		String memMail = req.getParameter("memMail");
		String pkgId = req.getParameter("pkgId");
		
		IReviewService reviewService = ReviewServiceImpl.getInstance();
//		IAtchFileService fileService = AtchFileServiceImpl.getInstance();

		// 첨부파일 저장하기
//		AtchFileVO atchFileVO = fileService.saveAtchFileList(req, getServletContext().getRealPath("/") + File.separator + "review");
		
		ReviewVO rv = new ReviewVO();
		rv.setReviewTitle(reviewTitle);
		rv.setReviewCont(reviewCont);
		rv.setReviewRat(reviewRat);
		rv.setMemMail(memMail);
		rv.setPkgId(pkgId);
		
		int cnt = reviewService.registerReview(rv);
		
		String redirectUrl = req.getContextPath() + "/review/reviewList.do";
		resp.sendRedirect(redirectUrl);
	}
}
















