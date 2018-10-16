package com.bujun.notice.vo;

public class PagingVo {
	private int nowpage;
	private int prevpage;
	private int nextpage;
	
	private int total;
	private int totalcount;
	private int startnum;
	private int endnum;
	private int grpnum;
	private int pagecount;
	
	private boolean prev;
	private boolean next;
	private int recordcount;
	
	public int getNowpage() {
		return nowpage;
	}
	public void setNowpage(int nowpage) {
		this.nowpage = nowpage;
	}
	public int getPrevpage() {
		return prevpage;
	}
	public void setPrevpage(int prevpage) {
		this.prevpage = prevpage;
	}
	public int getNextpage() {
		return nextpage;
	}
	public void setNextpage(int nextpage) {
		this.nextpage = nextpage;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getTotalcount() {
		return totalcount;
	}
	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
	}
	public int getStartnum() {
		return startnum;
	}
	public void setStartnum(int startnum) {
		this.startnum = startnum;
	}
	public int getEndnum() {
		return endnum;
	}
	public void setEndnum(int endnum) {
		this.endnum = endnum;
	}
	public int getGrpnum() {
		return grpnum;
	}
	public void setGrpnum(int grpnum) {
		this.grpnum = grpnum;
	}
	public int getPagecount() {
		return pagecount;
	}
	public void setPagecount(int pagecount) {
		this.pagecount = pagecount;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public int getRecordcount() {
		return recordcount;
	}
	public void setRecordcount(int recordcount) {
		this.recordcount = recordcount;
	}
	
	@Override
	public String toString() {
		return "PagingVo [nowpage=" + nowpage + ", prevpage=" + prevpage + ", nextpage=" + nextpage + ", total=" + total
				+ ", totalcount=" + totalcount + ", startnum=" + startnum + ", endnum=" + endnum + ", grpnum=" + grpnum
				+ ", pagecount=" + pagecount + ", prev=" + prev + ", next=" + next + ", recordcount=" + recordcount
				+ "]";
	}
	
	
	
}
