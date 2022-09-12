package kr.co.animal.vo;

public class CateVO {
	private int cate_num; // 번호
	private String cate_species; // 종 카테고리
	private String cate_kind; // 품종
	private String cate_img; // 사진
	private String cate_detail; // 설명
	
	public int getCate_num() {
		return cate_num;
	}
	public void setCate_num(int cate_num) {
		this.cate_num = cate_num;
	}
	public String getCate_species() {
		return cate_species;
	}
	public void setCate_species(String cate_species) {
		this.cate_species = cate_species;
	}
	public String getCate_kind() {
		return cate_kind;
	}
	public void setCate_kind(String cate_kind) {
		this.cate_kind = cate_kind;
	}
	public String getCate_img() {
		return cate_img;
	}
	public void setCate_img(String cate_img) {
		this.cate_img = cate_img;
	}
	public String getCate_detail() {
		return cate_detail;
	}
	public void setCate_detail(String cate_detail) {
		this.cate_detail = cate_detail;
	}
	
}
