package kr.co.animal.controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.animal.dao.MemberDaoInter;
import kr.co.animal.vo.MemberVO;



@Controller
@RequestMapping("/member")
public class MemberContorller {
	@Autowired
	private MemberDaoInter memberDaoInter;

	@GetMapping(value="/memberForm")
	public String memberForm() {
		return "member/memberForm";
	}

	@PostMapping(value="/memberIn")
	public String memberIn(MemberVO dto) {
	memberDaoInter.addMember(dto);
		return "redirect:/main";
	}

	@GetMapping(value = "/idcheck")
	public String idCheck(Model m, @RequestParam("member_id") String member_id) {
		int cnt = memberDaoInter.idcheck(member_id);
		m.addAttribute("msg", cnt);
		return "idchk";
	}
}
