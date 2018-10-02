package com.bujun.menuContent.controller;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UComController {
	@RequestMapping("/volunteer") 
	public String Volunteer(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		return "user/sub/sub06/volunteer";
	}
	
	
	@RequestMapping("/charter03") 
	public String Charter03(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		return "user/sub/sub06/charter03";
	}	
	
	
	
}
