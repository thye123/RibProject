package com.bujun.notice.dao.impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bujun.notice.dao.NoticeDao;
import com.bujun.notice.vo.FileVo;
import com.bujun.notice.vo.NoticeVo;

@Repository("noticeDao")
public class NoticeDaoImpl implements NoticeDao {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<NoticeVo> getList(HashMap<String, Object> map) {
		sqlSession.selectList("Notice.NoticeList", map);
		List<NoticeVo> noticeList = (List<NoticeVo>) map.get("result");		
		return noticeList;
	}

	@Override
	public NoticeVo content(HashMap<String, Object> map) {
		sqlSession.selectOne("Notice.NoticeView", map);
		List<NoticeVo> list = (List<NoticeVo>) map.get("result");
		NoticeVo vo = list.get(0); 
		return vo;
	}

	@Override
	public int getWrite(HashMap<String, Object> map) {
		System.out.println("map: " + map);
		sqlSession.insert("Notice.NoticeWrite", map);
		int ad_idx = Integer.parseInt(String.valueOf(map.get("ad_idx")));
		return ad_idx;
	}

	@Override
	public void addFile(HttpServletRequest req, HashMap<String, Object> map) {
		sqlSession.insert("Notice.insertFile",map);
		
	}

	@Override
	public void Update(HashMap<String, Object> map) {
		
		sqlSession.update("Notice.noticeUpdate", map);
		
	}

	@Override
	public void upFile(HttpServletRequest req, HashMap<String, Object> map) {
		sqlSession.update("Notice.updateFile", map);
		
	}

	@Override
	public void delFile(HashMap<String, Object> map) {
		sqlSession.delete("Notice.deleteFile", map);
	}

	@Override
	public List<NoticeVo> mainList(HashMap<String, Object> map, String ad_code) {
		map.put("ad_code",ad_code);
		sqlSession.selectList("Notice.NoticeMainList", map);
		List<NoticeVo> noList = (List<NoticeVo>) map.get("result");
		return noList;
	}


}
