package com.bujun.bookReport.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;
import java.util.regex.PatternSyntaxException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bujun.bookReport.paging.PageMaker;
import com.bujun.bookReport.paging.SearchCriteria;
import com.bujun.bookReport.service.RFBoardService;
import com.bujun.bookReport.vo.BkReportVo;

@Controller
public class RFBoardController2 {
	
	@Autowired
	private RFBoardService boardService; 
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	
	/*************************** list ****************************/		
	@RequestMapping("/bkreport02") 
	public String Bkreport02(@RequestParam HashMap<String, Object> map, Model model, SearchCriteria cri) {
		
		//게시물 총 갯수
		int totalCount = boardService.boardListCount(map);

		
		List<BkReportVo> list = boardService.getList(map);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);
		
		System.out.println(totalCount);
		System.out.println(cri.toString());
		System.out.println(pageMaker.toString());
		
		model.addAttribute("menu", map);
		model.addAttribute("boardList", list);
		model.addAttribute("pageMaker", pageMaker);
		
		
		String keyword = cri.encoding((String) map.get("keyword"));
		
		model.addAttribute("search", map.get("searchType"));
		model.addAttribute("key", keyword);
		model.addAttribute("keyVal", map.get("keyword"));
		
		return "user/sub/sub05/bkreport02/bkreport02";
	}
	
	
	/*************************** read ****************************/	
	@RequestMapping("/bkreport02_read") 
	public String Bkreport02_read(@RequestParam HashMap<String, Object> map, Model model) {
		
		
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
				return "user/sub/sub05/bkreport02/bkreport02_read";
			}  
			
			return "user/sub/sub05/bkreport02/pass_chk";

		} else {	
			model.addAttribute("bd_pass_chk", 2);
			return "user/sub/sub05/bkreport02/bkreport02_read";
		}
		
		
	}	
	
	
	/*************************** 비밀번호 입력 ****************************/	
	@RequestMapping("/board_pass_chk2") 
	public String Board_pass_chk2(@RequestParam HashMap<String, Object> map, Model model) {
	
		
		int bd_idx = Integer.parseInt(map.get("bd_idx").toString());
		map.put("bd_idx", bd_idx);
		model.addAttribute("menu", map);			
		
		
		//비밀번호 체크
		int result = boardService.getPassChk(map);
		
		if(result == 0) {	
			model.addAttribute("msg" , "비밀번호가 틀렸습니다");
			return "user/sub/sub05/bkreport02/error_msg";
			
		} else {
			
			/* read */
			if(map.get("flag").equals("1")) {
				return "redirect:/bkreport02_read?bd_catcode=CAT0006&m1=05&m2=08&m3=02&page"+map.get("page")+
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
				
				return "redirect:/bkreport02_update?&m1=05&m2=08&m3=02&page"+map.get("page")+
						"&perPageNum=" + map.get("perPageNum") +"&bd_pass_chk=1";				
			}
			
			/* delete */
			if(map.get("flag").equals("3")) {
				
				boardService.getBoardDelete(map);
				
				model.addAttribute("msg" , "삭제되었습니다.");	
				return "user/sub/sub05/bkreport02/error_msg";
			}
			
			return "" ;
		}

	}	
	
	
	
	/*************************** 쓰기 ****************************/		
	@RequestMapping("/bkreport02_write") 
	public String Bkreport01_write(@RequestParam HashMap<String, Object> map, Model model, HttpServletRequest request) {
		

		model.addAttribute("menu", map);
		model.addAttribute("bd_catcode", map.get("bd_catcode"));
		
		return "user/sub/sub05/bkreport02/bkreport02_write";
	}
	
	
	@RequestMapping("/bkreport02_writeForm") 
	public String Bkreport02_writeForm(@RequestParam HashMap<String, Object> map, Model model, 
			HttpServletRequest request, MultipartFile file) throws IOException {
		
		
		map.put("bd_content", ((String)map.get("bd_content")).replaceAll("\n", "<br />"));
		
		
		if(map.get("bd_open") == null) {
			map.put("bd_open", 1);
		}
		
		if(map.get("bd_gubun").equals("gubun1")) {
			map.put("bd_gubun", "초등 저학년");
		}else if (map.get("bd_gubun").equals("gubun2")) {
			map.put("bd_gubun", "초등 고학년");
		}else if (map.get("bd_gubun").equals("gubun3")) {
			map.put("bd_gubun", "중등");
		}else if (map.get("bd_gubun").equals("gubun4")) {
			map.put("bd_gubun", "고등");
		}else if (map.get("bd_gubun").equals("gubun5")) {
			map.put("bd_gubun", "일반");
		}
		
		map.put("bd_rimemnum", "0");
		
		System.out.println(map.get("bd_open"));
		System.out.println(map.get("bd_gubun"));
		System.out.println("fileorg : " + file.getOriginalFilename());
		System.out.println("file size : " + file.getSize());
		
		
		if(file != null && file.getSize() != 0) {
			String filename = uploadFile(file.getOriginalFilename(), file.getBytes());
			map.put("filename", filename);
			map.put("file_size", file.getSize());
			map.put("file_filerealname", file.getOriginalFilename());
			map.put("file_ext", ".");
		}
		
		
		boardService.setWrite(map);
		

		model.addAttribute("menu", map);
		
		return "redirect:/bkreport02?bd_catcode=CAT0006&m1=05&m2=08&m3=02&page=1&perPageNum=10";
		
	}		
	
	//파일 이름 변경
	private String uploadFile(String originalFilename, byte[] fileData) throws IOException {
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + originalFilename;
		File target = new File(uploadPath, savedName);
		FileCopyUtils.copy(fileData, target);
			
		return savedName;
	}	
	
	
	
	
	
	
	/*************************** 수정 ****************************/
	@RequestMapping("/bkreport02_update") 
	public String Bkreport02_update(@RequestParam HashMap<String, Object> map, Model model) {

		
		BkReportVo vo = new BkReportVo();
		vo = boardService.getBoardRead(map);
		
/*		
 		if (  ((String)map.get("bd_content")).matches(".*<br />.*")   ) {
			System.out.println("있음");
		} else {
			System.out.println("없음");
		} 
			*/
			
			
		/*if (       )    {
			System.out.println("있음123123123");
			//map.put("bd_content", ((String)map.get("bd_content")).replaceAll("<br />", "\n"));
		}*/
		
/*	    try {
	        if (  ((String)map.get("bd_content")).matches("<br />")   )
	          System.out.format("매치되었습니다.%n");
	        else
	          System.out.format("그런 문자열이 없습니다.%n");

	      } catch (PatternSyntaxException e) { // 정규식에 에러가 있다면
	          System.err.println(e);
	          System.exit(1);
	      }*/
	    
		
		model.addAttribute("boardRead", vo);
		
		model.addAttribute("menu", map);
		model.addAttribute("bd_catcode", map.get("bd_catcode"));
		model.addAttribute("page", map.get("page"));
		model.addAttribute("perPageNum", map.get("perPageNum"));
		model.addAttribute("searchType", map.get("searchType"));
		model.addAttribute("keyword", map.get("keyword"));
		model.addAttribute("bd_idx", map.get("bd_idx"));
		model.addAttribute("flag", map.get("flag"));
		

		if(map.get("bd_pass_chk").equals("2")) { //비번입력창으로
			return "user/sub/sub05/bkreport02/pass_chk";
		} else {
			return "user/sub/sub05/bkreport02/bkreport02_update";
		}
		
	}	
	
	
	@RequestMapping("/bkreport02_updateForm") 
	public String Bkreport02_updateForm(@RequestParam HashMap<String, Object> map, Model model, MultipartFile file,
			HttpServletRequest request) throws IOException {

		map.put("bd_content", ((String)map.get("bd_content")).replaceAll("\n", "<br />"));
		
		if(file != null && file.getSize() != 0) {
			String filename = uploadFile(file.getOriginalFilename(), file.getBytes());
			map.put("filename", filename);
			map.put("file_size", file.getSize());
			map.put("file_filerealname", file.getOriginalFilename());
			map.put("file_ext", ".");
		}
		
		boardService.getUpdate(map);
		
		model.addAttribute("msg" , "수정되었습니다.");	
		return "user/sub/sub05/bkreport02/error_msg";	
		
	}	
	
	
	
	/*************************** 삭제 ****************************/
	@RequestMapping("/bkreport02_delete") 
	public String Bkreport02_delete(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		model.addAttribute("bd_catcode", map.get("bd_catcode"));
		model.addAttribute("page", map.get("page"));
		model.addAttribute("perPageNum", map.get("perPageNum"));
		model.addAttribute("searchType", map.get("searchType"));
		model.addAttribute("keyword", map.get("keyword"));
		model.addAttribute("bd_idx", map.get("bd_idx"));
		model.addAttribute("flag", map.get("flag"));
		
		
		if(map.get("bd_pass_chk").equals("2")) { //비번입력창으로
			return "user/sub/sub05/bkreport02/pass_chk";
		} else {
			
			boardService.getBoardDelete(map);
			
			model.addAttribute("msg" , "삭제되었습니다.");	
			return "user/sub/sub05/bkreport02/error_msg";
		}
		
	}		
	
	
}
