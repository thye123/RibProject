package com.bujun.bookReport.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.bujun.bookReport.vo.BkReportVo;

public interface RFBoardService {

	List<BkReportVo> getList(HashMap<String, Object> map);
	int boardListCount(HashMap<String, Object> map);
	void setWrite(HashMap<String, Object> map);
	BkReportVo getBoardRead(HashMap<String, Object> map);
	int getPassChk(HashMap<String, Object> map);
	void getUpdate(HashMap<String, Object> map);
	void getBoardDelete(HashMap<String, Object> map);
	
	List<BkReportVo> freeBoardList(HashMap<String, Object> map);
	void freeBoardWrite(HashMap<String, Object> map);
	void freeBoardUpdate(HashMap<String, Object> map);
	void getBoardFileDelete(HashMap<String, Object> map);

}
