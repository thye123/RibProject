package com.bujun.member.service;

import java.util.HashMap;

import com.bujun.member.vo.MemberVo;

public interface LoginService {

	MemberVo getMember(HashMap<String, Object> map);

}
