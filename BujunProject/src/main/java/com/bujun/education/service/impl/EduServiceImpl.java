package com.bujun.education.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bujun.education.dao.EduDao;

@Service
public class EduServiceImpl {

	@Autowired
	EduDao eduDao;
	
}
