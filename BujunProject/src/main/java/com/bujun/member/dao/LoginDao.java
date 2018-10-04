package com.bujun.member.dao;

import java.util.HashMap;

import com.bujun.member.vo.MemberVo;

public interface LoginDao {

	MemberVo getMember(HashMap<String, Object> map);
	int getPassChk(HashMap<String, Object> map);
	String getPassChkEmail(HashMap<String, Object> map);

}

