package com.bujun.education.controller;

import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bujun.education.service.EduService;

@Controller
public class LifeLongController {
	
	@Autowired
	EduService eduService;
	
	@RequestMapping("/opprogram01")
	public ModelAndView operatingProgram(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		mv.setViewName("user/sub/sub04/operatingprogram");
		return mv;
	}
	
	@RequestMapping("/opprogram01/adprof")
	public ModelAndView insertProgramForm(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		ModelAndView mv = new ModelAndView();
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		mv.setViewName("user/sub/sub04/operatingadpro");
		return mv;
	}
	
	@RequestMapping("/opprogram01/adpro")
	public String insertProgram(@RequestParam HashMap<String, Object> map, HttpServletRequest req) {
		
		return "";
	}
}
