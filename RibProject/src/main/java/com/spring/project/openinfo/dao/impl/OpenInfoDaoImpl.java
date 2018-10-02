package com.spring.project.openinfo.dao.impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.spring.project.openinfo.dao.OpenInfoDao;
import com.spring.project.openinfo.vo.OpenInfoVo;

@Repository
public class OpenInfoDaoImpl implements OpenInfoDao{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertContent(HashMap<String, Object> map) {
		sqlSession.insert("OpenInfo.insertContent", map);
		int ad_idx = Integer.parseInt(String.valueOf(map.get("ad_idx")));
		return ad_idx;
	}

	@Override
	public List<OpenInfoVo> selectList(HashMap<String, Object> map) {
		sqlSession.selectList("OpenInfo.selectCList", map);
		List<OpenInfoVo> list = (List<OpenInfoVo>) map.get("result");
		return list;
	}

	@Override
	public void addFile(HttpServletRequest req, HashMap<String, Object> map) {
		sqlSession.insert("OpenInfo.insertFile", map);
	}

}
