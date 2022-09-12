package kr.co.animal.dao;

import java.util.List;
import java.util.Map;

import kr.co.animal.vo.AnimalVO;
import kr.co.animal.vo.FriendsVO;
import kr.co.animal.vo.MemberVO;

public interface CommunityDaoInter {
	public int getCnt();
	public List<AnimalVO> communityList(AnimalVO vo);
	public AnimalVO communityDetail(int anum);
	public void addFriends(FriendsVO vo);
	public int statfriends(FriendsVO vo);
	public List<AnimalVO> recommendList(String name);
	public int checkfriends(FriendsVO vo);
}
