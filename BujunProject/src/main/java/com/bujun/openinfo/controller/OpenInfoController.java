package com.bujun.openinfo.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bujun.openinfo.service.OpenInfoService;
import com.bujun.openinfo.vo.OpenInfoVo;

@Controller
public class OpenInfoController {
	
	@Autowired
	OpenInfoService openInfoService;
	
	@RequestMapping("/info01")
	public String openInfoIntro() {
		return "user/sub/sub07/OpenInfoIntro";
	}
	
	@RequestMapping("/info02")
	public String openInfoList() {
		return "user/sub/sub07/OpenInfoList";
	}
	
	@RequestMapping("/info03")
	public ModelAndView goOpenInfo(@RequestParam HashMap<String, Object> map) {
		System.out.println("map : " + map);
		String ad_code = "";
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));
		
		if(m1.equals("07")&&m2.equals("01")&&m3.equals("03")) {
			System.out.println("왔냐");
			ad_code = "CAT0016";
		}else {
			if(m1.equals("07")&&m2.equals("01")&&m3.equals("05")) {
				System.out.println("여기는왔냐");
				ad_code="CAT0017";
			}
		}
		System.out.println("ad_code: " + ad_code);
		map.put("ad_code", ad_code);
		
		List<OpenInfoVo> list = openInfoService.selectList(map);
		System.out.println("list: " + list);
		ModelAndView mv = new ModelAndView();
		mv.addObject("ad_code", ad_code);
		mv.addObject("contentList", list);
		mv.addObject("paging", map.get("pagingVo"));
		mv.setViewName("user/sub/sub07/OpenInfo");
		return mv;
	}
}
