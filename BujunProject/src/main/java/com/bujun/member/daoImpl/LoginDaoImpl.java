package com.bujun.member.daoImpl;

import java.lang.reflect.Member;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bujun.member.dao.LoginDao;
import com.bujun.member.vo.MemberVo;

@Repository("LoginDao")
public class LoginDaoImpl implements LoginDao{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public MemberVo getMember(HashMap<String, Object> map) {


		sqlSession.selectOne("memberMapper.MemberLogin", map);
		List<MemberVo> list = (List<MemberVo>) map.get("result");
		MemberVo vo = new MemberVo();
		vo = list.get(0);
		
		return vo;
	}

	
	@Override
	public int getPassChk(HashMap<String, Object> map) {
		sqlSession.selectOne("memberMapper.MemberPassChk", map);
		int res = (int) map.get("result");

		return res;
	}


	@Override
	public String getPassChkEmail(HashMap<String, Object> map) {
		sqlSession.selectOne("memberMapper.MemberPassChk2", map);
		String res = (String) map.get("result");

		return res;
	}


	@Override
	public void UpdatePass(HashMap<String, Object> map) {
		sqlSession.update("memberMapper.MemberPassUpdate", map);
	}
	
	
	
	
}
