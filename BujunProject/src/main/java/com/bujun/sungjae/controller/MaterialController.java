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

import com.bujun.app.service.AppService;
import com.bujun.material.service.MaterialService;
import com.bujun.notice.vo.AppVo;
import com.bujun.notice.vo.Encodings;
import com.bujun.notice.vo.NoticeVo;
import com.bujun.notice.vo.PagingVo;
import com.bujun.notice.vo.SearchVo;

@Controller
public class MaterialController {
	
	@Autowired
	private MaterialService materialService;
	
	@Autowired
	private AppService appService;
	
	/*@RequestMapping("/synref")
	public String synref() {
		return "user/sub/sub02/synref";
		
	}*/
	
	
	@RequestMapping("/wishres")
	public ModelAndView list(@RequestParam HashMap<String, Object> map) {
		String ad_code="";
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		if(m1.equals("03") && m2.equals("06")) {
			ad_code = "CAT0033";
			map.put("ad_code", ad_code);
		}
		Encodings enc= new Encodings();
		String keyword = enc.encoding((String) map.get("keyword"));
		List<NoticeVo> resultList = materialService.getList(map) ;
		PagingVo pageVo = (PagingVo) map.get("pagingVo");
		SearchVo searchVo = (SearchVo) map.get("searchVo");
		ModelAndView mv = new ModelAndView();
		int nowpage = Integer.parseInt(String.valueOf(map.get("nowpage")));
		int grpnum  = Integer.parseInt(String.valueOf(map.get("grpnum")));
		int pagecount = Integer.parseInt(String.valueOf(map.get("pagecount")));
		mv.addObject("menu", map);
		mv.addObject("Encoding", keyword);
		mv.addObject("ad_code",ad_code);
		mv.addObject("resultList", resultList);
		mv.addObject("pageVo", pageVo);
		mv.addObject("nowpage", nowpage);
		mv.addObject("pagecount", pagecount);
		mv.addObject("grpnum", grpnum);
		mv.addObject("searchVo", searchVo);
		mv.addObject("searchType", map.get("searchtype"));
		mv.addObject("keyWord", map.get("keyword"));
		mv.setViewName("user/sub/sub03/appresult/wishres");
		return mv;
	}
	
	@RequestMapping("/wishres/view")
	public ModelAndView Conentet(@RequestParam HashMap<String, Object> map) {
		NoticeVo vo = materialService.content(map);
		ModelAndView mv = new ModelAndView();
		mv.addObject("menu", map);
		mv.addObject("content", vo);
		mv.addObject("writer",map.get("ad_writer"));
		mv.addObject("ad_code", map.get("ad_code"));
		mv.setViewName("user/sub/sub03/appresult/view");
		return mv;
	}
	
