package com.bujun.notice.vo;

public class AppVo {
	private int    sc_idx;
	private String sc_memid;
	private String sc_rimemnum;
	private String sc_phone;
	private String sc_email1;
	private String sc_email2;
	private String sc_bookname;
	private String sc_author;
	private String sc_publisher;
	private String sc_publishdate;
	private String sc_content;
	private int    sc_during;
	private String sc_regdate;
	private String sc_cancel;
	
	private String searchType;
	private String keyWord;
	public int getSc_idx() {
		return sc_idx;
	}
	public void setSc_idx(int sc_idx) {
		this.sc_idx = sc_idx;
	}
	public String getSc_memid() {
		return sc_memid;
	}
	public void setSc_memid(String sc_memid) {
		this.sc_memid = sc_memid;
	}
	public String getSc_rimemnum() {
		return sc_rimemnum;
	}
	public void setSc_rimemnum(String sc_rimemnum) {
		this.sc_rimemnum = sc_rimemnum;
	}
	public String getSc_phone() {
		return sc_phone;
	}
	public void setSc_phone(String sc_phone) {
		this.sc_phone = sc_phone;
	}
	public String getSc_email1() {
		return sc_email1;
	}
	public void setSc_email1(String sc_email1) {
		this.sc_email1 = sc_email1;
	}
	public String getSc_email2() {
		return sc_email2;
	}
	public void setSc_email2(String sc_email2) {
		this.sc_email2 = sc_email2;
	}
	public String getSc_bookname() {
		return sc_bookname;
	}
	public void setSc_bookname(String sc_bookname) {
		this.sc_bookname = sc_bookname;
	}
	public String getSc_author() {
		return sc_author;
	}
	public void setSc_author(String sc_author) {
		this.sc_author = sc_author;
	}
	public String getSc_publisher() {
		return sc_publisher;
	}
	public void setSc_publisher(String sc_publisher) {
		this.sc_publisher = sc_publisher;
	}
	public String getSc_publishdate() {
		return sc_publishdate;
	}
	public void setSc_publishdate(String sc_publishdate) {
		this.sc_publishdate = sc_publishdate;
	}
	public String getSc_content() {
		return sc_content;
	}
	public void setSc_content(String sc_content) {
		this.sc_content = sc_content;
	}
	public int getSc_during() {
		return sc_during;
	}
	public void setSc_during(int sc_during) {
		this.sc_during = sc_during;
	}
	public String getSc_regdate() {
		return sc_regdate;
	}
	public void setSc_regdate(String sc_regdate) {
		this.sc_regdate = sc_regdate;
	}
	public String getSc_cancel() {
		return sc_cancel;
	}
	public void setSc_cancel(String sc_cancel) {
		this.sc_cancel = sc_cancel;
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
	
	@Override
	public String toString() {
		return "AppVo [sc_idx=" + sc_idx + ", sc_memid=" + sc_memid + ", sc_rimemnum=" + sc_rimemnum + ", sc_phone="
				+ sc_phone + ", sc_email1=" + sc_email1 + ", sc_email2=" + sc_email2 + ", sc_bookname=" + sc_bookname
				+ ", sc_author=" + sc_author + ", sc_publisher=" + sc_publisher + ", sc_publishdate=" + sc_publishdate
				+ ", sc_content=" + sc_content + ", sc_during=" + sc_during + ", sc_regdate=" + sc_regdate
				+ ", sc_cancel=" + sc_cancel + ", searchType=" + searchType + ", keyWord=" + keyWord + "]";
	}
	
	
}


