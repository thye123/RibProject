package com.bujun.study.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bujun.study.dao.StudyDao;
import com.bujun.study.service.StudyService;
import com.bujun.study.vo.PagingVo;
import com.bujun.study.vo.StudyAppVo;
import com.bujun.study.vo.StudyVo;

@Service
public class StudyServiceImpl implements StudyService {

	@Autowired
	StudyDao studyDao;

	@Override
	public void addstudy(HashMap<String, Object> map) {
		studyDao.addstudy(map);
	}

	@Override
	public List<StudyVo> getList(HashMap<String, Object> map) {
		List<StudyVo> list = studyDao.getList(map);
		int page_num 	= Integer.parseInt(String.valueOf(map.get("page_num")));
		int tot_cnt		= Integer.parseInt(String.valueOf(map.get("tot_cnt")));
		int page_grp    = Integer.parseInt(String.valueOf(map.get("page_grp")));
		Paging pg = new Paging(page_num, tot_cnt, page_grp);
		PagingVo pv = pg.paging();
		map.put("pagingVo", pv);
		return list;
	}

	@Override
	public StudyVo getDetail(HashMap<String, Object> map) {
		StudyVo vo = studyDao.getDetail(map);
		return vo;
	}

	@Override
	public void update(HashMap<String, Object> map) {
		studyDao.update(map);
	}

	@Override
	public void delete(HashMap<String, Object> map) {
		studyDao.delete(map);
	}

	@Override
	public List<StudyVo> search(HashMap<String, Object> map) {
		List<StudyVo> list = studyDao.search(map);
		int page_num 	= Integer.parseInt(String.valueOf(map.get("page_num")));
		int tot_cnt		= Integer.parseInt(String.valueOf(map.get("tot_cnt")));
		int page_grp    = Integer.parseInt(String.valueOf(map.get("page_grp")));
		Paging pg = new Paging(page_num, tot_cnt, page_grp);
		PagingVo pv = pg.paging();
		map.put("pagingVo", pv);
		return list;
	}

	@Override
	public void studyAppliy(HashMap<String, Object> map) {
		studyDao.studyAppliy(map);
	}

	@Override
	public List<StudyAppVo> appList(HashMap<String, Object> map) {
		List<StudyAppVo> list = studyDao.appList(map);
		int page_num 	= Integer.parseInt(String.valueOf(map.get("page_num")));
		int tot_cnt		= Integer.parseInt(String.valueOf(map.get("tot_cnt")));
		int page_grp    = Integer.parseInt(String.valueOf(map.get("page_grp")));
		Paging pg = new Paging(page_num, tot_cnt, page_grp);
		PagingVo pv = pg.paging();
		map.put("pagingVo", pv);
		return list;
	}

	@Override
	public List<StudyAppVo> appSearch(HashMap<String, Object> map) {
		List<StudyAppVo> list = studyDao.appSearch(map);
		int page_num 	= Integer.parseInt(String.valueOf(map.get("page_num")));
		int tot_cnt		= Integer.parseInt(String.valueOf(map.get("tot_cnt")));
		int page_grp    = Integer.parseInt(String.valueOf(map.get("page_grp")));
		Paging pg = new Paging(page_num, tot_cnt, page_grp);
		PagingVo pv = pg.paging();
		map.put("pagingVo", pv);
		return list;
	}

	@Override
	public List<StudyAppVo> stuApplyList(HashMap<String, Object> map) {
		List<StudyAppVo> list = studyDao.stuApplyList(map);
		int page_num 	= Integer.parseInt(String.valueOf(map.get("page_num")));
		int tot_cnt		= Integer.parseInt(String.valueOf(map.get("tot_cnt")));
		int page_grp    = Integer.parseInt(String.valueOf(map.get("page_grp")));
		Paging pg = new Paging(page_num, tot_cnt, page_grp);
		PagingVo pv = pg.paging();
		map.put("pagingVo", pv);
		return list;
	}

	@Override
	public List<StudyAppVo> stuApplySearch(HashMap<String, Object> map) {
		List<StudyAppVo> list = studyDao.stuApplySearch(map);
		int page_num 	= Integer.parseInt(String.valueOf(map.get("page_num")));
		int tot_cnt		= Integer.parseInt(String.valueOf(map.get("tot_cnt")));
		int page_grp    = Integer.parseInt(String.valueOf(map.get("page_grp")));
		Paging pg = new Paging(page_num, tot_cnt, page_grp);
		PagingVo pv = pg.paging();
		map.put("pagingVo", pv);
		return list;
	}

	@Override
	public void updateApply(HashMap<String, Object> map) {
		studyDao.updateApply(map);
	}

	@Override
	public void studyEnd(HashMap<String, Object> map) {
		studyDao.studyEnd(map);
	}

	@Override
	public List<StudyVo> mainList(HashMap<String, Object> map) {
		List<StudyVo> list = studyDao.mainList(map);
		return list;
	}
	
}
