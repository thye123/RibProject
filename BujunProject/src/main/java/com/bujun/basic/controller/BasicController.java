package com.bujun.basic.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BasicController {

	@RequestMapping("/")
	public String Main() {
		return "user/main/index";
	}

	
	@RequestMapping("/test")
	public String Test(@RequestParam HashMap<String, Object> map,
			Model model) {
		
		model.addAttribute("menu", map);
		
		return "user/main/test";
	}
	
	
	
	
	//security test ----> 나중에 지울거임
	@RequestMapping("/sample/all")
	public String All() {
		return "sample/all";
	}

	@RequestMapping("/sample/member")
	public String Member() {
		return "sample/member";
	}	
	
	@RequestMapping("/sample/admin")
	public String Admin() {
		return "sample/admin";
	}		
	
	@RequestMapping("/accessError")
	public String AccessError() {
		return "sample/accessError";
	}			
	

	@RequestMapping("/customLogin")
	public String customLogin() {
		return "sample/customLogin";
	}		

	
	@RequestMapping("/customLogout")
	public String customLogout() {
		return "sample/customLogout";
	}	
	

	
	

	
	

		
}
