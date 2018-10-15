package com.bujun.bank.dao.impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bujun.bank.dao.BankDao;
import com.bujun.notice.vo.NoticeVo;

@Repository("bankDao")
public class BankDaoImpl implements BankDao {
	@Autowired
	private SqlSession sqlSession;
	@Override
	public List<NoticeVo> getList(HashMap<String, Object> map) {
		
		sqlSession.selectList("Bank.BankBoardList", map);
		List<NoticeVo> bankList = (List<NoticeVo>) map.get("result");		
		return bankList;
	}
	@Override
	public int getWrite(HashMap<String, Object> map) {
		System.out.println("map: " + map);
		sqlSession.insert("Bank.BankBoardWrite", map);
		int ad_idx = Integer.parseInt(String.valueOf(map.get("ad_idx")));
		return ad_idx;
	}
	@Override
	public void addFile(HttpServletRequest req, HashMap<String, Object> map) {
		sqlSession.insert("Bank.BankInsertFile",map);
	}
	@Override
	public NoticeVo content(HashMap<String, Object> map) {
		sqlSession.selectOne("Bank.BankBoardView", map);
		List<NoticeVo> list = (List<NoticeVo>) map.get("result");
		NoticeVo vo = list.get(0);
		return vo;
	}
	@Override
	public void Update(HashMap<String, Object> map) {
		sqlSession.update("Bank.BankBoardUpdate", map);
		//System.out.println("업뎃" + map);
	}
	@Override
	public void upFile(HttpServletRequest req, HashMap<String, Object> map) {
		//System.out.println("던질까" + map);
		sqlSession.update("Bank.BoardUpdateFile", map);		
	}
	@Override
	public void delFile(HashMap<String, Object> map) {
		sqlSession.delete("Bank.BoardDeleteFile", map);		
	}

}
