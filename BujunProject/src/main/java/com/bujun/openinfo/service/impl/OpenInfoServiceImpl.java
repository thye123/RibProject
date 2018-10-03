package com.bujun.openinfo.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bujun.openinfo.dao.OpenInfoDao;
import com.bujun.openinfo.service.OpenInfoService;
import com.bujun.openinfo.vo.OpenInfoVo;
import com.bujun.openinfo.vo.PagingVo;

@Service
public class OpenInfoServiceImpl implements OpenInfoService {

	@Autowired
	OpenInfoDao openInfoDao;
	
	@Override
	public List<OpenInfoVo> selectList(HashMap<String, Object> map) {
		List<OpenInfoVo> list = openInfoDao.selectList(map);
		int page_num 	= Integer.parseInt(String.valueOf(map.get("page_num")));
		String ad_code 	= String.valueOf(map.get("ad_code"));
		int tot_cnt		= Integer.parseInt(String.valueOf(map.get("tot_cnt")));
		
		Paging pg = new Paging(page_num, ad_code, tot_cnt);
		PagingVo pv = pg.paging();
		map.put("pagingVo", pv);
		return list;
	}

}
