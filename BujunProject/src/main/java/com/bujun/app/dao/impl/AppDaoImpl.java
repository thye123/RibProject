package com.bujun.app.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bujun.app.dao.AppDao;
import com.bujun.notice.vo.AppVo;
import com.bujun.notice.vo.NoticeVo;


@Repository("appDao")
public class AppDaoImpl implements AppDao {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<AppVo> getList(HashMap<String, Object> map) {
		sqlSession.selectList("App.AppList", map);
		List<AppVo> appList = (List<AppVo>) map.get("result");		
		return appList;
	}

	@Override
	public AppVo content(HashMap<String, Object> map) {
		sqlSession.selectOne("App.AppView", map);
		List<AppVo> appList = (List<AppVo>) map.get("result");
		AppVo vo = appList.get(0);
		return vo;
	}

	@Override
	public void write(HashMap<String, Object> map) {
		sqlSession.insert("App.AppInsert", map);
		
	}

	@Override
	public void Update(HashMap<String, Object> map) {
		sqlSession.update("App.AppUpdate", map);
		
	}

}
