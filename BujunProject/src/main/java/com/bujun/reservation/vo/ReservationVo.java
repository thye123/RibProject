package com.bujun.reservation.vo;

public class ReservationVo {

	private int res_idx;
	private String res_code;
	private String res_memid;	
	private String res_rimem_num;	
	private String res_areacode;	
	private String res_seatcode;
	private String res_date;	
	private String res_sttime;	
	private String res_edtime;	
	private int res_renum;
	public int getRes_idx() {
		return res_idx;
	}
	public void setRes_idx(int res_idx) {
		this.res_idx = res_idx;
	}
	public String getRes_code() {
		return res_code;
	}
	public void setRes_code(String res_code) {
		this.res_code = res_code;
	}
	public String getRes_memid() {
		return res_memid;
	}
	public void setRes_memid(String res_memid) {
		this.res_memid = res_memid;
	}
	public String getRes_rimem_num() {
		return res_rimem_num;
	}
	public void setRes_rimem_num(String res_rimem_num) {
		this.res_rimem_num = res_rimem_num;
	}
	public String getRes_areacode() {
		return res_areacode;
	}
	public void setRes_areacode(String res_areacode) {
		this.res_areacode = res_areacode;
	}
	public String getRes_seatcode() {
		return res_seatcode;
	}
	public void setRes_seatcode(String res_seatcode) {
		this.res_seatcode = res_seatcode;
	}
	public String getRes_date() {
		return res_date;
	}
	public void setRes_date(String res_date) {
		this.res_date = res_date;
	}
	public String getRes_sttime() {
		return res_sttime;
	}
	public void setRes_sttime(String res_sttime) {
		this.res_sttime = res_sttime;
	}
	public String getRes_edtime() {
		return res_edtime;
	}
	public void setRes_edtime(String res_edtime) {
		this.res_edtime = res_edtime;
	}
	public int getRes_renum() {
		return res_renum;
	}
	public void setRes_renum(int res_renum) {
		this.res_renum = res_renum;
	}
	@Override
	public String toString() {
		return "ReservationVo [res_idx=" + res_idx + ", res_code=" + res_code + ", res_memid=" + res_memid
				+ ", res_rimem_num=" + res_rimem_num + ", res_areacode=" + res_areacode + ", res_seatcode="
				+ res_seatcode + ", res_date=" + res_date + ", res_sttime=" + res_sttime + ", res_edtime=" + res_edtime
				+ ", res_renum=" + res_renum + "]";
	}

}
