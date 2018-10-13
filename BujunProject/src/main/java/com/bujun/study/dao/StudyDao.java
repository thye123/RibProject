package com.bujun.study.dao;

import java.util.HashMap;
import java.util.List;

import com.bujun.study.vo.StudyVo;

public interface StudyDao {

	public void addstudy(HashMap<String, Object> map);

	public List<StudyVo> getList(HashMap<String, Object> map);

	public StudyVo getDetail(HashMap<String, Object> map);

	public void update(HashMap<String, Object> map);

	public void delete(HashMap<String, Object> map);

	public List<StudyVo> search(HashMap<String, Object> map);

}
