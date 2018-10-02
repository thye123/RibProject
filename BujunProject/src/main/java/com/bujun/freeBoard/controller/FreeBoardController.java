package com.bujun.freeBoard.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bujun.bookReport.paging.PageMaker;
import com.bujun.bookReport.paging.SearchCriteria;
import com.bujun.bookReport.service.RFBoardService;
import com.bujun.bookReport.vo.BkReportVo;




@Controller
public class FreeBoardController {
	
	@Autowired
	private RFBoardService boardService; 
	
	
	/*************************** list ****************************/
	@RequestMapping("/freebrd") 
	public String Freebrd(@RequestParam HashMap<String, Object> map, Model model, SearchCriteria cri) {
		
		
		//게시물 총 갯수
		int totalCount = boardService.boardListCount(map);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);
		
		
		List<BkReportVo> list = boardService.freeBoardList(map);
		
		
		model.addAttribute("menu", map);
		model.addAttribute("boardList", list);
		model.addAttribute("pageMaker", pageMaker);
		String keyword = cri.encoding((String) map.get("keyword")); //인코딩
		model.addAttribute("search", map.get("searchType"));
		model.addAttribute("key", keyword);
		model.addAttribute("keyVal", map.get("keyword"));		
		
		
		return "user/sub/sub06/freebrd/freebrd";
	}	
	
	
	
	
	/*************************** read ****************************/
	@RequestMapping("/freebrd_read") 
	public String Freebrd_read(@RequestParam HashMap<String, Object> map, Model model) {
		
		
		BkReportVo vo = new BkReportVo();
		vo = boardService.getBoardRead(map);
		
		System.out.println(vo.getBd_open());

		model.addAttribute("menu", map);
		model.addAttribute("bd_catcode", map.get("bd_catcode"));
		model.addAttribute("page", map.get("page"));
		model.addAttribute("perPageNum", map.get("perPageNum"));
		model.addAttribute("searchType", map.get("searchType"));
		model.addAttribute("keyword", map.get("keyword"));
		model.addAttribute("bd_idx", map.get("bd_idx"));
		model.addAttribute("flag", map.get("flag"));
		model.addAttribute("boardRead", vo);
		
		int bd_pass_chk = 0;
		
		if(map.get("bd_pass_chk") != null) {
			bd_pass_chk = Integer.parseInt(map.get("bd_pass_chk").toString());			
		}
		
		
		if(vo.getBd_open() == 2) {
			model.addAttribute("msg", "비공개 게시물입니다.");

			if(vo.getBd_open() == 2 && bd_pass_chk == 1 ) {
				model.addAttribute("bd_pass_chk", 1);
				return "user/sub/sub06/freebrd/freebrd_read";
			}  
			
			return "user/sub/sub06/freebrd/pass_chk";

		} else {	
			model.addAttribute("bd_pass_chk", 2);
			return "user/sub/sub06/freebrd/freebrd_read";
		}
		
		
	}	
	
	
	
	/*************************** 비밀번호 입력 ****************************/	
	@RequestMapping("/free_pass_chk") 
	public String Free_pass_chk(@RequestParam HashMap<String, Object> map, Model model) {
	
		
		int bd_idx = Integer.parseInt(map.get("bd_idx").toString());
		map.put("bd_idx", bd_idx);
		model.addAttribute("menu", map);			
		
		
		//비밀번호 체크
		int result = boardService.getPassChk(map);
		
		if(result == 0) {	
			model.addAttribute("msg" , "비밀번호가 틀렸습니다");
			return "user/sub/sub06/freebrd/error_msg";
			
		} else {
			
			/* read */
			if(map.get("flag").equals("1")) {
				return "redirect:/freebrd_read?bd_catcode=CAT0007&m1=06&m2=03&page"+map.get("page")+
						"&perPageNum=" + map.get("perPageNum") + "&searchType=" + map.get("searchType") + 
						"&keyword=" + map.get("keyword") + "&bd_idx=" + map.get("bd_idx")+"&bd_pass_chk=1";
			} 
			
					
			/* update */
			if(map.get("flag").equals("2")) {
				
				model.addAttribute("bd_catcode", map.get("bd_catcode"));
				model.addAttribute("bd_idx", map.get("bd_idx"));
				
				BkReportVo vo = new BkReportVo();
				vo = boardService.getBoardRead(map);
				model.addAttribute("boardRead", vo);
				
				return "redirect:/freebrd_update?bd_catcode=CAT0007&m1=06&m2=03&page"+map.get("page")+
						"&perPageNum=" + map.get("perPageNum") + "&bd_idx=" + map.get("bd_idx")+"&bd_pass_chk=1";				
			}
			
			/* delete */
			if(map.get("flag").equals("3")) {
				
				boardService.getBoardDelete(map);
				
				model.addAttribute("msg" , "삭제되었습니다.");	
				return "user/sub/sub06/freebrd/error_msg";
			}
			
			return "" ;
		}
	}			
	
	
	
	/*************************** write ****************************/	
	@RequestMapping("/freebrd_write") 
	public String Freebrd_write(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		model.addAttribute("bd_catcode", map.get("bd_catcode"));
		model.addAttribute("bd_grp", map.get("bd_grp"));
		model.addAttribute("bd_step", map.get("bd_step"));

		
		return "user/sub/sub06/freebrd/freebrd_write";
	}	
	
	
	@RequestMapping("/freebrd_writeForm") 
	public String Freebrd_writeForm(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		
		map.put("bd_content", ((String)map.get("bd_content")).replaceAll("\n", "<br />"));
		
		if(map.get("bd_open") == null) {
			map.put("bd_open", 1);
		}
		
		boardService.freeBoardWrite(map);
		
		return "redirect:/freebrd?bd_catcode=CAT0007&m1=06&m2=03&page=1&perPageNum=10";
	}		
	
	
	
	
	/*************************** update ****************************/		
	@RequestMapping("/freebrd_update") 
	public String Freebrd_update(@RequestParam HashMap<String, Object> map, Model model) {
		
		BkReportVo vo = new BkReportVo();
		vo = boardService.getBoardRead(map);
		
		model.addAttribute("boardRead", vo);
		model.addAttribute("bd_catcode", map.get("bd_catcode"));
		model.addAttribute("page", map.get("page"));
		model.addAttribute("perPageNum", map.get("perPageNum"));
		model.addAttribute("searchType", map.get("searchType"));
		model.addAttribute("keyword", map.get("keyword"));
		model.addAttribute("bd_idx", map.get("bd_idx"));
		model.addAttribute("flag", map.get("flag"));		
		model.addAttribute("menu", map);
		
		
		if(map.get("bd_pass_chk").equals("2")) { //비번입력창으로
			return "user/sub/sub06/freebrd/pass_chk";
		} else {
			return "user/sub/sub06/freebrd/freebrd_update";
		}		
		
	}	
	
	
	
	@RequestMapping("/freebrd_updateForm") 
	public String Freebrd_updateForm(@RequestParam HashMap<String, Object> map, Model model) {

		map.put("bd_content", ((String)map.get("bd_content")).replaceAll("\n", "<br />"));
		
		boardService.freeBoardUpdate(map);
		
		model.addAttribute("msg" , "수정되었습니다.");	
		return "user/sub/sub06/freebrd/error_msg";	
		
	}		
	
	
	
	/*************************** 삭제 ****************************/
	@RequestMapping("/freebrd_delete") 
	public String Bkreport01_delete(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		model.addAttribute("bd_catcode", map.get("bd_catcode"));
		model.addAttribute("page", map.get("page"));
		model.addAttribute("perPageNum", map.get("perPageNum"));
		model.addAttribute("searchType", map.get("searchType"));
		model.addAttribute("keyword", map.get("keyword"));
		model.addAttribute("bd_idx", map.get("bd_idx"));
		model.addAttribute("flag", map.get("flag"));
		
		
		if(map.get("bd_pass_chk").equals("2")) { //비번입력창으로
			return "user/sub/sub06/freebrd/pass_chk";
		} else {
			
			boardService.getBoardDelete(map);
			
			model.addAttribute("msg" , "삭제되었습니다.");	
			return "user/sub/sub06/freebrd/error_msg";
		}
		
	}	
	
	
	
	
}
