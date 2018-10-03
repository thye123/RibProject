package com.bujun.openinfo.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.bujun.openinfo.dao.OpenInfoDao;
import com.bujun.openinfo.vo.OpenInfoVo;

@Repository
public class OpenInfoDaoImpl implements OpenInfoDao {

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<OpenInfoVo> selectList(HashMap<String, Object> map) {
		System.out.println("map dao : " + map);
		sqlSession.selectList("OpenInfo.selectCList", map);
		List<OpenInfoVo> list = (List<OpenInfoVo>) map.get("result");
		System.out.println("list daoimpl:" + list);
		return list;
	}
	
}
