package com.bujun.openinfo.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bujun.openinfo.dao.OpenInfoDao;
import com.bujun.openinfo.service.OpenInfoService;
import com.bujun.openinfo.vo.OpenInfoVo;

@Service
public class OpenInfoServiceImpl implements OpenInfoService {

	@Autowired
	OpenInfoDao openInfoDao;
	
	@Override
	public List<OpenInfoVo> selectList(HashMap<String, Object> map) {

		return null;
	}

}
