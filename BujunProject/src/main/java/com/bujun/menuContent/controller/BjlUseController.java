package com.bujun.menuContent.controller;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BjlUseController {
	@RequestMapping("/house") 
	public String House(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		return "user/sub/sub02/house";
	}
	
	
	@RequestMapping("/synref") 
	public String Synref(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		return "user/sub/sub02/synref";
	}	
	
	
	@RequestMapping("/childref") 
	public String Childref(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		return "user/sub/sub02/childref";
	}	
	
	
	@RequestMapping("/digitalref") 
	public String Digitalref(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		return "user/sub/sub02/digitalref";
	}		
	
	
	@RequestMapping("/siref") 
	public String Siref(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		return "user/sub/sub02/siref";
	}		
	
	
	@RequestMapping("/lending") 
	public String Lending(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		return "user/sub/sub02/lending";
	}		
	
	@RequestMapping("/inview") 
	public String Inview(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		return "user/sub/sub02/inview";
	}			

	
	@RequestMapping("/finref01") 
	public String Finref01(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		return "user/sub/sub02/finref01";
	}		

	@RequestMapping("/finref02") 
	public String Finref02(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		return "user/sub/sub02/finref02";
	}	
	
	@RequestMapping("/finref03") 
	public String Finref03(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		return "user/sub/sub02/finref03";
	}		
	
	
	@RequestMapping("/facility") 
	public String Facility(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		return "user/sub/sub02/facility";
	}		
	
	@RequestMapping("/facility02") 
	public String Facility02(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		return "user/sub/sub02/facility02";
	}			
	
	
	@RequestMapping("/facility03") 
	public String Facility03(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		return "user/sub/sub02/facility03";
	}		
	
	@RequestMapping("/facility04") 
	public String Facility04(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		return "user/sub/sub02/facility04";
	}	
	
	
	
	
}


