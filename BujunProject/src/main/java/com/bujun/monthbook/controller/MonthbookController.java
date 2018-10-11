package com.bujun.monthbook.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bujun.bookReport.paging.SearchCriteria;
import com.bujun.monthbook.service.MonthbookService;

@Controller
public class MonthbookController {
	
	@Autowired
	private MonthbookService service; 
	
	@RequestMapping("/monthbk")
	public String Test(@RequestParam HashMap<String, Object> map, Model model, SearchCriteria cri) {
		
		//게시물 총 갯수
		int totalCount = service.boardListCount(map);
		
		model.addAttribute("menu", map);
		
		return "user/sub/sub05/monthbk/monthbk";
	}
	
}
