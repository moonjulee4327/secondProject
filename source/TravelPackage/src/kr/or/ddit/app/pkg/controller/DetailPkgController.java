package kr.or.ddit.app.pkg.controller;

import java.io.IOException; 
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.app.common.service.AtchFileServiceImpl;
import kr.or.ddit.app.common.service.IAtchFileService;
import kr.or.ddit.app.common.vo.AtchFileVO;
import kr.or.ddit.app.compkg.service.ComPkgServiceImpl;
import kr.or.ddit.app.compkg.service.IComPkgService;
import kr.or.ddit.app.compkg.vo.ComPkgVO;
import kr.or.ddit.app.pkg.service.IPkgService;
import kr.or.ddit.app.pkg.service.PkgServiceImpl;
import kr.or.ddit.app.pkg.vo.PkgVO;
import kr.or.ddit.app.sch.service.ISchService;
import kr.or.ddit.app.sch.service.SchServiceImpl;
import kr.or.ddit.app.sch.vo.SchVO;


@WebServlet("/pkg/pkgDetail.do")
public class DetailPkgController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 String pkgId = req.getParameter("pkgId");
	      
	      // 1. 서비스 객체 생성하기
	      IPkgService pkgService = PkgServiceImpl.getInstance();
	      ISchService schService = SchServiceImpl.getInstance();
	      IComPkgService comPkgService = ComPkgServiceImpl.getInstance();
	      PkgVO pv = pkgService.getPkg(pkgId);
	      List<SchVO> svList = schService.getSchList(pkgId);
	      IAtchFileService fileService = AtchFileServiceImpl.getInstance();
	      
	      List<ComPkgVO> comPkgList = comPkgService.getComPkgList(pkgId);
	      
	      if(pv.getAtchFileId() > 0) { // 첨부파일 존재
	    	  // 1-2. 첨부파일 정보 조회
	    	  AtchFileVO fileVO = new AtchFileVO();
	    	  fileVO.setAtchFileId(pv.getAtchFileId());
	    	  
	    	  List<AtchFileVO> atchFileList = 
	    			  fileService.getAtchFileList(fileVO);
	    	  
	    	  req.setAttribute("atchFileList", atchFileList);
	      }
	      
	      
	      
	      
	      req.setAttribute("pv", pv);
	      req.setAttribute("svList", svList);
	      req.setAttribute("comPkgList", comPkgList);
	      req.getRequestDispatcher("/pkg/pkgDetail.jsp").forward(req, resp);
	      
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
