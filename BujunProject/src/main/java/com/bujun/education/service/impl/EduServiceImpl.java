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
	
}
