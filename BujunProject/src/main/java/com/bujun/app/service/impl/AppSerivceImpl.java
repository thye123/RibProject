package com.bujun.app.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bujun.app.dao.AppDao;
import com.bujun.app.service.AppService;
import com.bujun.notice.service.impl.Paging;
import com.bujun.notice.vo.AppVo;
import com.bujun.notice.vo.NoticeVo;
import com.bujun.notice.vo.PagingVo;

@Service("appSerivce")
public class AppSerivceImpl implements AppService {
	@Autowired
	private AppDao appDao;
	
	@Override
	public List<AppVo> getList(HashMap<String, Object> map) {
		int totalcount = 10;
		int pagecount = 10;
		map.put("pagecount", pagecount);
		List<AppVo> appList = appDao.getList(map);
		
		int nowpage = Integer.parseInt(String.valueOf(map.get("nowpage")));
		int grpnum  = Integer.parseInt(String.valueOf(map.get("grpnum")));
		int total = Integer.parseInt(String.valueOf(map.get("total")));
		String searchType = String.valueOf(map.get("searchType"));
		String keyWord = String.valueOf(map.get("keyword"));
		
		Paging paging = new Paging(nowpage, total, totalcount, grpnum, pagecount, searchType, keyWord);
		PagingVo vo = paging.getPagingInfo(); 
		
		map.put("pagingVo", vo);
		return appList;
	}

	@Override
	public AppVo content(HashMap<String, Object> map) {
		AppVo appVo = appDao.content(map);
		return appVo;
	}

	@Override
	public void write(HashMap<String, Object> map) {
		appDao.write(map);
		
	}

	@Override
	public void Update(HashMap<String, Object> map) {
		appDao.Update(map);
	}

}
