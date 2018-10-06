package com.bujun.education.controller;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LifeLongController {

	@RequestMapping("/opprogram01")
	public ModelAndView operatingProgram(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		System.out.println("opprogram: " + map);
		String ad_code = "";
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));
		
		
		//게시판 코드 확인
		if(m1.equals("04")&&m2.equals("01")&&m3.equals("02")) {
			ad_code = "CAT0023";
			//System.out.println("ad_code: " + ad_code);
			map.put("ad_code", ad_code);
		}else {
			if(m1.equals("04")&&m2.equals("01")&&m3.equals("03")) {
				ad_code="CAT0024";
				//System.out.println("ad_code: " + ad_code);
				map.put("ad_code", ad_code);
			}
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("m1",map.get("m1"));
		mv.addObject("m2",map.get("m2"));
		mv.addObject("m3",map.get("m3"));
		mv.addObject("ad_code", ad_code);
		mv.setViewName("user/sub/sub04/operatingprogram");
		return mv;
	}
}
