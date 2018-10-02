package com.spring.project.openinfo.dao;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.spring.project.openinfo.vo.OpenInfoVo;

public interface OpenInfoDao {

	public int insertContent(HashMap<String, Object> map);

	public List<OpenInfoVo> selectList(HashMap<String, Object> map);

	public void addFile(HttpServletRequest req, HashMap<String, Object> map);

}
