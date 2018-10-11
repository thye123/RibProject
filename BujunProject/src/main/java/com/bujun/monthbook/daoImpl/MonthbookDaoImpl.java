package com.bujun.monthbook.daoImpl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bujun.monthbook.dao.MonthbookDao;

@Repository
public class MonthbookDaoImpl implements MonthbookDao {

	@Autowired
	SqlSession sqlSession;

	
}
