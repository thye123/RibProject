package com.bujun.openinfo.vo;

public class PagingVo {
	private int 	page_num; 	//현재 페이지
	private String 	ad_code;  	//현재 게시판 코드
	private int		tot_cnt;  	//총 콘텐츠 수
	private int 	tot_btcnt;	//하단에 뿌려줄 숫자
	private int 	start_page;	//시작 페이지
	private int		end_page;	//끝 페이지
	private int 	page_group;	//페이지 그룹
	private int 	page_cnt;   //하단에 뿌려줄 페이지 갯수
	
	public int getPage_num() {
		return page_num;
	}
	public void setPage_num(int page_num) {
		this.page_num = page_num;
	}
	public String getAd_code() {
		return ad_code;
	}
	public void setAd_code(String ad_code) {
		this.ad_code = ad_code;
	}
	public int getTot_cnt() {
		return tot_cnt;
	}
	public void setTot_cnt(int tot_cnt) {
		this.tot_cnt = tot_cnt;
	}
	public int getTot_btcnt() {
		return tot_btcnt;
	}
	public void setTot_btcnt(int tot_btcnt) {
		this.tot_btcnt = tot_btcnt;
	}
	public int getStart_page() {
		return start_page;
	}
	public void setStart_page(int start_page) {
		this.start_page = start_page;
	}
	public int getPage_group() {
		return page_group;
	}
	public void setPage_group(int page_group) {
		this.page_group = page_group;
	}
	public int getEnd_page() {
		return end_page;
	}
	public void setEnd_page(int end_page) {
		this.end_page = end_page;
	}
	public int getPage_cnt() {
		return page_cnt;
	}
	public void setPage_cnt(int page_cnt) {
		this.page_cnt = page_cnt;
	}
	
	@Override
	public String toString() {
		return "PagingVo [page_num=" + page_num + ", ad_code=" + ad_code + ", tot_cnt=" + tot_cnt + ", tot_btcnt="
				+ tot_btcnt + ", start_page=" + start_page + ", end_page=" + end_page + ", page_group=" + page_group
				+ ", page_cnt=" + page_cnt + "]";
	}
}
