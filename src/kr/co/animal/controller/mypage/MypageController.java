package kr.co.animal.controller.mypage;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.animal.dao.MypageDaoInter;
import kr.co.animal.vo.AnimalVO;

@Controller
@RequestMapping(value = "/mypage")
public class MypageController {
	
	@Autowired
	private MypageDaoInter mypageDaoInter;
	
	@RequestMapping(value = "/friendslist")
	public String friendsList(Model m, HttpSession session) {
		String member_id = (String) session.getAttribute("sessionID");
		List<AnimalVO> friendslist = mypageDaoInter.friendsList(member_id);
		m.addAttribute("friendslist", friendslist);
		return "mypage/friendslist";
	}
}
