package kr.co.animal.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.animal.vo.AnimalVO;

@Repository
public class MypageDAO implements MypageDaoInter{

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public List<AnimalVO> friendsList(String name) {
		List<AnimalVO> list = ss.selectList("mypage.friendslist",name);
		return list;
	}

}
