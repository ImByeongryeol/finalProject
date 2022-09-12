package kr.co.animal.dao;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.animal.vo.MemberVO;

@Repository
public class MemberDAO implements MemberDaoInter{
	
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public MemberVO loginCheck(MemberVO dto) {
		return ss.selectOne("member.login", dto);
	}
	
	@Override
	public void addMember(MemberVO dto) {
		ss.insert("member.add", dto);
	}

	@Override
	public int idcheck(String member_id) {
		return ss.selectOne("member.idchk", member_id);
	}
	
	// ���̵� ã��
		@Override
		public MemberVO findId(MemberVO vo) {
			System.out.println("==> Mybatis�� findId() ��� ó��");
			return ss.selectOne("member.findId", vo);
		}

		// ��� ã��
		@Override
		public MemberVO findPassword(MemberVO vo) {
			System.out.println("==> Mybatis�� findPassword() ��� ó��");
			System.out.println("dd");
			return ss.selectOne("member.findPassword", vo);
		}

		// ��й�ȣ ������Ʈ
		public void updatePassword(MemberVO vo) {
			System.out.println("==> Mybatis�� updatePassword() ��� ó��");
			System.out.println(vo.getMember_id());
			ss.update("member.updatePassword", vo);
		}
	
}
