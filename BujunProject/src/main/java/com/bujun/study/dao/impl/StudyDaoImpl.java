package com.bujun.study.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bujun.study.dao.StudyDao;
import com.bujun.study.vo.StudyAppVo;
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

	@Override
	public void studyAppliy(HashMap<String, Object> map) {
		sqlSession.insert("Study.stuAppliy", map);
	}

	@Override
	public List<StudyAppVo> appList(HashMap<String, Object> map) {
		sqlSession.selectList("StudyApp.appList", map);
		List<StudyAppVo> list = (List<StudyAppVo>) map.get("result");
		return list;
	}

	@Override
	public List<StudyAppVo> appSearch(HashMap<String, Object> map) {
		sqlSession.selectList("StudyApp.appSearch", map);
		List<StudyAppVo> list = (List<StudyAppVo>) map.get("result");
		return list;
	}

	@Override
	public List<StudyAppVo> stuApplyList(HashMap<String, Object> map) {
		sqlSession.selectList("StudyApp.stuAppList", map);
		List<StudyAppVo> list = (List<StudyAppVo>) map.get("result");
		return list;
	}

	@Override
	public List<StudyAppVo> stuApplySearch(HashMap<String, Object> map) {
		sqlSession.selectList("StudyApp.stuApplySearch", map);
		List<StudyAppVo> list = (List<StudyAppVo>) map.get("result");
		return list;
	}

	@Override
	public void updateApply(HashMap<String, Object> map) {
		sqlSession.update("StudyApp.stuApplyUpdate", map);
	}

	@Override
	public void studyEnd(HashMap<String, Object> map) {
		sqlSession.update("StudyApp.stuEnd", map);
	}
	
}
