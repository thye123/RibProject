package com.bujun.education.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EduDaoImpl {

	@Autowired
	SqlSession sqlSession;
}
