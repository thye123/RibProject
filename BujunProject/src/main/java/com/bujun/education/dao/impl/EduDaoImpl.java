package com.bujun.education.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bujun.education.dao.EduDao;

@Repository
public class EduDaoImpl implements EduDao{

	@Autowired
	SqlSession sqlSession;
}
