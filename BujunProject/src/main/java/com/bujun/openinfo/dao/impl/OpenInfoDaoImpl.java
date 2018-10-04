package com.bujun.openinfo.dao.impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

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

	@Override
	public int insertContent(HashMap<String, Object> map) {
		sqlSession.insert("OpenInfo.insertContent", map);
		int ad_idx = Integer.parseInt(String.valueOf(map.get("ad_idx")));
		return ad_idx;
	}

	@Override
	public void addFile(HttpServletRequest req, HashMap<String, Object> map) {
		sqlSession.insert("OpenInfo.insertFile", map);
	}
	
}
