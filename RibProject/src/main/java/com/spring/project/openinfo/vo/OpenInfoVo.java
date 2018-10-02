package com.spring.project.openinfo.vo;

public class OpenInfoVo {
	private int 	idx;
	private String 	ad_code;
	private String 	ad_writer;
	private String 	ad_rimemnum;
	private String 	ad_title;
	private String 	ad_content;
	private String 	ad_regdate;
	private int 	ad_count;
	private String  ad_memname;	
	
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
				+ ", ad_count=" + ad_count + ", ad_memname=" + ad_memname + "]";
	}
}
