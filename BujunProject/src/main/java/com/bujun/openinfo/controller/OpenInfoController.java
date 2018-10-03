package com.bujun.openinfo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OpenInfoController {
	
	@RequestMapping("/info01")
	public String openInfoIntro() {
		return "user/sub/sub07/OpenInfoIntro";
	}
	
	@RequestMapping("/info02")
	public String openInfoList() {
		return "user/sub/sub07/OpenInfoList";
	}
}
