package kr.co.animal.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.animal.dao.AnimalDaoInter;
import kr.co.animal.vo.AnimalVO;



@Controller
@RequestMapping("/animal")
public class AnimalController {
	
	@Autowired
	private AnimalDaoInter animalDaoInter;
	
	@GetMapping(value="/animalForm")
	public String memberForm() {
		return "animal/animalForm";
	}
	
	// 파일 업로드
	@PostMapping(value="/animalIn")
	public String animalIn(AnimalVO vo, HttpServletRequest request, HttpSession session) {
		System.out.println("session : "+session);
		// 로그인떄 저장한 속성인 sessionid값을 가져옴와서 String값으로 캐스팅 
		String id = (String) session.getAttribute("sessionid");
		
		//System.out.println("id타입 : "+id.getClass().getName());
		System.out.println("id : "+id);
		
		if(id == null) {
			id = "test_id";	
		} else {
			id = (String) session.getAttribute("sessionid");
		}
		System.out.println("id : "+id);
		vo.setMember_id(id);
		
		String img_path = "resources\\animal";
		// request를 가지고 이미지의 경로를 받아서 출력
		String r_path = request.getRealPath("/");
		System.out.println(r_path);
		// 업로드 된 이미지의 이름을 받아서 이미지를 복사
		
		String oriFn = vo.getMfile().getOriginalFilename();
		System.out.println(oriFn);
		// 이미지를 업로드 하지 않을 경우 noimage가 기본으로 저장된다.
		if(oriFn.length() == 0) {
			oriFn = "noimage.jpg";
			vo.setAnimal_img(oriFn);
		} else {
			// 메모리상(임시저징장소)에 파일을 우리가 설정한 경로에 복사
			StringBuffer path = new StringBuffer();
			path.append(r_path).append(img_path).append("\\");
			path.append(oriFn);
			System.out.println(path);
			// 추상경로 (이미지를 저장할 경로) File 객체로 생성
			File f = new File(path.toString());
			
			// 임시 메모리에 담긴 업로드한 파일의 값 -> File 클래스의 경로로 복사
			try {
				vo.getMfile().transferTo(f);
				// 이미지 이름을 DB에 저장하기 위해서 VO에 값을 재설정
				vo.setAnimal_img(oriFn);
				System.out.println("oriFn"+oriFn);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		//System.out.println(vo.getAnimal_age());
		//System.out.println(vo.getAnimal_detail());
		//System.out.println(vo.getAnimal_gender());
		//System.out.println(vo.getAnimal_img());
		//System.out.println(vo.getAnimal_name());
		//System.out.println(vo.getAnimal_num());
		//System.out.println(vo.getCate_kind());
		//System.out.println(vo.getMember_id());
		animalDaoInter.addAnimal(vo);
		
		return "redirect:/main";
	}
	
	
	
	
	
	
}
