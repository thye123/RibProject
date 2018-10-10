package com.bujun.education.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bujun.education.dao.EduDao;
import com.bujun.education.vo.EduVo;

@Repository
public class EduDaoImpl implements EduDao{

	@Autowired
	SqlSession sqlSession;

	@Override
	public void insertPro(HashMap<String, Object> map) {
		sqlSession.insert("Education.insertPro", map);
	}

	@Override
	public List<EduVo> edulist(HashMap<String, Object> map) {
		sqlSession.selectList("Education.selPro", map);
		List<EduVo> list = (List<EduVo>) map.get("result");
		return list;
	}

	@Override //상세보기 평생학습
	public EduVo getdetail(HashMap<String, Object> map) {
		sqlSession.selectOne("Education.dePro",map);
		List<EduVo> elist= (List<EduVo>) map.get("result");
		EduVo vo = new EduVo();
		vo = elist.get(0);
		return vo;
	}

	@Override //평생학습 수강신청
	public void getInApply(HashMap<String, Object> map) {
		sqlSession.insert("Education.inApply", map);
	}

}
