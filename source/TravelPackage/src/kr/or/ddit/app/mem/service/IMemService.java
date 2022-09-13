package kr.or.ddit.app.mem.service;

import kr.or.ddit.app.mem.vo.MemberVO;

public interface IMemService {
	
	public int singUp(MemberVO mv);
	
	public MemberVO selectMem(MemberVO mv);
	
}
