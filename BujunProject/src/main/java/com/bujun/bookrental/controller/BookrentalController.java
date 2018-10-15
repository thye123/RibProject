package com.bujun.bookrental.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bujun.bookReport.paging.PageMaker;
import com.bujun.bookReport.paging.SearchCriteria;
import com.bujun.bookrental.service.BookrentalService;
import com.bujun.bookrental.vo.BookrentalVo;


@Controller
public class BookrentalController {
	
	@Autowired
	private BookrentalService service; 
	
	
	@RequestMapping("/mbinfo")
	public String Mbinfo(@RequestParam HashMap<String, Object> map,
			Model model, HttpSession session, SearchCriteria cri) {
		
		model.addAttribute("menu", map);

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String login_name = authentication.getName();
		
		if(!login_name.equals("anonymousUser")) {
			
			map.put("brt_memid", session.getAttribute("mem_id"));
			List<BookrentalVo> list = service.getBoardList(map);
			
			//게시물 총 갯수
			int totalCount = service.boardListCount(map);
			PageMaker pageMaker = new PageMaker();			
			pageMaker.setCri(cri);
			pageMaker.setTotalCount(totalCount);
			
			model.addAttribute("boardList", list);
			model.addAttribute("pageMaker", pageMaker);
			
			return "user/sub/sub03/mbinfo";	
						
		} else {
			return "redirect:/bjLogin";
		}
		
	}
	
	
	@RequestMapping("/mbinfo01")
	public String Mbinfo01(@RequestParam HashMap<String, Object> map,
			Model model, HttpSession session, SearchCriteria cri) {
		
		model.addAttribute("menu", map);

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String login_name = authentication.getName();
		
		if(!login_name.equals("anonymousUser")) {
			
			map.put("brt_memid", session.getAttribute("mem_id"));

			
			int brt_gubun = Integer.parseInt(map.get("brt_gubun").toString());
			map.put("brt_gubun", brt_gubun);				
		
			List<BookrentalVo> list = service.getBoardList(map);
			
			//게시물 총 갯수
			int totalCount = service.boardListCount(map);
			PageMaker pageMaker = new PageMaker();			
			pageMaker.setCri(cri);
			pageMaker.setTotalCount(totalCount);
			
			model.addAttribute("boardList", list);
			model.addAttribute("pageMaker", pageMaker);
			
			
			return "user/sub/sub03/mbinfo01";	
						
		} else {
			return "redirect:/bjLogin";
		}
		
	}	
	
	
	
	@RequestMapping("/mbinfo02")
	public String Mbinfo02(@RequestParam HashMap<String, Object> map,
			Model model, HttpSession session, SearchCriteria cri) {
		
		model.addAttribute("menu", map);

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String login_name = authentication.getName();
		
		if(!login_name.equals("anonymousUser")) {
			
			map.put("brt_memid", session.getAttribute("mem_id"));

			
			int brt_gubun = Integer.parseInt(map.get("brt_gubun").toString());
			map.put("brt_gubun", brt_gubun);				
		
			List<BookrentalVo> list = service.getBoardList(map);
			
			//게시물 총 갯수
			int totalCount = service.boardListCount(map);
			PageMaker pageMaker = new PageMaker();			
			pageMaker.setCri(cri);
			pageMaker.setTotalCount(totalCount);
			
			model.addAttribute("boardList", list);
			model.addAttribute("pageMaker", pageMaker);
			
			
			return "user/sub/sub03/mbinfo02";	
						
		} else {
			return "redirect:/bjLogin";
		}
		
	}
	
	
	
}
