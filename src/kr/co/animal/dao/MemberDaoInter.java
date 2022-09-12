package kr.co.animal.dao;

import kr.co.animal.vo.MemberVO;


public interface MemberDaoInter {
	
	public MemberVO loginCheck(MemberVO dto);
	public void addMember(MemberVO dto);
	public int idcheck(String id);
	public MemberVO findId(MemberVO vo);
	public MemberVO findPassword(MemberVO vo);
	public void updatePassword(MemberVO vo);
}
