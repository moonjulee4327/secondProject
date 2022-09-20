package kr.or.ddit.app.pkg.service;

import java.util.List;

import kr.or.ddit.app.pkg.vo.PkgVO;



public interface IPkgService {

	// Insert
		public int registerPkg(PkgVO pv);
		
		// Update
		public int modifyPkg(PkgVO pv);
		
		// Delete
		public int removePkg(String pkgId);
		
		// 정보 확인
		public PkgVO getPkg(String pkgId);
		
		// 전체 정보 리스트
		public List<PkgVO> getAllPkgList();
		
		// 검색 정보 리스트
		public List<PkgVO> searchList(PkgVO pv);
}
