package kr.co.animal.controller.json;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.co.animal.dao.CommunityDaoInter;
import kr.co.animal.vo.FriendsVO;

@RestController
public class JsonController {
	
	@Autowired
	private CommunityDaoInter communityDaoInter;
	
	@GetMapping(value = "/addfriend", produces = "text/plain;charset=EUC-KR")
	public String addFriend(Model m,@RequestParam("myId") String myId,@RequestParam("friendId") String friendId) {
		FriendsVO vo = new FriendsVO();
		vo.setFriends_userid(myId);
		vo.setFriends_friendid(friendId);		
		int num = communityDaoInter.statfriends(vo);
		if (num==0) {
			vo.setFriends_status("´ë±â");
			communityDaoInter.addFriends(vo);		
			String status = vo.getFriends_status();
			return status;
		} else {
			String status = "¸ô¶ó";
			return status;
		}
		
	}
}
