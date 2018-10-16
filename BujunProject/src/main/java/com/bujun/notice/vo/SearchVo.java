package com.bujun.notice.vo;

public class SearchVo extends PagingVo{
	public String searchtype;
	public String keyword;
	
	public String getSearchtype() {
		return searchtype;
	}
	public void setSearchtype(String searchtype) {
		this.searchtype = searchtype;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	@Override
	public String toString() {
		return "SearchVo [searchtype=" + searchtype + ", keyword=" + keyword + "]";
	}
	
	
}
