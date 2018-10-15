package com.bujun.study.vo;

public class StudyAppVo {
	//신청현황
	private int stuap_idx;
	private String stuap_code;
	private String stuap_memid;
	private String stuap_rimemnum;
	private String stuap_name;
	private String stuap_phone;
	private String stuap_regdate;
	private int stuap_fix;
	
	//스터디 정보
	private int stu_idx;
	private String stu_code;
	private String stu_writer;
	private String stu_rimemnum;
	private String stu_title;
	private String stu_location;
	private String stu_content;
	private int stu_person;
	private String stu_date;
	private String stu_regdate;
	private int stu_count;
	private int stu_end;
	private String mem_name;
	
	public int getStuap_fix() {
		return stuap_fix;
	}
	public void setStuap_fix(int stuap_fix) {
		this.stuap_fix = stuap_fix;
	}
	public int getStuap_idx() {
		return stuap_idx;
	}
	public void setStuap_idx(int stuap_idx) {
		this.stuap_idx = stuap_idx;
	}
	public String getStuap_code() {
		return stuap_code;
	}
	public void setStuap_code(String stuap_code) {
		this.stuap_code = stuap_code;
	}
	public String getStuap_memid() {
		return stuap_memid;
	}
	public void setStuap_memid(String stuap_memid) {
		this.stuap_memid = stuap_memid;
	}
	public String getStuap_rimemnum() {
		return stuap_rimemnum;
	}
	public void setStuap_rimemnum(String stuap_rimemnum) {
		this.stuap_rimemnum = stuap_rimemnum;
	}
	public String getStuap_name() {
		return stuap_name;
	}
	public void setStuap_name(String stuap_name) {
		this.stuap_name = stuap_name;
	}
	public String getStuap_phone() {
		return stuap_phone;
	}
	public void setStuap_phone(String stuap_phone) {
		this.stuap_phone = stuap_phone;
	}
	public String getStuap_regdate() {
		return stuap_regdate;
	}
	public void setStuap_regdate(String stuap_regdate) {
		this.stuap_regdate = stuap_regdate;
	}
	public int getStu_idx() {
		return stu_idx;
	}
	public void setStu_idx(int stu_idx) {
		this.stu_idx = stu_idx;
	}
	public String getStu_code() {
		return stu_code;
	}
	public void setStu_code(String stu_code) {
		this.stu_code = stu_code;
	}
	public String getStu_writer() {
		return stu_writer;
	}
	public void setStu_writer(String stu_writer) {
		this.stu_writer = stu_writer;
	}
	public String getStu_rimemnum() {
		return stu_rimemnum;
	}
	public void setStu_rimemnum(String stu_rimemnum) {
		this.stu_rimemnum = stu_rimemnum;
	}
	public String getStu_title() {
		return stu_title;
	}
	public void setStu_title(String stu_title) {
		this.stu_title = stu_title;
	}
	public String getStu_location() {
		return stu_location;
	}
	public void setStu_location(String stu_location) {
		this.stu_location = stu_location;
	}
	public String getStu_content() {
		return stu_content;
	}
	public void setStu_content(String stu_content) {
		this.stu_content = stu_content;
	}
	public int getStu_person() {
		return stu_person;
	}
	public void setStu_person(int stu_person) {
		this.stu_person = stu_person;
	}
	public String getStu_date() {
		return stu_date;
	}
	public void setStu_date(String stu_date) {
		this.stu_date = stu_date;
	}
	public String getStu_regdate() {
		return stu_regdate;
	}
	public void setStu_regdate(String stu_regdate) {
		this.stu_regdate = stu_regdate;
	}
	public int getStu_count() {
		return stu_count;
	}
	public void setStu_count(int stu_count) {
		this.stu_count = stu_count;
	}
	public int getStu_end() {
		return stu_end;
	}
	public void setStu_end(int stu_end) {
		this.stu_end = stu_end;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	@Override
	public String toString() {
		return "StudyAppVo [stuap_idx=" + stuap_idx + ", stuap_code=" + stuap_code + ", stuap_memid=" + stuap_memid
				+ ", stuap_rimemnum=" + stuap_rimemnum + ", stuap_name=" + stuap_name + ", stuap_phone=" + stuap_phone
				+ ", stuap_regdate=" + stuap_regdate + ", stuap_fix=" + stuap_fix + ", stu_idx=" + stu_idx
				+ ", stu_code=" + stu_code + ", stu_writer=" + stu_writer + ", stu_rimemnum=" + stu_rimemnum
				+ ", stu_title=" + stu_title + ", stu_location=" + stu_location + ", stu_content=" + stu_content
				+ ", stu_person=" + stu_person + ", stu_date=" + stu_date + ", stu_regdate=" + stu_regdate
				+ ", stu_count=" + stu_count + ", stu_end=" + stu_end + ", mem_name=" + mem_name + "]";
	}
}
