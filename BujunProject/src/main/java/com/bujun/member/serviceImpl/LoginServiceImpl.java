package com.bujun.member.serviceImpl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bujun.member.dao.LoginDao;
import com.bujun.member.service.LoginService;
import com.bujun.member.vo.MemberVo;

@Service("LoginService")
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	private LoginDao loginDao;

	@Override
	public MemberVo getMember(HashMap<String, Object> map) {
		MemberVo vo = loginDao.getMember(map);
		return vo;
	}
	
	
	
}
