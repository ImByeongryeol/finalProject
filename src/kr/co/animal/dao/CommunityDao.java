package kr.co.animal.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.animal.vo.AnimalVO;
import kr.co.animal.vo.FriendsVO;
import kr.co.animal.vo.MemberVO;

@Repository
public class CommunityDao implements CommunityDaoInter {
	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public int getCnt() {
		int cnt = ss.selectOne("community.totalCount");
		return cnt;
	}
	
	@Override
	public List<AnimalVO> communityList(AnimalVO vo) {
		List<AnimalVO> list = ss.selectList("community.list", vo);
		return list;
	}
	
	@Override
	public AnimalVO communityDetail(int anum) {
		AnimalVO vo = ss.selectOne("community.detail", anum);
		return vo;
	}

	@Override
	public void addFriends(FriendsVO vo) {
		ss.insert("community.addfriends",vo);
	}

	@Override
	public int statfriends(FriendsVO vo) {
		int num = ss.selectOne("community.statfriends",vo);
		return num;
	}

	@Override
	public List<AnimalVO> recommendList(String name) {
		List<AnimalVO> list = ss.selectList("community.recommend",name);
		return list;
	}
	
	@Override
	public int checkfriends(FriendsVO vo) {
		int num = ss.selectOne("community.checkfriends",vo);
		return num;
	}
	

}
