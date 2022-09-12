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
	
	// ���� ���ε�
	@PostMapping(value="/animalIn")
	public String animalIn(AnimalVO vo, HttpServletRequest request, HttpSession session) {
		System.out.println("session : "+session);
		// �α��΋� ������ �Ӽ��� sessionid���� �����ȿͼ� String������ ĳ���� 
		String id = (String) session.getAttribute("sessionid");
		
		//System.out.println("idŸ�� : "+id.getClass().getName());
		System.out.println("id : "+id);
		
		if(id == null) {
			id = "test_id";	
		} else {
			id = (String) session.getAttribute("sessionid");
		}
		System.out.println("id : "+id);
		vo.setMember_id(id);
		
		String img_path = "resources\\animal";
		// request�� ������ �̹����� ��θ� �޾Ƽ� ���
		String r_path = request.getRealPath("/");
		System.out.println(r_path);
		// ���ε� �� �̹����� �̸��� �޾Ƽ� �̹����� ����
		
		String oriFn = vo.getMfile().getOriginalFilename();
		System.out.println(oriFn);
		// �̹����� ���ε� ���� ���� ��� noimage�� �⺻���� ����ȴ�.
		if(oriFn.length() == 0) {
			oriFn = "noimage.jpg";
			vo.setAnimal_img(oriFn);
		} else {
			// �޸𸮻�(�ӽ���¡���)�� ������ �츮�� ������ ��ο� ����
			StringBuffer path = new StringBuffer();
			path.append(r_path).append(img_path).append("\\");
			path.append(oriFn);
			System.out.println(path);
			// �߻��� (�̹����� ������ ���) File ��ü�� ����
			File f = new File(path.toString());
			
			// �ӽ� �޸𸮿� ��� ���ε��� ������ �� -> File Ŭ������ ��η� ����
			try {
				vo.getMfile().transferTo(f);
				// �̹��� �̸��� DB�� �����ϱ� ���ؼ� VO�� ���� �缳��
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