	@RequestMapping("/wishres/WriteForm")
	public ModelAndView WriteForm(@RequestParam HashMap<String, Object> map, HttpSession session,
			PagingVo vo) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String login_name = authentication.getName();
		if(login_name.equals("ADMIN")) {
			map.put("brt_memid", session.getAttribute("mem_id"));
			String ad_code="";
			String m1 = String.valueOf(map.get("m1"));
			String m2 = String.valueOf(map.get("m2"));
			if(m1.equals("03") && m2.equals("06")) {
				ad_code = "CAT0033";
				map.put("ad_code", ad_code);
			}
			ModelAndView mv = new ModelAndView();
			mv.addObject("menu", map);
			mv.addObject("ad_code", ad_code);
			mv.setViewName("user/sub/sub03/appresult/write");
			return mv;
		} else {
			ModelAndView mv1 = new ModelAndView();
			mv1.setViewName("user/sub/sub08/login");
			return mv1;
		}
		
	}
	
	@RequestMapping("/wishres/Write")
	public String Write(@RequestParam HashMap<String, Object> map, HttpServletRequest req) {
		int ad_idx = materialService.getWrite(map);
		//String ad_code = (String) map.get("ad_code");
		map.put("ad_idx", ad_idx);
		materialService.addFile(req, map);
		return "redirect:/wishres?m1=03&m2=06&nowpage=1&pagecount=10&grpnum=1";
	}
	
	@RequestMapping("/wishres/UpdateForm")
	public ModelAndView UpdateForm(@RequestParam HashMap<String, Object> map) {
		NoticeVo vo = materialService.content(map);
		ModelAndView mv = new ModelAndView();
		mv.addObject("menu", map);
		mv.addObject("board", vo);
		mv.addObject("ad_idx", map.get("ad_idx"));
		mv.addObject("ad_code", map.get("ad_code"));
		mv.setViewName("user/sub/sub03/appresult/update");
		return mv;
	}
	
	@RequestMapping("/wishres/Update")
	public String Update(@RequestParam HashMap<String, Object> map, HttpServletRequest req) {
		materialService.Update(map);
		materialService.upFile(req, map);
		return "redirect:/wishres/view?m1=03&m2=06&ad_idx="+ map.get("ad_idx")+"&ad_code="+map.get("ad_code");
	}
	
	@RequestMapping("/wishres/delFile")
	public String delFile(@RequestParam HashMap<String, Object> map) {
		//System.out.println("파일삭제" + map);
		//int ad_idx = Integer.parseInt(String.valueOf(map.get("ad_idx")));
		String ad_code="";
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		if(m1.equals("03") && m2.equals("06")) {
			ad_code = "CAT0033";
			map.put("ad_code", ad_code);
		}

		materialService.delFile(map);
		return "redirect:/wishres/UpdateForm?m1=03&m2=06&ad_idx="+ map.get("ad_idx") +"&ad_code="+ map.get("ad_code");
	}
	
	  
	/*비치자료신청*/
	@RequestMapping("/wishbk")
	public ModelAndView List(@RequestParam HashMap<String, Object> map) {
		System.out.println("인덱스 확인" + map);
		List<AppVo> appList = appService.getList(map) ;
		PagingVo pageVo = (PagingVo) map.get("pagingVo");
		SearchVo searchVo = (SearchVo) map.get("searchVo");
		ModelAndView mv = new ModelAndView();
		int nowpage = Integer.parseInt(String.valueOf(map.get("nowpage")));
		int grpnum  = Integer.parseInt(String.valueOf(map.get("grpnum")));
		int pagecount = Integer.parseInt(String.valueOf(map.get("pagecount")));
		
		mv.addObject("menu", map);
		mv.addObject("appList", appList);
		mv.addObject("pageVo", pageVo);
		mv.addObject("nowpage", nowpage);
		mv.addObject("pagecount", pagecount);
		mv.addObject("grpnum", grpnum);
		mv.addObject("searchVo", searchVo);
		mv.addObject("searchType", map.get("searchtype"));
		mv.addObject("keyWord", map.get("keyword"));
		mv.setViewName("user/sub/sub03/app/wishbklist");
		
		return mv;
	}
	
	@RequestMapping("/wishbk/view")
	public ModelAndView conentet(@RequestParam HashMap<String, Object> map) {
		AppVo appVo = appService.content(map);
		ModelAndView mv = new ModelAndView();
		mv.addObject("menu", map);
		mv.addObject("app", appVo);
		mv.addObject("sc_idx", map.get("sc_idx"));
		mv.addObject("write", map.get("sc_memid"));
		mv.setViewName("user/sub/sub03/app/view");
		return mv;
	}
	
	@RequestMapping("/wishbk02/WriteForm")
	public ModelAndView writeform(@RequestParam HashMap<String, Object> map, HttpSession session,
			PagingVo vo) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String login_name = authentication.getName();
		if(!login_name.equals("anonymousUser")) {
			map.put("brt_memid", session.getAttribute("mem_id"));
			ModelAndView mv = new ModelAndView();
			mv.addObject("menu", map);
			mv.addObject("sc_memid", map.get("sc_memid"));
			mv.setViewName("user/sub/sub03/app/app");
			return mv;
		} else {
			ModelAndView mv1 = new ModelAndView();
			mv1.setViewName("user/sub/sub08/login");
			return mv1;
		}
		
		
	}
	
	@RequestMapping("/wishbk02/Write")
	public String write(@RequestParam HashMap<String, Object> map) {
		map.put("sc_email", map.get("sc_email1") + "@" + map.get("sc_email2"));
		appService.write(map);
		return "redirect:/wishbk?m1=03&m2=05&nowpage=1&pagecount=10&grpnum=1";
		
	}
	
	@RequestMapping("/wishbk02/UpdateForm")
	public ModelAndView updateForm(@RequestParam HashMap<String, Object> map) {
		AppVo vo = appService.content(map);
		ModelAndView mv = new ModelAndView();
		mv.addObject("menu", map);
		mv.addObject("update", vo);
		mv.addObject("sc_email", map.get("sc_email"));
		mv.addObject("sc_idx", map.get("sc_idx"));
		mv.setViewName("user/sub/sub03/app/update");
		return mv;
	}
	
	@RequestMapping("/wishbk02/Update")
	public String update(@RequestParam HashMap<String, Object> map, HttpServletRequest req) {
		//System.out.println("뷰로 넘김" + map);
		appService.Update(map);
		return "redirect:/wishbk/view?m1=03&m2=05&sc_idx="+ map.get("sc_idx");
	}
}
