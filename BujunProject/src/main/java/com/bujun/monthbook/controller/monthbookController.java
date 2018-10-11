package com.bujun.monthbook.controller;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class monthbookController {
	
	@RequestMapping("/monthbk")
	public String Test(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		
		return "user/sub/sub05/monthbk/monthbk";
	}
	
}
