package com.bujun.education.dao;

import java.util.HashMap;
import java.util.List;

import com.bujun.education.vo.EduVo;

public interface EduDao {

	public void insertPro(HashMap<String, Object> map);

	public List<EduVo> edulist(HashMap<String, Object> map);
	//프로그램 정보 상세 보기 
	public EduVo getdetail(HashMap<String, Object> map);
	//수강신청 할때 
	public void getInApply(HashMap<String, Object> map);

}
