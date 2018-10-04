package com.bujun.openinfo.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.bujun.openinfo.vo.OpenInfoVo;

public interface OpenInfoService {

	public List<OpenInfoVo> selectList(HashMap<String, Object> map);

	public int insertContent(HashMap<String, Object> map);

	public void addFile(HttpServletRequest req, HashMap<String, Object> map);

}
