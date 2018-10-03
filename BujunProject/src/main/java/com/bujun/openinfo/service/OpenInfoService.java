package com.bujun.openinfo.service;

import java.util.HashMap;
import java.util.List;
import com.bujun.openinfo.vo.OpenInfoVo;

public interface OpenInfoService {

	List<OpenInfoVo> selectList(HashMap<String, Object> map);

}
