package kr.or.ddit.app.schcomb.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.app.schcomb.vo.SchCombVO;
import kr.or.ddit.app.util.MyBatisUtil;

public class SchCombDAOImpl implements ISchCombDAO {
	private static ISchCombDAO schCombDao;
	
	
	private SchCombDAOImpl() {
	}
	
	public static ISchCombDAO getInstance() {
		if(schCombDao == null) {
			schCombDao = new SchCombDAOImpl();
		}
		return schCombDao;
	}
	
	
	@Override
	public int insertSchComb(SqlSession sqlSession, SchCombVO scv) {
		int cnt = 0;
		try {
			cnt = sqlSession.insert("schComb.insertSchComb", scv);
		} catch(Exception e) { }
		return cnt;
	}

	@Override
	public int updateSchComb(SqlSession sqlSession, SchCombVO scv) {
		int cnt = sqlSession.update("schComb.update",scv);
		return cnt;
	}

	@Override
	public int deleteSchComb(SqlSession sqlSession, SchCombVO scv) {
		int cnt = sqlSession.delete("schComb.delete", scv);
		return cnt;
	}

	@Override
	public List<SchCombVO> getPkgSchCombList(SqlSession sqlSession, String pkgId) {
		List<SchCombVO> schCombList = sqlSession.selectList("schComb.pkgTourList", pkgId);
		return schCombList;
	}

	@Override
	public List<SchCombVO> searchSchCombList(SqlSession sqlSession, SchCombVO scv) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
