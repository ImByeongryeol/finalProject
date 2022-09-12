package kr.co.animal.dao;

import java.util.List;

import kr.co.animal.vo.AnimalVO;


public interface MypageDaoInter {

	public List<AnimalVO> friendsList(String name);
}
