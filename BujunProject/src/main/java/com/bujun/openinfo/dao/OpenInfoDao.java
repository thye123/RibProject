package com.bujun.openinfo.dao;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.bujun.openinfo.vo.OpenInfoVo;

public interface OpenInfoDao {

	public List<OpenInfoVo> selectList(HashMap<String, Object> map);

	public int insertContent(HashMap<String, Object> map);

	public void addFile(HttpServletRequest req, HashMap<String, Object> map);

	public OpenInfoVo detail(HashMap<String, Object> map);

	public List<OpenInfoVo> search(HashMap<String, Object> map);

	public void update(HashMap<String, Object> map);

}
