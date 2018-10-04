package com.bujun.openinfo.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
		//System.out.println("map : " + map);
		String ad_code = "";
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));
		
		if(m1.equals("07")&&m2.equals("01")&&m3.equals("03")) {
			ad_code = "CAT0016";
			//System.out.println("ad_code: " + ad_code);
			map.put("ad_code", ad_code);
		}else {
			if(m1.equals("07")&&m2.equals("01")&&m3.equals("05")) {
				ad_code="CAT0017";
				//System.out.println("ad_code: " + ad_code);
				map.put("ad_code", ad_code);
			}
		}
		
		List<OpenInfoVo> list = openInfoService.selectList(map);
		/*System.out.println("list: " + list);
		System.out.println("paging: " + map.get("pagingVo"));*/
		ModelAndView mv = new ModelAndView();
		mv.addObject("m1",map.get("m1"));
		mv.addObject("m2",map.get("m2"));
		mv.addObject("m3",map.get("m3"));
		mv.addObject("ad_code", map.get("ad_code"));
		mv.addObject("contentList", list);
		mv.addObject("paging", map.get("pagingVo"));
		mv.setViewName("user/sub/sub07/OpenInfo");
		return mv;
	}
	
	@RequestMapping("/opdata")
	public String goOPData(){
		return "user/sub/sub07/OpenData";
	}
	
	//새글작성
	@RequestMapping("/info03/CForm")
	public ModelAndView insertForm(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("ad_code", map.get("ad_code"));
		mv.setViewName("user/sub/sub07/OpenInfoInsert");
		return mv;
	}
	
	@RequestMapping("/info03/iCon")
	public String insertContent(@RequestParam HashMap<String, Object> map, HttpServletRequest req) {
		int ad_idx = openInfoService.insertContent(map);
		String ad_code = (String) map.get("ad_code");
		map.put("ad_idx", ad_idx);
		ModelAndView mv = new ModelAndView();
		openInfoService.addFile(req, map);			
		
		return "redirect:/info03?ad_code="+ad_code+"&page_num=1";
	}
	
	//상세 정보
	@RequestMapping("/info03/dCon")
	public ModelAndView goContent(@RequestParam HashMap<String, Object> map) {
		OpenInfoVo vo = openInfoService.detail(map);
		ModelAndView mv = new ModelAndView();
		System.out.println("vo : " + vo.toString());
		mv.addObject("openInfoVo", vo);
		mv.addObject("writer", map.get("ad_writer"));
		mv.setViewName("user/sub/sub07/OpenInfoDetail");
		return mv;
	}
}
