package com.bujun.bookrental.daoImpl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bujun.bookrental.dao.BookrentalDao;
import com.bujun.bookrental.vo.BookrentalVo;

@Repository("BookrentaDao")
public class BookrentalDaoImpl implements BookrentalDao {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<BookrentalVo> getBoardList(HashMap<String, Object> map) {
		sqlSession.selectList("BookRental.BookRentalList", map);
		List<BookrentalVo> list = (List<BookrentalVo>) map.get("result");
		
		return list;
	}

	@Override
	public int boardListCount(HashMap<String, Object> map) {
		sqlSession.selectOne("BookRental.BookRentalTotalCount", map);
		int result = (int) map.get("result");
		return result;
	}





	
}
