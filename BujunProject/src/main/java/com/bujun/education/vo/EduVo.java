package com.bujun.education.vo;

public class EduVo {
	private String listu_code;
	private String listu_catcode;
	private String listu_name;
	private String listu_writer;
	private int listu_rimemnum;
	private String listu_management;
	private String listu_location;
	private String listu_studate;
	private String sistu_content;
	private String listu_person;
	private String listu_regdate;
	private int listu_count;
	private int listu_end;
	
	public String getListu_code() {
		return listu_code;
	}
	public void setListu_code(String listu_code) {
		this.listu_code = listu_code;
	}
	public String getListu_catcode() {
		return listu_catcode;
	}
	public void setListu_catcode(String listu_catcode) {
		this.listu_catcode = listu_catcode;
	}
	public String getListu_name() {
		return listu_name;
	}
	public void setListu_name(String listu_name) {
		this.listu_name = listu_name;
	}
	public String getListu_writer() {
		return listu_writer;
	}
	public void setListu_writer(String listu_writer) {
		this.listu_writer = listu_writer;
	}
	public int getListu_rimemnum() {
		return listu_rimemnum;
	}
	public void setListu_rimemnum(int listu_rimemnum) {
		this.listu_rimemnum = listu_rimemnum;
	}
	public String getListu_management() {
		return listu_management;
	}
	public void setListu_management(String listu_management) {
		this.listu_management = listu_management;
	}
	public String getListu_location() {
		return listu_location;
	}
	public void setListu_location(String listu_location) {
		this.listu_location = listu_location;
	}
	public String getListu_studate() {
		return listu_studate;
	}
	public void setListu_studate(String listu_studate) {
		this.listu_studate = listu_studate;
	}
	public String getSistu_content() {
		return sistu_content;
	}
	public void setSistu_content(String sistu_content) {
		this.sistu_content = sistu_content;
	}
	public String getListu_person() {
		return listu_person;
	}
	public void setListu_person(String listu_person) {
		this.listu_person = listu_person;
	}
	public String getListu_regdate() {
		return listu_regdate;
	}
	public void setListu_regdate(String listu_regdate) {
		this.listu_regdate = listu_regdate;
	}
	public int getListu_count() {
		return listu_count;
	}
	public void setListu_count(int listu_count) {
		this.listu_count = listu_count;
	}
	public int getListu_end() {
		return listu_end;
	}
	public void setListu_end(int listu_end) {
		this.listu_end = listu_end;
	}
	
	@Override
	public String toString() {
		return "EduVo [listu_code=" + listu_code + ", listu_catcode=" + listu_catcode + ", listu_name=" + listu_name
				+ ", listu_writer=" + listu_writer + ", listu_rimemnum=" + listu_rimemnum + ", listu_management="
				+ listu_management + ", listu_location=" + listu_location + ", listu_studate=" + listu_studate
				+ ", sistu_content=" + sistu_content + ", listu_person=" + listu_person + ", listu_regdate="
				+ listu_regdate + ", listu_count=" + listu_count + ", listu_end=" + listu_end + "]";
	}	
}
