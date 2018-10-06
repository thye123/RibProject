package com.bujun.openinfo.service.impl;

import com.bujun.openinfo.vo.PagingVo;

public class Paging {
	private int 	page_num; 	//현재 페이지
	private String 	ad_code;  	//현재 게시판 코드
	private int		tot_cnt;  	//총 콘텐츠 수
	private int 	tot_btcnt;	//하단에 뿌려줄 총 숫자
	private int 	start_page;	//시작 페이지
	private int     end_page;	//끝 페이지
	private int 	page_group;	//페이지 그룹
	
	//Getter&Setter
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
	
	//Constructor
	public Paging() {};

	public Paging(int page_num, String ad_code, int tot_cnt) {
		this.page_num = page_num;
		this.ad_code  = ad_code;
		this.tot_cnt  = tot_cnt;
	};
	
	//Method
	public PagingVo paging() {
		int pageCnt = 10; //하단에 보여줄 페이지 수
		this.page_group 	= 1;
		PagingVo vo 	= new PagingVo();
	
		if(tot_cnt % 10 == 0) {
			this.tot_btcnt 	=  tot_cnt / 10;			
		}else {
			this.tot_btcnt 	=  (tot_cnt / 10) + 1; 
		}
		
		this.start_page = (page_group - 1) * pageCnt + 1;
		this.end_page   = tot_btcnt * page_group;
		
		vo.setStart_page(this.start_page);
		vo.setEnd_page(this.end_page);
		vo.setAd_code(this.ad_code);
		vo.setPage_num(this.page_num);
		vo.setTot_cnt(this.tot_cnt);
		vo.setTot_btcnt(this.tot_btcnt);
		return vo;
	}
}
