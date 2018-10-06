package com.bujun.club.vo;

public class ClubMember {

	
	private String clu_code;	
	private String clu_writer;	
	private int clu_rimemnum;	
	private String clu_name;	
	private String clu_qualifi;	
	private String clu_date;
	private String clu_location;
	private int clu_person;	
	private String clu_content;	
	private String clu_regdate;
	
	public String getClu_code() {
		return clu_code;
	}
	public void setClu_code(String clu_code) {
		this.clu_code = clu_code;
	}
	public String getClu_writer() {
		return clu_writer;
	}
	public void setClu_writer(String clu_writer) {
		this.clu_writer = clu_writer;
	}
	public int getClu_rimemnum() {
		return clu_rimemnum;
	}
	public void setClu_rimemnum(int clu_rimemnum) {
		this.clu_rimemnum = clu_rimemnum;
	}
	public String getClu_name() {
		return clu_name;
	}
	public void setClu_name(String clu_name) {
		this.clu_name = clu_name;
	}
	public String getClu_qualifi() {
		return clu_qualifi;
	}
	public void setClu_qualifi(String clu_qualifi) {
		this.clu_qualifi = clu_qualifi;
	}
	public String getClu_date() {
		return clu_date;
	}
	public void setClu_date(String clu_date) {
		this.clu_date = clu_date;
	}
	public String getClu_location() {
		return clu_location;
	}
	public void setClu_location(String clu_location) {
		this.clu_location = clu_location;
	}
	public int getClu_person() {
		return clu_person;
	}
	public void setClu_person(int clu_person) {
		this.clu_person = clu_person;
	}
	public String getClu_content() {
		return clu_content;
	}
	public void setClu_content(String clu_content) {
		this.clu_content = clu_content;
	}
	public String getClu_regdate() {
		return clu_regdate;
	}
	public void setClu_regdate(String clu_regdate) {
		this.clu_regdate = clu_regdate;
	}
	@Override
	public String toString() {
		return "ClubMember [clu_code=" + clu_code + ", clu_writer=" + clu_writer + ", clu_rimemnum=" + clu_rimemnum
				+ ", clu_name=" + clu_name + ", clu_qualifi=" + clu_qualifi + ", clu_date=" + clu_date
				+ ", clu_location=" + clu_location + ", clu_person=" + clu_person + ", clu_content=" + clu_content
				+ ", clu_regdate=" + clu_regdate + "]";
	}
	
	
	
	
}
