package com.bujun.menuContent.controller;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class DtSearchController {
	@RequestMapping("/datalist") 
	public String Datalist(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		return "user/sub/sub03/datalist";
	}
	
	
	@RequestMapping("/origserv01") 
	public String Origserv01(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		return "user/sub/sub03/origserv01";
	}	
	
	
	@RequestMapping("/origserv02") 
	public String Origserv02(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		return "user/sub/sub03/origserv02";
	}	
	
	
	@RequestMapping("/origserv03") 
	public String Origserv03(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		return "user/sub/sub03/origserv03";
	}		
	
	
	@RequestMapping("/origserv04") 
	public String Origserv04(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		return "user/sub/sub03/origserv04";
	}	
	
	
	@RequestMapping("/searchgove") 
	public String Searchgove(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		return "user/sub/sub03/searchgove";
	}	
	
	
}
