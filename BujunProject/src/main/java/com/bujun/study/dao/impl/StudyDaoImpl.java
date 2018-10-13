package com.bujun.study.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bujun.study.dao.StudyDao;
import com.bujun.study.vo.StudyVo;

@Repository
public class StudyDaoImpl implements StudyDao {

	@Autowired
	SqlSession sqlSession;

	@Override
	public void addstudy(HashMap<String, Object> map) {
		sqlSession.insert("Study.addStudy", map);
	}

	@Override
	public List<StudyVo> getList(HashMap<String, Object> map) {
		sqlSession.selectList("Study.getStudy", map);
		List<StudyVo> list = (List<StudyVo>) map.get("result");
		return list;
	}

	@Override
	public StudyVo getDetail(HashMap<String, Object> map) {
		sqlSession.selectList("Study.getDetail", map);
		List<StudyVo> list = (List<StudyVo>) map.get("result");
		StudyVo vo = list.get(0);
		return vo;
	}

	@Override
	public void update(HashMap<String, Object> map) {
		sqlSession.update("Study.update", map);
	}

	@Override
	public void delete(HashMap<String, Object> map) {
		sqlSession.delete("Study.delete", map);
	}

	@Override
	public List<StudyVo> search(HashMap<String, Object> map) {
		sqlSession.selectList("Study.search", map);
		List<StudyVo> list = (List<StudyVo>) map.get("result");
		return list;
	}
	
}
