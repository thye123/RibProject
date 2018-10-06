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

	
	@Override
	public int getPassChk(HashMap<String, Object> map) {
		int res = loginDao.getPassChk(map);
		return res;
	}


	@Override
	public String getPassChkEmail(HashMap<String, Object> map) {
		String res = loginDao.getPassChkEmail(map);
		return res;
	}


	@Override
	public void UpdatePass(HashMap<String, Object> map) {
		loginDao.UpdatePass(map);
	}


	@Override
	public int getIdChk(HashMap<String, Object> map) {
		int cnt = loginDao.getIdChk(map);
		return cnt;
	}


	@Override
	public MemberVo getIdChkVo(HashMap<String, Object> map) {
		MemberVo vo = loginDao.getIdChkVo(map);
		return vo;
	}
	
	
	
}
