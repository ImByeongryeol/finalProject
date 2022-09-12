package kr.co.animal.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.animal.vo.AnimalVO;


@Repository
public class AnimalDao implements AnimalDaoInter {

	@Autowired
	private SqlSessionTemplate ss;


	@Override
	public void addAnimal(AnimalVO vo) {
		System.out.println("DAOOOOOOOOOOOOOO"+vo.getAnimal_gender());
		ss.insert("animal.add", vo);
	}

	

}
