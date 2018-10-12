package com.bujun.monthbook.serviceImpl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bujun.monthbook.dao.MonthbookDao;
import com.bujun.monthbook.service.MonthbookService;


@Service
public class MonthbookServiceImpl implements MonthbookService {

	@Autowired
	MonthbookDao monthbookDao;

	@Override
	public int boardListCount(HashMap<String, Object> map) {
		int result = 0;
		//monthbookDao.boardListCount(map);
		return result;
	}
	
	
}
