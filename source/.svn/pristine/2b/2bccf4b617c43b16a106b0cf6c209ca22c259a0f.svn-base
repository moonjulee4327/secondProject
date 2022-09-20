package kr.or.ddit.app.mem.service;

import kr.or.ddit.app.mem.dao.IMemDao;
import kr.or.ddit.app.mem.dao.MemDaoImpl;
import kr.or.ddit.app.mem.vo.MemberVO;

public class MemServiceImpl implements IMemService{

	private static IMemService memService;
	
	private IMemDao memDao;
	
	private MemServiceImpl() {
		memDao = MemDaoImpl.getInstance();
	}
	
	public static IMemService getInstance() {
		if(memService == null) {
			memService = new MemServiceImpl();
		}
		
		return memService;
	}
	
	@Override
	public int singUp(MemberVO mv) {
		return memDao.singUp(mv);
	}

	@Override
	public MemberVO selectMem(MemberVO mv) {
		return memDao.selectMem(mv);
	}

}
