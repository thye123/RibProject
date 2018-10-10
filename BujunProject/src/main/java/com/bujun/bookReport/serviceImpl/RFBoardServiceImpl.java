package com.bujun.bookReport.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bujun.bookReport.dao.RFBoardDao;
import com.bujun.bookReport.service.RFBoardService;
import com.bujun.bookReport.vo.BkReportVo;

@Service("RFBoardService")
public class RFBoardServiceImpl implements RFBoardService{
	
	@Autowired
	private RFBoardDao boardDao;

	@Override
	public List<BkReportVo> getList(HashMap<String, Object> map) {
		
		List<BkReportVo> list = boardDao.getList(map);
		
		return list;
	}

	@Override
	public int boardListCount(HashMap<String, Object> map) {
		int result = boardDao.boardListCount(map);
		return result;
	}

	@Override
	public void setWrite(HashMap<String, Object> map) {
		boardDao.setWrite(map);
	}

	
	@Override
	public BkReportVo getBoardRead(HashMap<String, Object> map) {
		BkReportVo vo = boardDao.getBoardRead(map);
		return vo;
	}

	
	@Override
	public int getPassChk(HashMap<String, Object> map) {
		int result = boardDao.getPassChk(map);
		return result;
	}

	
	@Override
	public void getUpdate(HashMap<String, Object> map) {
		boardDao.getUpdate(map);
	}

	@Override
	public void getBoardDelete(HashMap<String, Object> map) {
		boardDao.getBoardDelete(map);
	}

	
	
	//�����Խ���
	@Override
	public List<BkReportVo> freeBoardList(HashMap<String, Object> map) {
		List<BkReportVo> list = boardDao.freeBoardList(map);
		return list;
	}

	@Override
	public void freeBoardWrite(HashMap<String, Object> map) {
		boardDao.freeBoardWrite(map);
	}

	@Override
	public void freeBoardUpdate(HashMap<String, Object> map) {
		boardDao.freeBoardUpdate(map);
	}

	@Override
	public void getBoardFileDelete(HashMap<String, Object> map) {
		boardDao.getBoardFileDelete(map);
	}


	


	
}
