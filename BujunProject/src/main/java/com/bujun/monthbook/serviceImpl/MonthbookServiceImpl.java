package com.bujun.monthbook.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bujun.monthbook.dao.MonthbookDao;
import com.bujun.monthbook.service.MonthbookService;
import com.bujun.monthbook.vo.MonthbookVo;


@Service
public class MonthbookServiceImpl implements MonthbookService {

	@Autowired
	MonthbookDao monthbookDao;

	@Override
	public int boardListCount(HashMap<String, Object> map) {
		int result = monthbookDao.boardListCount(map);
		return result;
	}

	@Override
	public List<MonthbookVo> getList(HashMap<String, Object> map) {
		List<MonthbookVo> list = monthbookDao.getList(map);
		return list;
	}

	@Override
	public void boardWrite(HashMap<String, Object> map) {
		monthbookDao.boardWrite(map);
	}

	@Override
	public MonthbookVo getMonthBookVo(HashMap<String, Object> map) {
		MonthbookVo vo = monthbookDao.getMonthBookVo(map);
		return vo;
	}

	@Override
	public void getBoardFileDelete(HashMap<String, Object> map) {
		monthbookDao.getBoardFileDelete(map);
	}

	@Override
	public void getUpdate(HashMap<String, Object> map) {
		monthbookDao.getUpdate(map);
	}

	@Override
	public void getBoardDelete(HashMap<String, Object> map) {
		monthbookDao.getBoardDelete(map);
	}
	
	
}
