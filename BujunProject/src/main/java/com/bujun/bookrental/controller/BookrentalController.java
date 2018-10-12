package com.bujun.bookrental.controller;

import java.util.HashMap;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class BookrentalController {
	
	@RequestMapping("/mbinfo")
	public String Test(@RequestParam HashMap<String, Object> map,
			Model model) {
		
		model.addAttribute("menu", map);

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String login_name = authentication.getName();
		
		if(!login_name.equals("anonymousUser")) {
			return "user/sub/sub03/mbinfo";			
		} else {
			return "redirect:/bjLogin";
		}
		
	}
	
}
