package com.bujun.education.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bujun.education.dao.EduDao;
import com.bujun.education.service.EduService;
import com.bujun.education.vo.EduVo;

@Service
public class EduServiceImpl implements EduService{

	@Autowired
	EduDao eduDao;

	@Override
	public void insertPro(HashMap<String, Object> map) {
		eduDao.insertPro(map);
	}

	@Override
	public List<EduVo> edulist(HashMap<String, Object> map) {
		List<EduVo> list = eduDao.edulist(map);		
		return list;
	}

	@Override
	public EduVo getdetail(HashMap<String, Object> map) {
		EduVo edu = eduDao.getdetail(map);
		return edu;
	}

	@Override
	public void getInApply(HashMap<String, Object> map) {
		eduDao.getInApply(map);
		
	}

	@Override
	public EduVo getData(HashMap<String, Object> map) {
		EduVo vo = eduDao.getData(map);
		return vo;
	}

	@Override
	public List<EduVo> getcheckData(HashMap<String, Object> map) {
		List<EduVo> vo = eduDao.getcheckData(map);
		return vo;
	}
	
	public List<EduVo> EduingData (HashMap<String, Object> map){
		List<EduVo> eding = eduDao.EduingData(map);
		return eding;
	}

	@Override
	public List<EduVo> mainList(HashMap<String, Object> map) {
		List<EduVo> list = eduDao.mainList(map);
		return list;
	}
	
	
}
