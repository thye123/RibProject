package com.bujun.club.controllor;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.bujun.club.service.BuginService;
import com.bujun.club.service.imple.PagingData;
import com.bujun.club.vo.ClubVo;
import com.bujun.club.vo.SearchVo;

@RestController
public class DataControllor {

	@Autowired
	private BuginService buginservice;

	// 여긴 ajax 검색해서 리스트 보여줄때 (작업을 2 분류로 나눴음 )
	@RequestMapping(value = "/CluBoard/view/", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<SearchVo> getClublist(@RequestParam HashMap<String, Object> map) {
		
		//System.out.println("ajaxList" + map);
		List<SearchVo> club = buginservice.AjaxkeyList(map);
		//System.out.println("ajaxclub" + club);
		return club;
	}

	// 페이징 관련
	@RequestMapping(value = "/CluBoard/paging/", method = RequestMethod.GET, headers = "Accept=application/json")
	public ClubVo getpaging(@RequestParam HashMap<String, Object> map) {
		
		//기초 셋팅 
		ClubVo vod = new ClubVo();
		PagingData pg = new PagingData();
		//검색 조회수 값 조회 
		SearchVo  vo = buginservice.pagingajax(map);
		System.out.println("vo." + vo.toString());
		String reCnt = String.valueOf(map.get("count"));
		System.out.println("map cent" +reCnt);
		//조회값이 없을 경우 0 으로 셋팅해서 처리 
		if(reCnt.equals("null")) {
			vod.setCount(0);
			map.put("count", vod.getCount());
			vod = pg.pagdata(map);
			System.out.println("값이 없을때 vod" + vod.toString());
		}else {
			vod = pg.pagdata(map);
			System.out.println("값이 있을때 vod" + vod.toString());
			
		}
		//조회값이 있을경우는 그냥 map 받아서 실행 
		return vod;
	}

}
