package com.bujun.notice.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.bujun.notice.vo.FileVo;
import com.bujun.notice.vo.NoticeVo;

public interface NoticeService {

	List<NoticeVo> getList(HashMap<String, Object> map);

	NoticeVo content(HashMap<String, Object> map);

	int getWrite(HashMap<String, Object> map);

	void addFile(HttpServletRequest req, HashMap<String, Object> map);

	void Update(HashMap<String, Object> map);

	void upFile(HttpServletRequest req, HashMap<String, Object> map);

	void delFile(HashMap<String, Object> map);




}