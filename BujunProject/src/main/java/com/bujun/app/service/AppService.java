package com.bujun.app.service;

import java.util.HashMap;
import java.util.List;

import com.bujun.notice.vo.AppVo;

public interface AppService {

	List<AppVo> getList(HashMap<String, Object> map);

	AppVo content(HashMap<String, Object> map);

	void write(HashMap<String, Object> map);

	void Update(HashMap<String, Object> map);

}
