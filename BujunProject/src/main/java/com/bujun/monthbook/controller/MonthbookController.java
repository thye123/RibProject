package com.bujun.monthbook.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.bujun.bookReport.paging.PageMaker;
import com.bujun.bookReport.paging.SearchCriteria;
import com.bujun.monthbook.service.MonthbookService;
import com.bujun.monthbook.vo.MonthbookVo;

@Controller
public class MonthbookController {
	
	@Autowired
	private MonthbookService service; 
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	/********************************** list **************************************/
	@RequestMapping("/monthbk")
	public String Monthbk(@RequestParam HashMap<String, Object> map, Model model, SearchCriteria cri) {
		
		//게시물 총 갯수
		int totalCount = service.boardListCount(map);
		
		//리스트
		List<MonthbookVo> list = service.getList(map);
		
		//페이징
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);
		
		model.addAttribute("boardList", list);
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("menu", map);
		
		String keyword = cri.encoding((String) map.get("keyword"));
		
		model.addAttribute("search", map.get("searchType"));
		model.addAttribute("key", keyword);
		model.addAttribute("keyVal", map.get("keyword"));		
		
		
		return "user/sub/sub05/monthbk/monthbk";
	}
	

	/********************************** write **************************************/
	@RequestMapping("/monthbk_write")
	public String Monthbk_write(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("rec_code", map.get("rec_code"));
		model.addAttribute("menu", map);
		
		return "user/sub/sub05/monthbk/monthbk_write";
	}
	
	@RequestMapping("/monthbk_writeForm")
	public String Monthbk_writeForm(@RequestParam HashMap<String, Object> map, Model model,
			HttpServletRequest request, MultipartFile file) throws IOException {
		
		
		map.put("rec_content", ((String)map.get("rec_content")).replaceAll("\n", "<br />"));
		
		String filename = uploadFile(file.getOriginalFilename(), file.getBytes());
		map.put("filename", filename);
		map.put("file_size", file.getSize());
		map.put("file_filerealname", file.getOriginalFilename());
		map.put("file_ext", ".");
		
		service.boardWrite(map);
		
		return "redirect:/monthbk?rec_code=CAT0031&m1=05&m2=01&m3=01&page=1&perPageNum=12";
	}


	//파일 이름 변경
	private String uploadFile(String originalFilename, byte[] fileData) throws IOException {
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + originalFilename;
		File target = new File(uploadPath, savedName);
		FileCopyUtils.copy(fileData, target);
			
		return savedName;
	}
	
	
	/********************************** read **************************************/	
	@RequestMapping("/monthbk_read")
	public String Monthbk_read(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("rec_idx", map.get("rec_idx"));		
		model.addAttribute("rec_code", map.get("rec_code"));		
		model.addAttribute("searchType", map.get("searchType"));		
		model.addAttribute("keyword", map.get("keyword"));		
		model.addAttribute("page", map.get("page"));		
		
		model.addAttribute("menu", map);
		
		int rec_idx = Integer.parseInt(map.get("rec_idx").toString());
		map.put("rec_idx", rec_idx);
		
		MonthbookVo vo = service.getMonthBookVo(map);
		
		model.addAttribute("boardRead", vo);
		
		
		return "user/sub/sub05/monthbk/monthbk_read";
	}	
	

	
	
	/********************************** read **************************************/	
	@RequestMapping("/monthbk_update")
	public String Monthbk_update(@RequestParam HashMap<String, Object> map, Model model) {
		
		model.addAttribute("searchType", map.get("searchType"));		
		model.addAttribute("keyword", map.get("keyword"));		
		model.addAttribute("page", map.get("page"));		
		
		model.addAttribute("menu", map);
		
		int rec_idx = Integer.parseInt(map.get("rec_idx").toString());
		map.put("rec_idx", rec_idx);
		
		MonthbookVo vo = service.getMonthBookVo(map);
		
		model.addAttribute("boardRead", vo);
		
		
		return "user/sub/sub05/monthbk/monthbk_update";
	}
	

	
	/********************************** update **************************************/
	@RequestMapping("/monthbk_updateForm")
	public String Monthbk_updateForm(@RequestParam HashMap<String, Object> map, Model model, MultipartFile file,
			HttpServletRequest request) throws IOException {
		
		
		map.put("rec_content", ((String)map.get("rec_content")).replaceAll("\n", "<br />"));
		String filename = uploadFile(file.getOriginalFilename(), file.getBytes());
		map.put("filename", filename);
		map.put("file_size", file.getSize());
		map.put("file_filerealname", file.getOriginalFilename());
		map.put("file_ext", ".");
		
		model.addAttribute("searchType", map.get("searchType"));		
		model.addAttribute("keyword", map.get("keyword"));		
		model.addAttribute("page", map.get("page"));		
		
		service.getUpdate(map);
		
		model.addAttribute("msg", "수정되었습니다.");
		return "user/sub/sub05/monthbk/error_msg";
	}
	
	/********************************** update **************************************/	
	@RequestMapping("/monthbk_delete")
	public String Monthbk_delete(@RequestParam HashMap<String, Object> map, Model model) {
		
		service.getBoardDelete(map);
		
		model.addAttribute("msg", "삭제되었습니다.");
		return "user/sub/sub05/monthbk/error_msg";
	}	
	
}
