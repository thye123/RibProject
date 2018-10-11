package com.bujun.education.service;

import java.util.HashMap;
import java.util.List;

import com.bujun.education.vo.EduVo;

public interface EduService {

	public void insertPro(HashMap<String, Object> map);

	public List<EduVo> edulist(HashMap<String, Object> map);
	
	//상세보기 정보 (평생학습)
	public EduVo getdetail(HashMap<String, Object> map);
	//수강신청 isnert 
	public void getInApply(HashMap<String, Object> map);

}
