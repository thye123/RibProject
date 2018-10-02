package com.bujun.bookReport.dao;

import java.util.HashMap;
import java.util.List;

import com.bujun.bookReport.vo.BkReportVo;

public interface RFBoardDao {
	
	
    // 게시글 전체 목록 보기
	public List<BkReportVo> getList(HashMap<String, Object> map);
	public int boardListCount(HashMap<String, Object> map);
	public void setWrite(HashMap<String, Object> map);
	public BkReportVo getBoardRead(HashMap<String, Object> map);
	public int getPassChk(HashMap<String, Object> map);
	public void getUpdate(HashMap<String, Object> map);
	public void getBoardDelete(HashMap<String, Object> map);
	
	//자유게시판
	public List<BkReportVo> freeBoardList(HashMap<String, Object> map);
	public void freeBoardWrite(HashMap<String, Object> map);
	public void freeBoardUpdate(HashMap<String, Object> map);
	





}
