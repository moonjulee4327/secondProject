package kr.or.ddit.app.mem.dao;

import kr.or.ddit.app.mem.vo.MemberVO;

public interface IMemDao {
	
	public int singUp(MemberVO mv);
	
	public boolean idCheck(String memMail);
	
	public MemberVO selectMem(MemberVO mv);
	
	public MemberVO searchId(MemberVO mv);
	
	public MemberVO searchPw(MemberVO mv);
	
}
