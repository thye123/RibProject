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

		List<SearchVo> club = buginservice.AjaxkeyList(map);
		return club;
	}

	// ����¡ ����
	@RequestMapping(value = "/CluBoard/paging/", method = RequestMethod.GET, headers = "Accept=application/json")
	public ClubVo getpaging(@RequestParam HashMap<String, Object> map) {
		
		//���� ���� 
		ClubVo vod = new ClubVo();
		PagingData pg = new PagingData();
		//�˻� ��ȸ�� �� ��ȸ 
		buginservice.pagingajax(map);
		String reCnt = String.valueOf(map.get("count"));
		//��ȸ���� ���� ��� 0 ���� �����ؼ� ó�� 
		if(reCnt.equals("null")) {
			vod.setCount(0);
			map.put("count", vod.getCount());
			vod = pg.pagdata(map);
		}
		//��ȸ���� �������� �׳� map �޾Ƽ� ���� 
		vod = pg.pagdata(map);
	
		return vod;
	}

}
