package com.bujun.club.vo;

public class ClubApplyVo {
	private int cluapp_idx;
	private String cluapp_code;
	private String cluapp_appmemid;
	private String cluapp_rimemnum;
	private String cluapp_appname;
	private String cluapp_appphone;
	private String cluapp_appdate;
	private int cluapp_appduring;
	
	public int getCluapp_idx() {
		return cluapp_idx;
	}
	public void setCluapp_idx(int cluapp_idx) {
		this.cluapp_idx = cluapp_idx;
	}
	public String getCluapp_code() {
		return cluapp_code;
	}
	public void setCluapp_code(String cluapp_code) {
		this.cluapp_code = cluapp_code;
	}
	public String getCluapp_appmemid() {
		return cluapp_appmemid;
	}
	public void setCluapp_appmemid(String cluapp_appmemid) {
		this.cluapp_appmemid = cluapp_appmemid;
	}
	public String getCluapp_rimemnum() {
		return cluapp_rimemnum;
	}
	public void setCluapp_rimemnum(String cluapp_rimemnum) {
		this.cluapp_rimemnum = cluapp_rimemnum;
	}
	public String getCluapp_appname() {
		return cluapp_appname;
	}
	public void setCluapp_appname(String cluapp_appname) {
		this.cluapp_appname = cluapp_appname;
	}
	public String getCluapp_appphone() {
		return cluapp_appphone;
	}
	public void setCluapp_appphone(String cluapp_appphone) {
		this.cluapp_appphone = cluapp_appphone;
	}
	public String getCluapp_appdate() {
		return cluapp_appdate;
	}
	public void setCluapp_appdate(String cluapp_appdate) {
		this.cluapp_appdate = cluapp_appdate;
	}
	public int getCluapp_appduring() {
		return cluapp_appduring;
	}
	public void setCluapp_appduring(int cluapp_appduring) {
		this.cluapp_appduring = cluapp_appduring;
	}
	
	@Override
	public String toString() {
		return "ClubApplyVo [cluapp_idx=" + cluapp_idx + ", cluapp_code=" + cluapp_code + ", cluapp_appmemid="
				+ cluapp_appmemid + ", cluapp_rimemnum=" + cluapp_rimemnum + ", cluapp_appname=" + cluapp_appname
				+ ", cluapp_appphone=" + cluapp_appphone + ", cluapp_appdate=" + cluapp_appdate + ", cluapp_appduring="
				+ cluapp_appduring + "]";
	}
}
