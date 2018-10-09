package com.bujun.education.service;

import java.util.HashMap;
import java.util.List;

import com.bujun.education.vo.EduVo;

public interface EduService {

	public void insertPro(HashMap<String, Object> map);

	public List<EduVo> edulist(HashMap<String, Object> map);

}
