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

	//리스트
	@Override
	public List<OpenInfoVo> selectList(HashMap<String, Object> map) {
		//System.out.println("map dao : " + map);
		sqlSession.selectList("OpenInfo.selectCList", map);
		List<OpenInfoVo> list = (List<OpenInfoVo>) map.get("result");
		//System.out.println("list daoimpl:" + list);
		return list;
	}

	//인서트
	@Override
	public int insertContent(HashMap<String, Object> map) {
		sqlSession.insert("OpenInfo.insertContent", map);
		int ad_idx = Integer.parseInt(String.valueOf(map.get("ad_idx")));
		return ad_idx;
	}

	//파일 인서트
	@Override
	public void addFile(HttpServletRequest req, HashMap<String, Object> map) {
		sqlSession.insert("OpenInfo.insertFile", map);
	}

	//상세정보
	@Override
	public OpenInfoVo detail(HashMap<String, Object> map) {
		sqlSession.selectOne("OpenInfo.detail", map);
		List<OpenInfoVo> list = (List<OpenInfoVo>) map.get("result");
		OpenInfoVo vo = list.get(0);
		return vo;
	}

	@Override
	public List<OpenInfoVo> search(HashMap<String, Object> map) {
		sqlSession.selectList("OpenInfo.search", map);
		List<OpenInfoVo> list = (List<OpenInfoVo>) map.get("result");
		return list;
	}

	@Override
	public void update(HashMap<String, Object> map) {
		sqlSession.update("OpenInfo.updateContent", map);
	}
	
}
