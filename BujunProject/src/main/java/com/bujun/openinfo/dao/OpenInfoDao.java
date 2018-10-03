package com.bujun.openinfo.dao;

import java.util.HashMap;
import java.util.List;

import com.bujun.openinfo.vo.OpenInfoVo;

public interface OpenInfoDao {

	List<OpenInfoVo> selectList(HashMap<String, Object> map);

}
