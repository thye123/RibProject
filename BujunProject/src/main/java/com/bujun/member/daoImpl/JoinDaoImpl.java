package com.bujun.member.daoImpl;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bujun.member.dao.JoinDao;

@Repository("JoinDao")
public class JoinDaoImpl implements JoinDao{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int getJoinIdCheck(HashMap<String, Object> map) {
		
		sqlSession.selectOne("memberMapper.MemberIdDuplChk", map);

		int result = (int) map.get("result");
		
		return result;
	}

	@Override
	public void UpdateJoin(HashMap<String, Object> map) {
		sqlSession.insert("memberMapper.MemberJoin", map);
	}

	


	
	
	
	
}
