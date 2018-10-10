package com.bujun.member.dao;

import java.util.HashMap;

import com.bujun.member.vo.MemberVo;

public interface JoinDao {

	int getJoinIdCheck(HashMap<String, Object> map);

	void UpdateJoin(HashMap<String, Object> map);


}

