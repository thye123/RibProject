package com.bujun.openinfo.vo;

public class OpenInfoVo {
	//게시물 내용
	private int 	idx;
	private String 	ad_code;
	private String 	ad_writer;
	private String 	ad_rimemnum;
	private String 	ad_title;
	private String 	ad_content;
	private String 	ad_regdate;
	private int 	ad_count;
	private String  ad_memname;	
	
	//파일 내용
	private int 	file_idx;
	private int 	file_board_idx;
	private String	file_board_code;
	private String	file_name;
	private String	file_size;
	private String	file_real_name;
	private String	file_ext;
	private String	file_regdate;
	
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
	public String getAd_memname() {
		return ad_memname;
	}
	public void setAd_memname(String ad_memname) {
		this.ad_memname = ad_memname;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getAd_code() {
		return ad_code;
	}
	public void setAd_code(String ad_code) {
		this.ad_code = ad_code;
	}
	public String getAd_writer() {
		return ad_writer;
	}
	public void setAd_writer(String ad_writer) {
		this.ad_writer = ad_writer;
	}
	public String getAd_rimemnum() {
		return ad_rimemnum;
	}
	public void setAd_rimemnum(String ad_rimemnum) {
		this.ad_rimemnum = ad_rimemnum;
	}
	public String getAd_title() {
		return ad_title;
	}
	public void setAd_title(String ad_title) {
		this.ad_title = ad_title;
	}
	public String getAd_content() {
		return ad_content;
	}
	public void setAd_content(String ad_content) {
		this.ad_content = ad_content;
	}
	public String getAd_regdate() {
		return ad_regdate;
	}
	public void setAd_regdate(String ad_regdate) {
		this.ad_regdate = ad_regdate;
	}
	public int getAd_count() {
		return ad_count;
	}
	public void setAd_count(int ad_count) {
		this.ad_count = ad_count;
	}
	
	@Override
	public String toString() {
		return "OpenInfoVo [idx=" + idx + ", ad_code=" + ad_code + ", ad_writer=" + ad_writer + ", ad_rimemnum="
				+ ad_rimemnum + ", ad_title=" + ad_title + ", ad_content=" + ad_content + ", ad_regdate=" + ad_regdate
				+ ", ad_count=" + ad_count + ", ad_memname=" + ad_memname + ", file_idx=" + file_idx
				+ ", file_board_idx=" + file_board_idx + ", file_board_code=" + file_board_code + ", file_name="
				+ file_name + ", file_size=" + file_size + ", file_real_name=" + file_real_name + ", file_ext="
				+ file_ext + ", file_regdate=" + file_regdate + "]";
	}
	
}
