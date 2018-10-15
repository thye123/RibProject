package com.bujun.bookrental.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bujun.bookrental.dao.BookrentalDao;
import com.bujun.bookrental.service.BookrentalService;
import com.bujun.bookrental.vo.BookrentalVo;

@Service("BookrentaService")
public class BookrentalServiceImpl implements BookrentalService{
	
	@Autowired
	private BookrentalDao dao;

	@Override
	public List<BookrentalVo> getBoardList(HashMap<String, Object> map) {
		List<BookrentalVo> list = dao.getBoardList(map);
		return list;
	}

	@Override
	public int boardListCount(HashMap<String, Object> map) {
		int result = dao.boardListCount(map);
		return result;
	}


	


	
}
