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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.bujun.bookReport.paging.PageMaker;
import com.bujun.bookReport.paging.SearchCriteria;
import com.bujun.bookReport.service.RFBoardService;
import com.bujun.bookReport.vo.BkReportVo;

@Controller
public class RFBoardController {
	
	@Autowired
	private RFBoardService boardService; 
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	
	/*************************** list ****************************/		
	@RequestMapping("/bkreport01") 
	public String Bkreport01(@RequestParam HashMap<String, Object> map, Model model, SearchCriteria cri) {
		
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
		
		return "user/sub/sub05/bkreport01/bkreport01";
	}
	
	
/*	@RequestMapping("/bkreport01") 
	public String Bkreport01(@RequestParam HashMap<String, Object> map, Model model, Criteria cri) {
		
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
		
		return "user/sub/sub05/bkreport01/bkreport01";
	}*/
	
	
	
	
	/*************************** 쓰기 ****************************/		
	@RequestMapping("/bkreport01_write") 
	public String Bkreport01_write(@RequestParam HashMap<String, Object> map, Model model, HttpServletRequest request) {
		

		model.addAttribute("menu", map);
		model.addAttribute("bd_catcode", map.get("bd_catcode"));
		
		return "user/sub/sub05/bkreport01/bkreport01_write";
	}
	
	
	@RequestMapping("/bkreport01_writeForm") 
	public String Bkreport01_writeForm(@RequestParam HashMap<String, Object> map, Model model, 
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
		
		
/*		String filename = uploadFile(file.getOriginalFilename(), file.getBytes());
		map.put("filename", filename);
		map.put("file_size", file.getSize());
		map.put("file_filerealname", file.getOriginalFilename());
		map.put("file_ext", ".");*/
		
		
		boardService.setWrite(map);
		

		model.addAttribute("menu", map);
		
		return "redirect:/bkreport01?bd_catcode=CAT0005&m1=05&m2=08&m3=01&page=1&perPageNum=10";
		
	}	
	
	
	//파일 이름 변경
	private String uploadFile(String originalFilename, byte[] fileData) throws IOException {
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + originalFilename;
		File target = new File(uploadPath, savedName);
		FileCopyUtils.copy(fileData, target);
			
		return savedName;
	}
	
	
	

	/*************************** read ****************************/	
	@RequestMapping("/bkreport01_read") 
	public String Bkreport01_read(@RequestParam HashMap<String, Object> map, Model model) {
		
		
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
				return "user/sub/sub05/bkreport01/bkreport01_read";
			}  
			
			return "user/sub/sub05/bkreport01/pass_chk";

		} else {	
			model.addAttribute("bd_pass_chk", 2);
			return "user/sub/sub05/bkreport01/bkreport01_read";
		}
		
		
	}	
	
	
	/*************************** 파일다운로드 부분 ****************************/	
	@RequestMapping(value="/download/{type}/{file_filename:.+}", method=RequestMethod.GET)
	public void downloadFile(HttpServletResponse response, @PathVariable("type") String type,
			@PathVariable("file_filename") String sfile) throws IOException {
		
		//{sfile:.+} : 확장자에 .문자가 한개(+)이상 있을 때
		//{sfile} : .jpg와 같이 .포함 글자는 무시된다
		
		System.out.println(sfile);
		
		
		
		String INTERNAL_FILE = sfile;
		String EXTERNAL_FILE_PATH = "d:\\upload\\" + sfile;
		
		File file = null;
		if(type.equalsIgnoreCase("internal")) {
			ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
			file = new File(ClassLoader.getSystemResource(INTERNAL_FILE).getFile());
		} else {
			file = new File(EXTERNAL_FILE_PATH);
		}
		
		
		if(!file.exists()) {
			String errorMessage = "파일 찾을 수 없음";
			System.out.println(errorMessage);
			OutputStream outputStream = response.getOutputStream();
			outputStream.write(errorMessage.getBytes(Charset.forName("UTF-8")));
			outputStream.close();
			return;
		}
		
		String mimeType = URLConnection.guessContentTypeFromName(file.getName());
		
		/*mimeType = "application/octet-stream";*/
		mimeType = "application/unknown";
		
		System.out.println("mimeType: " + mimeType);
		response.setContentType(mimeType);
		response.setHeader("Content-Dispostition", 
				String.format("inline; filename=\"" + file.getName() + "\"" ));
		
		response.setContentLength((int)file.length());
		InputStream inputStream = new BufferedInputStream(new FileInputStream(file));
		
		//Copy bytes from source to destination
		//close both streams
		FileCopyUtils.copy(inputStream, response.getOutputStream()); // <- download
			
	}
	
	
	/*************************** 비밀번호 입력 ****************************/	
	@RequestMapping("/board_pass_chk") 
	public String Board_pass_chk(@RequestParam HashMap<String, Object> map, Model model) {
	
		
		int bd_idx = Integer.parseInt(map.get("bd_idx").toString());
		map.put("bd_idx", bd_idx);
		model.addAttribute("menu", map);			
		
		
		//비밀번호 체크
		int result = boardService.getPassChk(map);
		
		if(result == 0) {	
			model.addAttribute("msg" , "비밀번호가 틀렸습니다");
			return "user/sub/sub05/bkreport01/error_msg";
			
		} else {
			
			/* read */
			if(map.get("flag").equals("1")) {
				return "redirect:/bkreport01_read?bd_catcode=CAT0005&m1=05&m2=08&m3=01&page"+map.get("page")+
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
				
				return "redirect:/bkreport01_update?m1=05&m2=08&m3=01&page"+map.get("page")+
						"&perPageNum=" + map.get("perPageNum") +"&bd_pass_chk=1";				
			}
			
			/* delete */
			if(map.get("flag").equals("3")) {
				
				boardService.getBoardDelete(map);
				
				model.addAttribute("msg" , "삭제되었습니다.");	
				return "user/sub/sub05/bkreport01/error_msg";
			}
			
			return "" ;
		}
		
		

	}		
	
	
	/*************************** 수정 ****************************/
	@RequestMapping("/bkreport01_update") 
	public String Bkreport01_update(@RequestParam HashMap<String, Object> map, Model model) {

		
		BkReportVo vo = new BkReportVo();
		vo = boardService.getBoardRead(map);
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
			return "user/sub/sub05/bkreport01/pass_chk";
		} else {
			return "user/sub/sub05/bkreport01/bkreport01_update";
		}
		
	}	
	
	
	@RequestMapping("/bkreport01_updateForm") 
	public String Bkreport01_updateForm(@RequestParam HashMap<String, Object> map, Model model,  MultipartFile file,
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
		return "user/sub/sub05/bkreport01/error_msg";	
		
	}	
	
	
	/*************************** 삭제 ****************************/
	@RequestMapping("/bkreport01_delete") 
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
			return "user/sub/sub05/bkreport01/pass_chk";
		} else {
			
			boardService.getBoardDelete(map);
			
			model.addAttribute("msg" , "삭제되었습니다.");	
			return "user/sub/sub05/bkreport01/error_msg";
		}
		
	}	
	
	
	 

	
	@RequestMapping("/fileDelete")
	@ResponseBody
	public void FileDelete(@RequestParam HashMap<String, Object> map) {
		
		boardService.getBoardFileDelete(map);
		/*System.out.println("bd_catcode : " + map.get("bd_catcode"));
		System.out.println("bd_idx : " + map.get("bd_idx"));*/
		
	}
	
	
	
	
	
	
}
