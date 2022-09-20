package kr.or.ddit.app.pkg.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.app.pkg.vo.PkgVO;
import kr.or.ddit.app.util.MyBatisUtil;

public class PkgDAOImpl implements IPkgDAO {
	private static IPkgDAO pkgDao;
	
	private SqlSession sqlSession;
	
	private PkgDAOImpl() {
		sqlSession = MyBatisUtil.getInstance(true);
	}
	
	public static IPkgDAO getInstance() {
		if(pkgDao == null) {
			pkgDao = new PkgDAOImpl();
		}
		return pkgDao;
	}
	
	
	@Override
	public int insertPkg(PkgVO pv) {
		int cnt = sqlSession.insert("pkg.insertPkg", pv);
		return cnt;
	}

	@Override
	public int updatePkg(PkgVO pv) {
		int cnt = sqlSession.update("pkg.update",pv);
		return cnt;
	}

	@Override
	public int deletePkg(String pkgId) {
		int cnt = sqlSession.delete("pkg.delete", pkgId);
		return cnt;
	}

	@Override
	public PkgVO getPkg(String pkgId) {
		PkgVO pkgVO = sqlSession.selectOne("pkg.getPkg", pkgId);
		return pkgVO;
	}

	@Override
	public List<PkgVO> getAllPkgList() {
		List<PkgVO> pkgList = sqlSession.selectList("pkg.pkgList");
		return pkgList;
	}

	@Override
	public List<PkgVO> searchPkgList(PkgVO pv) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
