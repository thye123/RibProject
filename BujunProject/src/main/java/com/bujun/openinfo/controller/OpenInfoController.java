package com.bujun.openinfo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OpenInfoController {
	
	@RequestMapping("/info01")
	public String openInfoHome() {
		return "user/sub/sub07/OpenInfoMain";
	}
}
