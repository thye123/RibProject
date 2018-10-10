package com.bujun.member.serviceImpl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bujun.member.dao.JoinDao;
import com.bujun.member.dao.LoginDao;
import com.bujun.member.service.JoinService;

@Service("JoinService")
public class JoinServiceImpl implements JoinService{
	
	@Autowired
	private JoinDao joinDao;

	@Override
	public int getJoinIdCheck(HashMap<String, Object> map) {
		int result = joinDao.getJoinIdCheck(map);
		return result;
	}

	@Override
	public void UpdateJoin(HashMap<String, Object> map) {
		joinDao.UpdateJoin(map);
	}


	
	
	
}
