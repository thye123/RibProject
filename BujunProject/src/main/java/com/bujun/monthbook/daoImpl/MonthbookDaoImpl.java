package com.bujun.monthbook.daoImpl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bujun.monthbook.dao.MonthbookDao;
import com.bujun.monthbook.vo.MonthbookVo;

@Repository
public class MonthbookDaoImpl implements MonthbookDao {

	@Autowired
	SqlSession sqlSession;

	@Override
	public int boardListCount(HashMap<String, Object> map) {
		sqlSession.selectOne("MonthBook.MonthBookTotalCount", map);
		int result = (int) map.get("result");
		
		return result;
	}

	@Override
	public List<MonthbookVo> getList(HashMap<String, Object> map) {
		sqlSession.selectList("MonthBook.MonthBookList", map);
		List<MonthbookVo> list = (List<MonthbookVo>) map.get("result");
		return list;
	}

	@Override
	public void boardWrite(HashMap<String, Object> map) {
		sqlSession.insert("MonthBook.MonthBookWrite", map);
	}

	@Override
	public MonthbookVo getMonthBookVo(HashMap<String, Object> map) {
		sqlSession.selectOne("MonthBook.MonthBookRead", map);
		List<MonthbookVo> list = (List<MonthbookVo>) map.get("result");
		
		MonthbookVo vo = new MonthbookVo();
		vo = list.get(0);
		
		return vo;
	}

	@Override
	public void getBoardFileDelete(HashMap<String, Object> map) {
		sqlSession.delete("MonthBook.MonthBookFileDelete", map);
	}

	@Override
	public void getUpdate(HashMap<String, Object> map) {
		sqlSession.update("MonthBook.MonthBookUpdate", map);
	}

	@Override
	public void getBoardDelete(HashMap<String, Object> map) {
		sqlSession.delete("MonthBook.MonthBookDelete", map);
	}

	@Override
	public List<MonthbookVo> getMainBookList(HashMap<String, Object> map) {
		sqlSession.selectList("MonthBook.MonthMainBookList", map);
		List<MonthbookVo> list = (List<MonthbookVo>) map.get("result");
		
		return list;
	}

	
}
