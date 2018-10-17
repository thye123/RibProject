package com.bujun.sungjae.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bujun.notice.service.NoticeService;
import com.bujun.notice.vo.Encodings;
import com.bujun.notice.vo.NoticeVo;
import com.bujun.notice.vo.PagingVo;
import com.bujun.notice.vo.SearchVo;

@Controller
public class BestPickController {
	
	@Autowired
	private NoticeService noticeService;
	

	@RequestMapping("/bujunbk")
	public ModelAndView list(@RequestParam HashMap<String, Object> map) {
		String ad_code="";
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		String m3 = String.valueOf(map.get("m3"));
		if(m1.equals("05") && m2.equals("01")&&m3.equals("02") ) {
			ad_code = "CAT0032";
			map.put("ad_code", ad_code);
		}
		Encodings enc= new Encodings();
		String keyword = enc.encoding((String) map.get("keyword"));
		List<NoticeVo> noticeList = noticeService.getList(map) ;
		PagingVo pageVo = (PagingVo) map.get("pagingVo");
		SearchVo searchVo = (SearchVo) map.get("searchVo");
		ModelAndView mv = new ModelAndView();
		int nowpage = Integer.parseInt(String.valueOf(map.get("nowpage")));
		int grpnum  = Integer.parseInt(String.valueOf(map.get("grpnum")));
		int pagecount = Integer.parseInt(String.valueOf(map.get("pagecount")));
		
		mv.addObject("menu", map);
		mv.addObject("ad_code",ad_code);
		mv.addObject("Encoding", keyword);
		mv.addObject("noticeList", noticeList);
		mv.addObject("pageVo", pageVo);
		mv.addObject("nowpage", nowpage);
		mv.addObject("pagecount", pagecount);
		mv.addObject("grpnum", grpnum);
		mv.addObject("searchVo", searchVo);
		mv.addObject("searchType", map.get("searchtype"));
		mv.addObject("keyWord", map.get("keyword"));
		mv.setViewName("user/sub/sub05/bestbook/bklist");
		return mv;
	}
	
	@RequestMapping("/bujunbk/view")
	public ModelAndView Conentet(@RequestParam HashMap<String, Object> map) {
		NoticeVo vo = noticeService.content(map);
		ModelAndView mv = new ModelAndView();
		mv.addObject("menu", map);
		mv.addObject("content", vo);
		mv.addObject("writer",map.get("ad_writer"));
		mv.addObject("ad_code", map.get("ad_code"));
		mv.setViewName("user/sub/sub05/bestbook/bkview");
		
		return mv;
	}
	@RequestMapping("/bujunbk/WriteForm")
	public ModelAndView WriteForm(@RequestParam HashMap<String, Object> map, HttpSession session,
			PagingVo vo) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String login_name = authentication.getName();
		if(login_name.equals("ADMIN")) {
			map.put("brt_memid", session.getAttribute("mem_id"));
					String ad_code="";
					String m1 = String.valueOf(map.get("m1"));
					String m2 = String.valueOf(map.get("m2"));
					String m3 = String.valueOf(map.get("m3"));
					if(m1.equals("05") && m2.equals("01")&&m3.equals("02") ) {
						ad_code = "CAT0032";
						map.put("ad_code", ad_code);
					}
					ModelAndView mv = new ModelAndView();
					mv.addObject("ad_code", ad_code);
					mv.setViewName("user/sub/sub05/bestbook/bkwrite");
					return mv;
		} else {
			ModelAndView mv1 = new ModelAndView();
			mv1.setViewName("user/sub/sub08/login");
			return mv1;
		}
	}
	
	@RequestMapping("/bujunbk/Write")
	public String Write(@RequestParam HashMap<String, Object> map, HttpServletRequest req) {
		int ad_idx = noticeService.getWrite(map);
		String ad_code = (String) map.get("ad_code");
		
		map.put("ad_idx", ad_idx);
		noticeService.addFile(req, map);
		
		return "redirect:/bujunbk?m1=05&m2=01&m3=02&nowpage=1&pagecount=10&grpnum=1";
	}
	
	@RequestMapping("/bujunbk/UpdateForm")
	public ModelAndView UpdateForm(@RequestParam HashMap<String, Object> map) {
		NoticeVo vo = noticeService.content(map);
		ModelAndView mv = new ModelAndView();
		mv.addObject("menu", map);
		mv.addObject("board", vo);
		mv.addObject("ad_idx", map.get("ad_idx"));
		mv.addObject("ad_code", map.get("ad_code"));
		mv.setViewName("user/sub/sub05/bestbook/bkupdate");
		return mv;
	}
	
	@RequestMapping("/bujunbk/Update")
	public String Update(@RequestParam HashMap<String, Object> map, HttpServletRequest req) {
		noticeService.Update(map);
		noticeService.upFile(req, map);
		return "redirect:/bujunbk/view?m1=05&m2=01&m3=02&ad_idx="+ map.get("ad_idx")+"&ad_code="+map.get("ad_code");
	}
	
	@RequestMapping("/bujunbk/delFile")
	public String delFile(@RequestParam HashMap<String, Object> map) {
		System.out.println("파일삭제" + map);
		noticeService.delFile(map);
		return "redirect:/bujunbk/UpdateForm?m1=05&m2=01&m3=02&ad_idx="+ map.get("ad_idx") +"&ad_code="+ map.get("ad_code");
	}
	
}
