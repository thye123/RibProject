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
		List<OpenInfoVo> list = openInfoService.selectList(map);
		ModelAndView mv = new ModelAndView();
		mv.addObject("ad_code", map.get("ad_code"));
		mv.addObject("contentList", list);
		mv.addObject("paging", map.get("pagingVo"));
		mv.setViewName("openInfo");
		return mv;
	}
}
