package kr.co.animal.vo;

import org.springframework.web.multipart.MultipartFile;

public class AnimalVO {
	private int animal_num; // 번호
	private String member_id; // 회원아이디
	private String animal_name; // 이름
	private int animal_age; // 나이
	private String animal_gender; // 성별
	private String cate_kind; // 품종
	private String animal_img; // 사진
	private String animal_detail; // 특징
	// spring web에서 제공해주는 multpart.MultipartFile
	private MultipartFile mfile;
	// 페이징 처리를 위한 시작페이지 끝페이지
	private int begin;
	private int end;
	
	public int getBegin() {
		return begin;
	}
	public void setBegin(int begin) {
		this.begin = begin;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public MultipartFile getMfile() {
		return mfile;
	}
	public void setMfile(MultipartFile mfile) {
		this.mfile = mfile;
	}
	public int getAnimal_num() {
		return animal_num;
	}
	public void setAnimal_num(int animal_num) {
		this.animal_num = animal_num;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getAnimal_name() {
		return animal_name;
	}
	public void setAnimal_name(String animal_name) {
		this.animal_name = animal_name;
	}
	public int getAnimal_age() {
		return animal_age;
	}
	public void setAnimal_age(int animal_age) {
		this.animal_age = animal_age;
	}
	public String getAnimal_gender() {
		return animal_gender;
	}
	public void setAnimal_gender(String animal_gender) {
		this.animal_gender = animal_gender;
	}
	public String getCate_kind() {
		return cate_kind;
	}
	public void setCate_kind(String cate_kind) {
		this.cate_kind = cate_kind;
	}
	public String getAnimal_img() {
		return animal_img;
	}
	public void setAnimal_img(String animal_img) {
		this.animal_img = animal_img;
	}
	public String getAnimal_detail() {
		return animal_detail;
	}
	public void setAnimal_detail(String animal_detail) {
		this.animal_detail = animal_detail;
	}
}
