package com.bujun.notice.vo;

public class NoticeVo {
	private int    ad_idx;
	private String ad_code;
	private String ad_writer;
	private String ad_rimemnum;
	private String ad_title;
	private String ad_content;
	private String ad_regdate;
	private int    ad_count;
	private String searchType;
	private String keyWord;
	
	private int file_idx;
	private int file_boardidx;
	private String file_boardcode;
	private String file_filename;
	private String file_size;
	private String file_filerealname;
	private String file_ext;
	private String file_regdate;
	
	// Gutter / Setter
	public int getAd_idx() {
		return ad_idx;
	}
	public void setAd_idx(int ad_idx) {
		this.ad_idx = ad_idx;
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
	
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyWord() {
		return keyWord;
	}
	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}
	
	public int getFile_idx() {
		return file_idx;
	}
	public void setFile_idx(int file_idx) {
		this.file_idx = file_idx;
	}
	public int getFile_boardidx() {
		return file_boardidx;
	}
	public void setFile_boardidx(int file_boardidx) {
		this.file_boardidx = file_boardidx;
	}
	public String getFile_boardcode() {
		return file_boardcode;
	}
	public void setFile_boardcode(String file_boardcode) {
		this.file_boardcode = file_boardcode;
	}
	public String getFile_filename() {
		return file_filename;
	}
	public void setFile_filename(String file_filename) {
		this.file_filename = file_filename;
	}
	public String getFile_size() {
		return file_size;
	}
	public void setFile_size(String file_size) {
		this.file_size = file_size;
	}
	public String getFile_filerealname() {
		return file_filerealname;
	}
	public void setFile_filerealname(String file_filerealname) {
		this.file_filerealname = file_filerealname;
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
	
	@Override
	public String toString() {
		return "NoticeVo [ad_idx=" + ad_idx + ", ad_code=" + ad_code + ", ad_writer=" + ad_writer + ", ad_rimemnum="
				+ ad_rimemnum + ", ad_title=" + ad_title + ", ad_content=" + ad_content + ", ad_regdate=" + ad_regdate
				+ ", ad_count=" + ad_count + ", searchType=" + searchType + ", keyWord=" + keyWord + ", file_idx="
				+ file_idx + ", file_boardidx=" + file_boardidx + ", file_boardcode=" + file_boardcode
				+ ", file_filename=" + file_filename + ", file_size=" + file_size + ", file_filerealname="
				+ file_filerealname + ", file_ext=" + file_ext + ", file_regdate=" + file_regdate + "]";
	}


	
	
}
