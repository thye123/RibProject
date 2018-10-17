package com.bujun.monthbook.dao;

import java.util.HashMap;
import java.util.List;

import com.bujun.monthbook.vo.MonthbookVo;

public interface MonthbookDao {

	int boardListCount(HashMap<String, Object> map);
	List<MonthbookVo> getList(HashMap<String, Object> map);
	void boardWrite(HashMap<String, Object> map);
	MonthbookVo getMonthBookVo(HashMap<String, Object> map);
	void getBoardFileDelete(HashMap<String, Object> map);
	void getUpdate(HashMap<String, Object> map);
	void getBoardDelete(HashMap<String, Object> map);
	List<MonthbookVo> getMainBookList(HashMap<String, Object> map);


}
