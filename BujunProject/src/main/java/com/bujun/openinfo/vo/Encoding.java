package com.bujun.openinfo.vo;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class Encoding {
	
	private String keyfield;
	private String keyword;
	
	public String getKeyfield() {
		return keyfield;
	}

	public void setKeyfield(String keyfield) {
		this.keyfield = keyfield;
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
}
