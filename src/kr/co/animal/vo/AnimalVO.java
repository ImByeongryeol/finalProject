package kr.co.animal.vo;

import org.springframework.web.multipart.MultipartFile;

public class AnimalVO {
	private int animal_num; // ��ȣ
	private String member_id; // ȸ�����̵�
	private String animal_name; // �̸�
	private int animal_age; // ����
	private String animal_gender; // ����
	private String cate_kind; // ǰ��
	private String animal_img; // ����
	private String animal_detail; // Ư¡
	// spring web���� �������ִ� multpart.MultipartFile
	private MultipartFile mfile;
	// ����¡ ó���� ���� ���������� ��������
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
