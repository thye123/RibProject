package com.bujun.bjsearch.vo;

public class BjlSearchVo {

	private String title;
	private String author;
	private String pubInfo;
	private String gubun;
	private String giho;
	private String kdc;
	
	
	public BjlSearchVo() {}
	
	public BjlSearchVo(String title, String author, String pubInfo, String gubun, String giho, String kdc) {
		this.title = title;
		this.author = author;
		this.pubInfo = pubInfo;
		this.gubun = gubun;
		this.giho = giho;
		this.kdc = kdc;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPubInfo() {
		return pubInfo;
	}
	public void setPubInfo(String pubInfo) {
		this.pubInfo = pubInfo;
	}
	public String getGubun() {
		return gubun;
	}
	public void setGubun(String gubun) {
		this.gubun = gubun;
	}
	public String getGiho() {
		return giho;
	}
	public void setGiho(String giho) {
		this.giho = giho;
	}
	public String getKdc() {
		return kdc;
	}
	public void setKdc(String kdc) {
		this.kdc = kdc;
	}
	
	
}
