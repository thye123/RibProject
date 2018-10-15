package com.bujun.bookrental.service;

import java.util.HashMap;
import java.util.List;

import com.bujun.bookrental.vo.BookrentalVo;

public interface BookrentalService {

	List<BookrentalVo> getBoardList(HashMap<String, Object> map);
	int boardListCount(HashMap<String, Object> map);


}
