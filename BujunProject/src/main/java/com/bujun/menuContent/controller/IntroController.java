package com.bujun.menuContent.controller;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class IntroController {

	
	@RequestMapping("/bjldata") 
	public String Bjldata(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		return "user/sub/sub01/bjldata";
	}
	
	@RequestMapping("/org")
	public String org(@RequestParam HashMap<String, Object> map, Model model) {
	
		model.addAttribute("menu", map);
		return "user/sub/sub01/org";
	}
}
