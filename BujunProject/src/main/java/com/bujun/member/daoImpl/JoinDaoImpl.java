package com.bujun.member.daoImpl;

import java.lang.reflect.Member;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bujun.member.dao.JoinDao;
import com.bujun.member.vo.MemberVo;

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
	

	@Override
	public MemberVo getUser(HashMap<String, Object> map) {
		
		MemberVo vo = new MemberVo();
		sqlSession.selectOne("memberMapper.MemberUserInfo", map);
		List<MemberVo> list = (List<MemberVo>) map.get("result");
		vo = list.get(0);
		
		return vo;
	}

	
	@Override
	public void MypageUpdate(HashMap<String, Object> map) {
		sqlSession.update("memberMapper.MemberUpdate", map);
	}

	@Override
	public void MypageUpdatePass(HashMap<String, Object> map) {
		sqlSession.update("memberMapper.MemberUpdatePass", map);
	}

	@Override
	public void getUserDelete(HashMap<String, Object> map) {
		sqlSession.delete("memberMapper.MemberUserDelete", map);
	}

	


	
	
	
	
}
