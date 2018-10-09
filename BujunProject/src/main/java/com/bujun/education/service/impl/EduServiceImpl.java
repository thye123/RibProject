package com.bujun.education.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bujun.education.dao.EduDao;
import com.bujun.education.service.EduService;

@Service
public class EduServiceImpl implements EduService{

	@Autowired
	EduDao eduDao;
	
}
