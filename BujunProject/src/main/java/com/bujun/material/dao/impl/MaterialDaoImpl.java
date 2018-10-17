package com.bujun.material.dao.impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bujun.material.dao.MaterialDao;
import com.bujun.notice.vo.NoticeVo;
@Repository("materialDao")
public class MaterialDaoImpl implements MaterialDao {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<NoticeVo> getList(HashMap<String, Object> map) {
		sqlSession.selectList("Result.ResultList", map);
		List<NoticeVo> bankList = (List<NoticeVo>) map.get("result");		
		return bankList;
	}

	@Override
	public int getWrite(HashMap<String, Object> map) {
		sqlSession.insert("Result.ResultWrite", map);
		int ad_idx = Integer.parseInt(String.valueOf(map.get("ad_idx")));
		return ad_idx;
	}

	@Override
	public void addFile(HttpServletRequest req, HashMap<String, Object> map) {
		sqlSession.insert("Result.ResultInsertFile",map);
	}

	@Override
	public NoticeVo content(HashMap<String, Object> map) {
		sqlSession.selectOne("Result.ResultView", map);
		List<NoticeVo> list = (List<NoticeVo>) map.get("result");
		NoticeVo vo = list.get(0);
		return vo;
	}

	@Override
	public void Update(HashMap<String, Object> map) {
		sqlSession.update("Result.ResultBoardUpdate", map);
	}

	@Override
	public void upFile(HttpServletRequest req, HashMap<String, Object> map) {
		sqlSession.update("Result.ResultUpdateFile", map);
	}

	@Override
	public void delFile(HashMap<String, Object> map) {
		sqlSession.delete("Result.ResultDeleteFile", map);
	}

}
