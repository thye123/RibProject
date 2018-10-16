package com.bujun.notice.service.impl;

import com.bujun.notice.vo.PagingVo;

public class Paging {
	private int nowPage;	// 현재 페이지
	private int prevPage;	// 이전 버튼 클릭시 적용되는 nowPage
	private int nextPage;   // 다음 버튼 클릭시 적용되는 nowPage
	
	private int Total;		// 전체 Row수 
	private int totalCount; // 화면에 보여줄 페이지 수
	private int startNum;   // 화면에 보여줄 페이지 시작번호
	private int endNum;     // 화면에 보여줄 페이지 끝 번호 
	private int grpNum;     // 페이지 그룹 숫자
	private int pageCount;  // 1페이지에 보여줄 자료Row수
	
	private boolean Prev = true;   // 이전 아이콘
	private boolean Next = true;   // 다음 아이콘
	private int recordCount; // 총 row 갯수를 가지고 표현가능한 충 페이지 수
	
	private String searchType;
	private String keyWord;
	
	// Constructor
	public Paging() {
		
	}
	
	public Paging(int nowpage, int total, int totalcount, int grpnum, int pagecount, String searchType, String keyWord) {
		this.nowPage = nowpage;
		this.Total = total;
		this.totalCount = totalcount;
		this.grpNum = grpnum;
		this.pageCount = pagecount;
		this.searchType = searchType;
		this.keyWord    = keyWord; 
	}
	
	// Guttetr / Setter
	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public int getTotal() {
		return Total;
	}

	public void setTotal(int total) {
		Total = total;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getStartNum() {
		return startNum;
	}

	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}

	public int getEndNum() {
		return endNum;
	}

	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}

	public int getGrpNum() {
		return grpNum;
	}

	public void setGrpNum(int grpNum) {
		this.grpNum = grpNum;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public boolean isPrev() {
		return Prev;
	}

	public void setPrev(boolean prev) {
		Prev = prev;
	}

	public boolean isNext() {
		return Next;
	}

	public void setNext(boolean next) {
		Next = next;
	}

	public int getRecordCount() {
		return recordCount;
	}

	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
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
	
	public PagingVo getPagingInfo() {
		PagingVo vo = new PagingVo();
		
		this.recordCount = (int) Math.ceil((double)Total / (double)pageCount);
		
		this.startNum = (grpNum -1) * totalCount +1;
		
		this.endNum  = recordCount <(grpNum * totalCount)? recordCount: (grpNum * totalCount);
		
		if (startNum == 1) {
			Prev = false;
		}
		if (endNum >= recordCount){
			Next = false;
		}
		this.prevPage = startNum -1;
		this.nextPage = endNum +1;
		
		// 계산끝
		
		vo.setNowpage(this.nowPage);
		vo.setPrevpage(this.prevPage);
		vo.setNextpage(this.nextPage);
		
		vo.setTotal(this.Total);
		vo.setTotalcount(this.totalCount);
		
		vo.setStartnum(this.startNum);
		vo.setEndnum(this.endNum);
		
		vo.setPagecount(this.pageCount);
		vo.setGrpnum(this.grpNum);
		
		vo.setPrev(Prev);
		vo.setNext(Next);
		return vo;
	}
	
}

