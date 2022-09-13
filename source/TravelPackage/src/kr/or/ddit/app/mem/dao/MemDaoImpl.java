package kr.or.ddit.app.mem.dao;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.app.mem.vo.MemberVO;
import kr.or.ddit.app.util.MyBatisUtil;

public class MemDaoImpl implements IMemDao {

	private static IMemDao memDao;

	private SqlSession sql;

	private MemDaoImpl() {
		sql = MyBatisUtil.getInstance(true);
	}

	public static IMemDao getInstance() {
		if (memDao == null) {
			memDao = new MemDaoImpl();
		}

		return memDao;
	}

	@Override
	public int singUp(MemberVO mv) {

		String prPwd = mv.getMemPw();
		
//		System.out.println("암호화 적용 전 pw : " + prPwd);
		
		// 비밀 번호 암호화 후 데이터 삽입 
		String res = getEncrypt(prPwd);
		
		mv.setMemPw(res);
		
		int rs = sql.insert("mem.insertMem", mv);

		return rs;
	}
	
	public String getEncrypt(String pwd) {
		
		String result = "";
		
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			
			md.update(pwd.getBytes("UTF-8"));
			
			byte[] nPwd = md.digest();
			
			StringBuffer sb = new StringBuffer();
			for(byte b : nPwd) {
				sb.append(String.format("%02x", b));
			}
			
			result = sb.toString();
			
//			System.out.println("암호화 적용 후 pw : " + result);
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	@Override
	public MemberVO selectMem(MemberVO mv) {

		MemberVO rs = sql.selectOne("mem.selectMem", mv);

		return rs;
	}

}
