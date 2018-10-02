package com.bujun.menuContent.controller;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class EtcDataController {
	
	@RequestMapping("/location") 
	public String Location(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		return "user/sub/sub08/location";
	}
	
	@RequestMapping("/personalinfo") 
	public String Personalinfo(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		return "user/sub/sub08/personalinfo";
	}
	
}
