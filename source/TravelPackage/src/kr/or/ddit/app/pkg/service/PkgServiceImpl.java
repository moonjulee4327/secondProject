package kr.or.ddit.app.pkg.service;

import java.util.List;

import kr.or.ddit.app.pkg.dao.IPkgDAO;
import kr.or.ddit.app.pkg.dao.PkgDAOImpl;
import kr.or.ddit.app.pkg.vo.PkgVO;


public class PkgServiceImpl implements IPkgService {
	private static IPkgService PkgService;
	private IPkgDAO pkgDao;
	
	private PkgServiceImpl() {
		pkgDao = PkgDAOImpl.getInstance();
	}
	
	public static IPkgService getInstance() {
		if(PkgService == null) {
			PkgService = new PkgServiceImpl();
		}
		return PkgService;
	}

	@Override
	public int registerPkg(PkgVO pv) {
		int cnt = pkgDao.insertPkg(pv);
		return cnt;
	}

	@Override
	public int modifyPkg(PkgVO pv) {
		int cnt = pkgDao.updatePkg(pv);
		return cnt;
	}

	@Override
	public int removePkg(String pkgId) {
		int cnt = pkgDao.deletePkg(pkgId);
		return cnt;
	}

	@Override
	public PkgVO getPkg(String pkgId) {
		PkgVO trmv = pkgDao.getPkg(pkgId);
		return trmv;
	}

	@Override
	public List<PkgVO> getAllPkgList() {
		List<PkgVO> PkgList = pkgDao.getAllPkgList();
		return PkgList;
	}

	@Override
	public List<PkgVO> searchList(PkgVO pv) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
