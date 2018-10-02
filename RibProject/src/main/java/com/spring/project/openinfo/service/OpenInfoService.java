package com.spring.project.openinfo.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spring.project.openinfo.vo.OpenInfoVo;

public interface OpenInfoService {

	public int insertContent(HashMap<String, Object> map);

	public List<OpenInfoVo> selectList(HashMap<String, Object> map);

	public void addFile(HttpServletRequest req, HashMap<String, Object> map);

	public List<OpenInfoVo> searchList(HashMap<String, Object> map);

}
