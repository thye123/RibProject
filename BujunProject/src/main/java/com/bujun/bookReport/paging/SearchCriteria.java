package com.bujun.bookReport.paging;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class SearchCriteria extends Criteria {
	
	private String searchType;
	private String keyword;
	

	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	
	public String encoding(String keyword) {
		if(keyword == null || keyword.trim().length() == 0) {
			return "";
		}
		
		try {
			return URLEncoder.encode(keyword, "UTF-8");
		}catch (UnsupportedEncodingException e) {
			return "";
		}
	}
	
	
	@Override
	public String toString() {
		return "SearchCriteria [searchType=" + searchType + ", keyword=" + keyword + "]";
	}
	
	
	
	
}
