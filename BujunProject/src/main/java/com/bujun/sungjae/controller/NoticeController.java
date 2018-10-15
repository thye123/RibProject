package com.bujun.sungjae.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

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
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.bujun.notice.service.NoticeService;
import com.bujun.notice.service.impl.CheckFileName;
import com.bujun.notice.vo.NoticeVo;
import com.bujun.notice.vo.PagingVo;
import com.bujun.notice.vo.SearchVo;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("/")
	public String Main() {
		return "user/main/index";
	}
	
	/*@RequestMapping("/test")
	public String Test(@RequestParam HashMap<String, Object> map,
			Model model) {
		
		model.addAttribute("menu", map);
		
		return "user/main/test";
	}*/
	
	@RequestMapping("/notice")
	public ModelAndView list(@RequestParam HashMap<String, Object> map) {
		System.out.println("컨트롤러" + map);
		String ad_code="";
		
		if(Integer.parseInt(String.valueOf(map.get("m1")))==06 && Integer.parseInt(String.valueOf(map.get("m2")))==01  ) {
			ad_code = "CAT0009";
			map.put("ad_code", ad_code);
		}
		List<NoticeVo> noticeList = noticeService.getList(map) ;
		PagingVo pageVo = (PagingVo) map.get("pagingVo");
		SearchVo searchVo = (SearchVo) map.get("searchVo");
		ModelAndView mv = new ModelAndView();
		int nowpage = Integer.parseInt(String.valueOf(map.get("nowpage")));
		int grpnum  = Integer.parseInt(String.valueOf(map.get("grpnum")));
		int pagecount = Integer.parseInt(String.valueOf(map.get("pagecount")));
		
		mv.addObject("ad_code",ad_code);
		mv.addObject("noticeList", noticeList);
		mv.addObject("pageVo", pageVo);
		mv.addObject("nowpage", nowpage);
		mv.addObject("pagecount", pagecount);
		mv.addObject("grpnum", grpnum);
		mv.addObject("searchVo", searchVo);
		mv.addObject("searchType", map.get("searchtype"));
		mv.addObject("keyWord", map.get("keyword"));
		mv.setViewName("user/sub/sub06/notice/notice");
		return mv;
	}
	
	@RequestMapping("/notice/view")
	public ModelAndView Conentet(@RequestParam HashMap<String, Object> map) {
		NoticeVo vo = noticeService.content(map);
		//System.out.println("뷰" + vo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("content", vo);
		mv.addObject("writer",map.get("ad_writer"));
		mv.addObject("ad_code", map.get("ad_code"));
		mv.setViewName("user/sub/sub06/notice/noticeview");
		
		return mv;
	}
	@RequestMapping("/notice/WriteForm")
	public ModelAndView WriteForm(@RequestParam HashMap<String, Object> map) {
		String ad_code="";
		if(Integer.parseInt(String.valueOf(map.get("m1")))==06 && Integer.parseInt(String.valueOf(map.get("m2")))==01  ) {
			ad_code = "CAT0009";
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("ad_code", ad_code);
		mv.setViewName("user/sub/sub06/notice/noticewrite");
		return mv;
	}
	
	@RequestMapping("/notice/Write")
	public String Write(@RequestParam HashMap<String, Object> map, HttpServletRequest req) {
		//System.out.println("651" + map);
		int ad_idx = noticeService.getWrite(map);
		String ad_code = (String) map.get("ad_code");
		map.put("ad_idx", ad_idx);
		noticeService.addFile(req, map);
		
		return "redirect:/notice?m1=06&m2=01&nowpage=1&pagecount=10&grpnum=1";
	}
	
	@RequestMapping("/notice/UpdateForm")
	public ModelAndView UpdateForm(@RequestParam HashMap<String, Object> map) {
		System.out.println("업데이트"+ map);
		NoticeVo vo = noticeService.content(map);
		ModelAndView mv = new ModelAndView();
		mv.addObject("board", vo);
		mv.addObject("ad_idx", map.get("ad_idx"));
		mv.addObject("ad_code", map.get("ad_code"));
		//System.out.println("던짐" + map);
		mv.setViewName("user/sub/sub06/notice/noticeupdate");
		return mv;
	}
	
	@RequestMapping("/notice/Update")
	public String Update(@RequestParam HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("업데이트" + map);
		noticeService.Update(map);
		noticeService.upFile(req, map);
		//System.out.println("뷰로 넘김" + map);
		return "redirect:/notice/view?ad_idx="+ map.get("ad_idx")+"&ad_code="+map.get("ad_code");
	}
	
	@RequestMapping("/notice/delFile")
	public String delFile(@RequestParam HashMap<String, Object> map) {
		System.out.println("파일삭제" + map);
		/*int ad_idx = Integer.parseInt(String.valueOf(map.get("ad_idx")));
		String ad_code = "";
		
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		if(m1.equals("m1") && m2.equals("m2")) {
			ad_code="CAT0009";
			map.put("ad_code", ad_code);
		}*/
		noticeService.delFile(map);
		return "redirect:/notice/UpdateForm?ad_idx="+ map.get("ad_idx") +"&ad_code="+ map.get("ad_code");
	}
	
	// 파일 다운로드
	@RequestMapping(value="/download/{type}/{sfile:.+}", method=RequestMethod.GET)
	public	void downloadFile(HttpServletResponse response, @PathVariable("type") String type,
			@PathVariable("sfile") String sfile) throws IOException {
		String INTERNAl_FILE     = sfile;
		String EXTERNAL_FILE_PATH = "d:\\upload\\" + sfile;
		
		File file = null;
		if(type.equalsIgnoreCase("internal")) {
			ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
			file = new File(classLoader.getResource(INTERNAl_FILE).getFile());
		}else {
			file = new File(EXTERNAL_FILE_PATH);
		}
		if(!file.exists()) {
			String errorMessage = "파일놉";
			System.out.println(errorMessage);
			OutputStream outputStream = response.getOutputStream();
			outputStream.write(errorMessage.getBytes(Charset.forName("UTF-8")));
			outputStream.close();
			return;
		}
		String mimeType = URLConnection.guessContentTypeFromName(file.getName());
		mimeType = "application/octet-stream"; 
		System.out.println("mimeType:" + mimeType);
		
		response.setContentType(mimeType);
		response.setHeader("Content-Dispostition", 
				String.format("inline; filename=\""+file.getName()+ "\""));
		response.setContentLengthLong((int)file.length());
		InputStream inputStream = new BufferedInputStream(new FileInputStream(file));
		FileCopyUtils.copy(inputStream, response.getOutputStream());
	}
	
}
