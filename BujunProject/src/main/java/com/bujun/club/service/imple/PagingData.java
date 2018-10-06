package com.bujun.club.service.imple;

import java.util.HashMap;
import java.util.List;

import com.bujun.club.vo.ClubVo;
import com.bujun.club.vo.SearchVo;

public class PagingData {


	public ClubVo pagdata(HashMap<String, Object> map) {
		
		ClubVo vo = new ClubVo();

		//페이징 계산처리  시작 
		//1.현재 페이지 부분을 불러온다 
		int page = Integer.parseInt(String.valueOf(map.get("page")));
		//페이지 계산을 위한 초기값 
		vo.setPage(page);
		//페이지 그룹 계산 
		int pagegrp=Integer.parseInt(String.valueOf(map.get("pagegrp")));
		//데이터 불러올때 계산값  :  총 데이터 레코드 계산 값 
		int count = (int) map.get("count");

		vo.setCount(count); // 페이지 계산
		//한 페이지에 보여줄 데이터 수 
		int pagecount = 10;
		//전체 받은 페이징 계산을 위한 부분을 넣어준다 
		ClubVo pageMaker = vo.calcPage(page, pagecount, count, pagegrp);
		return pageMaker;
	
	}

	public SearchVo getPaging(HashMap<String, Object> map) {
		
		SearchVo pageMaker = new SearchVo();

		//페이징 계산처리  시작 
		//1.현재 페이지 부분을 불러온다 
		int page = Integer.parseInt(String.valueOf(map.get("page")));
		//페이지 계산을 위한 초기값 
		pageMaker.setPage(page);
		//페이지 그룹 계산 
		int pagegrp=Integer.parseInt(String.valueOf(map.get("pagegrp")));
		//데이터 불러올때 계산값  :  총 데이터 레코드 계산 값 
		int count = (int) map.get("count");
		pageMaker.setCount(count); // 페이지 계산
		//한 페이지에 보여줄 데이터 수 
		int pagecount = 10;
		//전체 받은 페이징 계산을 위한 부분을 넣어준다 
		SearchVo vo = pageMaker.calcPage(page, pagecount, count, pagegrp);
		
		return vo;
	}
}
