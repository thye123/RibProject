package com.bujun.study.service;

import java.util.HashMap;
import java.util.List;

import com.bujun.study.vo.StudyAppVo;
import com.bujun.study.vo.StudyVo;

public interface StudyService {

	public void addstudy(HashMap<String, Object> map);

	public List<StudyVo> getList(HashMap<String, Object> map);

	public StudyVo getDetail(HashMap<String, Object> map);

	public void update(HashMap<String, Object> map);

	public void delete(HashMap<String, Object> map);

	public List<StudyVo> search(HashMap<String, Object> map);

	public void studyAppliy(HashMap<String, Object> map);

	public List<StudyAppVo> appList(HashMap<String, Object> map);

	public List<StudyAppVo> appSearch(HashMap<String, Object> map);

	public List<StudyAppVo> stuApplyList(HashMap<String, Object> map);

	public List<StudyAppVo> stuApplySearch(HashMap<String, Object> map);

	public void updateApply(HashMap<String, Object> map);

	public void studyEnd(HashMap<String, Object> map);

}