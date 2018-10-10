package com.bujun.education.dao;

import java.util.HashMap;
import java.util.List;

import com.bujun.education.vo.EduVo;

public interface EduDao {

	public void insertPro(HashMap<String, Object> map);

	public List<EduVo> edulist(HashMap<String, Object> map);

}
