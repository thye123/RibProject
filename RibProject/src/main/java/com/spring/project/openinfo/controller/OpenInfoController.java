package com.spring.project.openinfo.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.project.openinfo.service.OpenInfoService;
import com.spring.project.openinfo.vo.OpenInfoVo;

@Controller
public class OpenInfoController {

	@Autowired
	private OpenInfoService openInfoService;
	
	@RequestMapping("/")
	public String openInfoHome() {
		return "infoHome";
	}
	
	@RequestMapping("/OpenInfo/OpenInfoBoard")
	public ModelAndView goBoard(@RequestParam HashMap<String, Object> map) {
		List<OpenInfoVo> list = openInfoService.selectList(map);
		ModelAndView mv = new ModelAndView();
		mv.addObject("ad_code", map.get("ad_code"));
		mv.addObject("contentList", list);
		mv.addObject("paging", map.get("pagingVo"));
		mv.setViewName("openInfo");
		return mv;
	}
	
	@RequestMapping("/OpenInfo/newContent")
	public ModelAndView newContent(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("ad_code", map);
		mv.setViewName("insertContent");
		return mv;
	}
	
	@RequestMapping("/OpenInfo/insertContent")
	public String insertContent(@RequestParam HashMap<String, Object> map, HttpServletRequest req) {
		int ad_idx = openInfoService.insertContent(map);
		
		String ad_code = (String) map.get("ad_code");
		map.put("ad_idx", ad_idx);
		
		openInfoService.addFile(req, map);			
		
		return "redirect:/OpenInfo/OpenInfoBoard?ad_code="+ad_code+"&page_num=1";
	}
}
