package com.bujun.education.vo;

public class EduVo {
	//게시판 내용
	private int listu_idx;
	private String listu_code;
	private String listu_catcode;
	private String listu_name;
	private String listu_target;
	private String listu_location;
	private String listu_studate;
	private String listu_content;
	private int listu_person;
	private String listu_regdate;
	private int listu_end;
	private String listu_teacher;
	private String listu_gubun;
	private String listu_recruit;
	
	//파일 내용
	private int 	file_idx;
	private int 	file_board_idx;
	private String	file_board_code;
	private String	file_name;
	private String	file_size;
	private String	file_real_name;
	private String	file_ext;
	private String	file_regdate;
	
	public int getListu_idx() {
		return listu_idx;
	}
	public void setListu_idx(int listu_idx) {
		this.listu_idx = listu_idx;
	}
	public String getListu_content() {
		return listu_content;
	}
	public void setListu_content(String listu_content) {
		this.listu_content = listu_content;
	}
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
	public String getListu_target() {
		return listu_target;
	}
	public void setListu_target(String listu_target) {
		this.listu_target = listu_target;
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
		return listu_content;
	}
	public void setSistu_content(String listu_content) {
		this.listu_content = listu_content;
	}
	public int getListu_person() {
		return listu_person;
	}
	public void setListu_person(int listu_person) {
		this.listu_person = listu_person;
	}
	public String getListu_regdate() {
		return listu_regdate;
	}
	public void setListu_regdate(String listu_regdate) {
		this.listu_regdate = listu_regdate;
	}
	public int getListu_end() {
		return listu_end;
	}
	public void setListu_end(int listu_end) {
		this.listu_end = listu_end;
	}
	public String getListu_teacher() {
		return listu_teacher;
	}
	public void setListu_teacher(String listu_teacher) {
		this.listu_teacher = listu_teacher;
	}
	public String getListu_gubun() {
		return listu_gubun;
	}
	public void setListu_gubun(String listu_gubun) {
		this.listu_gubun = listu_gubun;
	}
	public int getFile_idx() {
		return file_idx;
	}
	public void setFile_idx(int file_idx) {
		this.file_idx = file_idx;
	}
	public int getFile_board_idx() {
		return file_board_idx;
	}
	public void setFile_board_idx(int file_board_idx) {
		this.file_board_idx = file_board_idx;
	}
	public String getFile_board_code() {
		return file_board_code;
	}
	public void setFile_board_code(String file_board_code) {
		this.file_board_code = file_board_code;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public String getFile_size() {
		return file_size;
	}
	public void setFile_size(String file_size) {
		this.file_size = file_size;
	}
	public String getFile_real_name() {
		return file_real_name;
	}
	public void setFile_real_name(String file_real_name) {
		this.file_real_name = file_real_name;
	}
	public String getFile_ext() {
		return file_ext;
	}
	public void setFile_ext(String file_ext) {
		this.file_ext = file_ext;
	}
	public String getFile_regdate() {
		return file_regdate;
	}
	public void setFile_regdate(String file_regdate) {
		this.file_regdate = file_regdate;
	}
	public String getListu_recruit() {
		return listu_recruit;
	}
	public void setListu_recruit(String listu_recruit) {
		this.listu_recruit = listu_recruit;
	}
	
	@Override
	public String toString() {
		return "EduVo [listu_idx=" + listu_idx + ", listu_code=" + listu_code + ", listu_catcode=" + listu_catcode
				+ ", listu_name=" + listu_name + ", listu_target=" + listu_target + ", listu_location=" + listu_location
				+ ", listu_studate=" + listu_studate + ", listu_content=" + listu_content + ", listu_person="
				+ listu_person + ", listu_regdate=" + listu_regdate + ", listu_end=" + listu_end + ", listu_teacher="
				+ listu_teacher + ", listu_gubun=" + listu_gubun + ", listu_recruit=" + listu_recruit + ", file_idx="
				+ file_idx + ", file_board_idx=" + file_board_idx + ", file_board_code=" + file_board_code
				+ ", file_name=" + file_name + ", file_size=" + file_size + ", file_real_name=" + file_real_name
				+ ", file_ext=" + file_ext + ", file_regdate=" + file_regdate + "]";
	}
}
