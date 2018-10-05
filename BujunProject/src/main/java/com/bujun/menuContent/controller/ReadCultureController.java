package com.bujun.menuContent.controller;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ReadCultureController {
	
	@RequestMapping("/bookclass") 
	public String Bookclass(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		return "user/sub/sub05/bookclass";
	}
		
	@RequestMapping("/obook01") 
	public String Obook01(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		return "user/sub/sub05/obook01";
	}
	
	@RequestMapping("/obook02") 
	public String Obook02(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		return "user/sub/sub05/obook02";
	}
	
	@RequestMapping("/club01") 
	public String Club01(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		return "user/sub/sub05/club01";
	}
	
	@RequestMapping("/club02") 
	public String Club02(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		return "user/sub/sub05/club02";
	}	
	
	@RequestMapping("/club03") 
	public String Club03(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		return "user/sub/sub05/club03";
	}		
	
	@RequestMapping("/club04") 
	public String Club04(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		return "user/sub/sub05/club04";
	}		
		
	
	@RequestMapping("/bkcare")
	public String bibliotherapy(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		return "user/sub/sub05/bibliotherapy";
	}
	
	@RequestMapping("/caresite")
	public String bibliotherapySite(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		return "user/sub/sub05/bibliotherapySite";
	}
	
	@RequestMapping("/libweek")
	public String libweek(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		return "user/sub/sub05/libweek";
	}
	
	@RequestMapping("/moreading")
	public String readingMonth(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		return "user/sub/sub05/readingmonth";		
	}
}
