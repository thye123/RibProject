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

	// ���� ajax �˻��ؼ� ����Ʈ �����ٶ� (�۾��� 2 �з��� ������ )
	@RequestMapping(value = "/CluBoard/view/", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<SearchVo> getClublist(@RequestParam HashMap<String, Object> map) {
		System.out.println("page: " + map.get("page"));
		System.out.println("mapajax " + map);
		
		List<SearchVo> club = buginservice.AjaxkeyList(map);
		
		System.out.println("ajaxList" + map);
		
		System.out.println("ajaxclub" + club);
		return club;
	}

	// ����¡ ����
	@RequestMapping(value = "/CluBoard/paging/", method = RequestMethod.GET, headers = "Accept=application/json")
	public ClubVo getpaging(@RequestParam HashMap<String, Object> map) {
		
		//���� ���� 
		ClubVo vod = new ClubVo();
		PagingData pg = new PagingData();
		//�˻� ��ȸ�� �� ��ȸ 
		SearchVo  vo = buginservice.pagingajax(map);
		System.out.println("vo." + vo.toString());
		String reCnt = String.valueOf(map.get("count"));
		System.out.println("map cent" +reCnt);
		//��ȸ���� ���� ��� 0 ���� �����ؼ� ó�� 
		if(reCnt.equals("null")) {
			vod.setCount(0);
			map.put("count", vod.getCount());
			vod = pg.pagdata(map);
			//System.out.println("���� ������ vod" + vod.toString());
		}else {
			vod = pg.pagdata(map);
			//System.out.println("���� ������ vod" + vod.toString());
			
		}
		//��ȸ���� �������� �׳� map �޾Ƽ� ���� 
		return vod;
	}

}
