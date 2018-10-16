package com.bujun.sungjae.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bujun.bank.service.BankService;
import com.bujun.notice.vo.NoticeVo;
import com.bujun.notice.vo.PagingVo;
import com.bujun.notice.vo.SearchVo;

@Controller
public class FinrefController {
	
	@Autowired
	private BankService bankService;
	
	/*@RequestMapping("/synref")
	public String synref() {
		return "user/sub/sub02/synref";
		
	}*/
	/*@RequestMapping("/finref01")
	public String finref01() {
		return "user/sub/sub02/finref01";
		
	}*/
	
	//04
	@RequestMapping("/finref04")
	public ModelAndView list(@RequestParam HashMap<String, Object> map) {
		String ad_code="CAT0011";
		map.put("ad_code", ad_code);
		List<NoticeVo> bankList = bankService.getList(map) ;
		PagingVo pageVo = (PagingVo) map.get("pagingVo");
		SearchVo searchVo = (SearchVo) map.get("searchVo");
		ModelAndView mv = new ModelAndView();
		int nowpage = Integer.parseInt(String.valueOf(map.get("nowpage")));
		int grpnum  = Integer.parseInt(String.valueOf(map.get("grpnum")));
		int pagecount = Integer.parseInt(String.valueOf(map.get("pagecount")));

		mv.addObject("menu", map);
		mv.addObject("ad_code",ad_code);
		mv.addObject("bankBoardList", bankList);
		mv.addObject("pageVo", pageVo);
		mv.addObject("nowpage", nowpage);
		mv.addObject("pagecount", pagecount);
		mv.addObject("grpnum", grpnum);
		mv.addObject("searchVo", searchVo);
		mv.addObject("searchType", map.get("searchtype"));
		mv.addObject("keyWord", map.get("keyword"));
		mv.setViewName("user/sub/sub02/finref04");
		return mv;
	}
	
	@RequestMapping("/finref04/view")
	public ModelAndView Conentet(@RequestParam HashMap<String, Object> map) {
		NoticeVo vo = bankService.content(map);
		ModelAndView mv = new ModelAndView();
		mv.addObject("menu", map);
		mv.addObject("content", vo);
		mv.addObject("writer",map.get("ad_writer"));
		mv.addObject("ad_code", map.get("ad_code"));
		mv.setViewName("user/sub/sub02/04/view");
		return mv;
	}
	@RequestMapping("/finref04/WriteForm")
	public ModelAndView WriteForm(@RequestParam HashMap<String, Object> map) {
		String ad_code="CAT0011";
		map.put("ad_code", ad_code);
		ModelAndView mv = new ModelAndView();
		mv.addObject("menu", map);
		mv.addObject("ad_code", ad_code);
		mv.setViewName("user/sub/sub02/04/write");
		return mv;
	}
	
	@RequestMapping("/finref04/Write")
	public String Write(@RequestParam HashMap<String, Object> map, HttpServletRequest req) {
		//System.out.println("651" + map);
		int ad_idx = bankService.getWrite(map);
		String ad_code = (String) map.get("ad_code");
		map.put("ad_idx", ad_idx);
		bankService.addFile(req, map);
		
		return "redirect:/finref04?m1=02&m2=02&m3=05&nowpage=1&pagecount=10&grpnum=1";
	}
	
	@RequestMapping("/finref04/UpdateForm")
	public ModelAndView UpdateForm(@RequestParam HashMap<String, Object> map) {
		//System.out.println("업데이트"+ map);
		NoticeVo vo = bankService.content(map);
		ModelAndView mv = new ModelAndView();
		mv.addObject("menu", map);
		mv.addObject("board", vo);
		mv.addObject("ad_idx", map.get("ad_idx"));
		mv.addObject("ad_code", map.get("ad_code"));
		mv.setViewName("user/sub/sub02/04/update");
		return mv;
	}
	
	@RequestMapping("/finref04/Update")
	public String Update(@RequestParam HashMap<String, Object> map, HttpServletRequest req) {
		//System.out.println("업데이트" + map);
		bankService.Update(map);
		bankService.upFile(req, map);
		//System.out.println("뷰로 넘김" + map);
		return "redirect:/finref04/view?m1=02&m2=02&m3=05&ad_idx="+ map.get("ad_idx")+"&ad_code="+map.get("ad_code");
	}
	
	@RequestMapping("/finref04/delFile")
	public String delFile(@RequestParam HashMap<String, Object> map) {
		//System.out.println("파일삭제" + map);
		int ad_idx = Integer.parseInt(String.valueOf(map.get("ad_idx")));
		String ad_code = "CAT0011";
		map.put("ad_code", ad_code);

		bankService.delFile(map);
		return "redirect:/finref04/UpdateForm?m1=02&m2=02&m3=05&ad_idx="+ map.get("ad_idx") +"&ad_code="+ map.get("ad_code");
	}
	
	//05
		@RequestMapping("/finref05")
		public ModelAndView list2(@RequestParam HashMap<String, Object> map) {
			String ad_code="CAT0012";
			map.put("ad_code", ad_code);
		
			List<NoticeVo> bankList = bankService.getList(map) ;
			PagingVo pageVo = (PagingVo) map.get("pagingVo");
			SearchVo searchVo = (SearchVo) map.get("searchVo");
			ModelAndView mv = new ModelAndView();
			int nowpage = Integer.parseInt(String.valueOf(map.get("nowpage")));
			int grpnum  = Integer.parseInt(String.valueOf(map.get("grpnum")));
			int pagecount = Integer.parseInt(String.valueOf(map.get("pagecount")));
			mv.addObject("menu", map);
			mv.addObject("ad_code",ad_code);
			mv.addObject("bankBoardList", bankList);
			mv.addObject("pageVo", pageVo);
			mv.addObject("nowpage", nowpage);
			mv.addObject("pagecount", pagecount);
			mv.addObject("grpnum", grpnum);
			mv.addObject("searchVo", searchVo);
			mv.addObject("searchType", map.get("searchtype"));
			mv.addObject("keyWord", map.get("keyword"));
			mv.setViewName("user/sub/sub02/finref05");
			return mv;
		}
		
		@RequestMapping("/finref05/view")
		public ModelAndView Conentet2(@RequestParam HashMap<String, Object> map) {
			NoticeVo vo = bankService.content(map);
			ModelAndView mv = new ModelAndView();
			mv.addObject("menu", map);
			mv.addObject("content", vo);
			mv.addObject("writer",map.get("ad_writer"));
			mv.addObject("ad_code", map.get("ad_code"));
			mv.setViewName("user/sub/sub02/05/view");
			return mv;
		}
		@RequestMapping("/finref05/WriteForm")
		public ModelAndView WriteForm2(@RequestParam HashMap<String, Object> map) {
			String ad_code="CAT0012";
			map.put("ad_code", ad_code);
			ModelAndView mv = new ModelAndView();
			mv.addObject("menu", map);
			mv.addObject("ad_code", ad_code);
			mv.setViewName("user/sub/sub02/05/write");
			return mv;
		}
		
		@RequestMapping("/finref05/Write")
		public String Write2(@RequestParam HashMap<String, Object> map, HttpServletRequest req) {
			int ad_idx = bankService.getWrite(map);
			String ad_code = (String) map.get("ad_code");
			map.put("ad_idx", ad_idx);
			bankService.addFile(req, map);
			
			return "redirect:/finref05?m1=02&m2=02&m3=05&nowpage=1&pagecount=10&grpnum=1";
		}
		
		@RequestMapping("/finref05/UpdateForm")
		public ModelAndView UpdateForm2(@RequestParam HashMap<String, Object> map) {
			NoticeVo vo = bankService.content(map);
			ModelAndView mv = new ModelAndView();
			mv.addObject("menu", map);
			mv.addObject("board", vo);
			mv.addObject("ad_idx", map.get("ad_idx"));
			mv.addObject("ad_code", map.get("ad_code"));
			mv.setViewName("user/sub/sub02/05/update");
			return mv;
		}
		
		@RequestMapping("/finref05/Update")
		public String Update2(@RequestParam HashMap<String, Object> map, HttpServletRequest req) {
			bankService.Update(map);
			bankService.upFile(req, map);
			//System.out.println("뷰로 넘김" + map);
			return "redirect:/finref05/view?m1=02&m2=02&m3=05&ad_idx="+ map.get("ad_idx")+"&ad_code="+map.get("ad_code");
		}
		
		@RequestMapping("/finref05/delFile")
		public String delFile2(@RequestParam HashMap<String, Object> map) {
			//System.out.println("파일삭제" + map);
			int ad_idx = Integer.parseInt(String.valueOf(map.get("ad_idx")));
			String ad_code = "CAT0012";
			map.put("ad_code", ad_code);
			bankService.delFile(map);
			return "redirect:/finref05/UpdateForm?m1=02&m2=02&m3=05&ad_idx="+ map.get("ad_idx") +"&ad_code="+ map.get("ad_code");
		}
		
		//06
		@RequestMapping("/finref06")
		public ModelAndView list3(@RequestParam HashMap<String, Object> map) {
			String ad_code="CAT0013";
			map.put("ad_code", ad_code);
			List<NoticeVo> bankList = bankService.getList(map) ;
			PagingVo pageVo = (PagingVo) map.get("pagingVo");
			SearchVo searchVo = (SearchVo) map.get("searchVo");
			ModelAndView mv = new ModelAndView();
			int nowpage = Integer.parseInt(String.valueOf(map.get("nowpage")));
			int grpnum  = Integer.parseInt(String.valueOf(map.get("grpnum")));
			int pagecount = Integer.parseInt(String.valueOf(map.get("pagecount")));
			mv.addObject("menu", map);
			mv.addObject("menu", map);
			mv.addObject("ad_code",ad_code);
			mv.addObject("bankBoardList", bankList);
			mv.addObject("pageVo", pageVo);
			mv.addObject("nowpage", nowpage);
			mv.addObject("pagecount", pagecount);
			mv.addObject("grpnum", grpnum);
			mv.addObject("searchVo", searchVo);
			mv.addObject("searchType", map.get("searchtype"));
			mv.addObject("keyWord", map.get("keyword"));
			mv.setViewName("user/sub/sub02/finref06");
			return mv;
		}
			
		@RequestMapping("/finref06/view")
		public ModelAndView Conentet3(@RequestParam HashMap<String, Object> map) {
			NoticeVo vo = bankService.content(map);
			ModelAndView mv = new ModelAndView();
			mv.addObject("menu", map);
			mv.addObject("content", vo);
			mv.addObject("writer",map.get("ad_writer"));
			mv.addObject("ad_code", map.get("ad_code"));
			mv.setViewName("user/sub/sub02/06/view");
			return mv;
		}
		@RequestMapping("/finref06/WriteForm")
		public ModelAndView WriteForm3(@RequestParam HashMap<String, Object> map) {
			String ad_code="CAT0013";
			map.put("ad_code", ad_code);
			ModelAndView mv = new ModelAndView();
			mv.addObject("menu", map);
			mv.addObject("ad_code", ad_code);
			mv.setViewName("user/sub/sub02/06/write");
			return mv;
		}
			
		@RequestMapping("/finref06/Write")
		public String Write3(@RequestParam HashMap<String, Object> map, HttpServletRequest req) {
			int ad_idx = bankService.getWrite(map);
			String ad_code = (String) map.get("ad_code");
			map.put("ad_idx", ad_idx);
			bankService.addFile(req, map);
			
			return "redirect:/finref06?m1=02&m2=02&m3=05&nowpage=1&pagecount=10&grpnum=1";
		}
				
		@RequestMapping("/finref06/UpdateForm")
		public ModelAndView UpdateForm3(@RequestParam HashMap<String, Object> map) {
			NoticeVo vo = bankService.content(map);
			ModelAndView mv = new ModelAndView();
			mv.addObject("menu", map);
			mv.addObject("board", vo);
			mv.addObject("ad_idx", map.get("ad_idx"));
			mv.addObject("ad_code", map.get("ad_code"));
			mv.setViewName("user/sub/sub02/06/update");
			return mv;
		}
				
		@RequestMapping("/finref06/Update")
		public String Update3(@RequestParam HashMap<String, Object> map, HttpServletRequest req) {
			bankService.Update(map);
			bankService.upFile(req, map);
			return "redirect:/finref06/view?m1=02&m2=02&m3=05&ad_idx="+ map.get("ad_idx")+"&ad_code="+map.get("ad_code");
		}
			
		@RequestMapping("/finref06/delFile")
		public String delFile3(@RequestParam HashMap<String, Object> map) {
			int ad_idx = Integer.parseInt(String.valueOf(map.get("ad_idx")));
			String ad_code = "CAT0013";
			map.put("ad_code", ad_code);
			bankService.delFile(map);
			return "redirect:/finref06/UpdateForm?m1=02&m2=02&m3=05&ad_idx="+ map.get("ad_idx") +"&ad_code="+ map.get("ad_code");
		}	
		
		//07
		@RequestMapping("/finref07")
		public ModelAndView list4(@RequestParam HashMap<String, Object> map) {
			String ad_code="CAT0014";
			map.put("ad_code", ad_code);
			List<NoticeVo> bankList = bankService.getList(map) ;
			PagingVo pageVo = (PagingVo) map.get("pagingVo");
			SearchVo searchVo = (SearchVo) map.get("searchVo");
			ModelAndView mv = new ModelAndView();
			int nowpage = Integer.parseInt(String.valueOf(map.get("nowpage")));
			int grpnum  = Integer.parseInt(String.valueOf(map.get("grpnum")));
			int pagecount = Integer.parseInt(String.valueOf(map.get("pagecount")));
			mv.addObject("menu", map);
			mv.addObject("menu", map);
			mv.addObject("ad_code",ad_code);
			mv.addObject("bankBoardList", bankList);
			mv.addObject("pageVo", pageVo);
			mv.addObject("nowpage", nowpage);
			mv.addObject("pagecount", pagecount);
			mv.addObject("grpnum", grpnum);
			mv.addObject("searchVo", searchVo);
			mv.addObject("searchType", map.get("searchtype"));
			mv.addObject("keyWord", map.get("keyword"));
			mv.setViewName("user/sub/sub02/finref07");
			return mv;
		}
			
		@RequestMapping("/finref07/view")
		public ModelAndView Conentet4(@RequestParam HashMap<String, Object> map) {
			NoticeVo vo = bankService.content(map);
			ModelAndView mv = new ModelAndView();
			mv.addObject("menu", map);
			mv.addObject("content", vo);
			mv.addObject("writer",map.get("ad_writer"));
			mv.addObject("ad_code", map.get("ad_code"));
			mv.setViewName("user/sub/sub02/07/view");
			return mv;
		}
		@RequestMapping("/finref07/WriteForm")
		public ModelAndView WriteForm4(@RequestParam HashMap<String, Object> map) {
			String ad_code="CAT0014";
			map.put("ad_code", ad_code);
			ModelAndView mv = new ModelAndView();
			mv.addObject("menu", map);
			mv.addObject("ad_code", ad_code);
			mv.setViewName("user/sub/sub02/07/write");
			return mv;
		}
			
		@RequestMapping("/finref07/Write")
		public String Write4(@RequestParam HashMap<String, Object> map, HttpServletRequest req) {
			int ad_idx = bankService.getWrite(map);
			String ad_code = (String) map.get("ad_code");
			map.put("ad_idx", ad_idx);
			bankService.addFile(req, map);
			
			return "redirect:/finref07?m1=02&m2=02&m3=05&nowpage=1&pagecount=10&grpnum=1";
		}
		
		@RequestMapping("/finref07/UpdateForm")
		public ModelAndView UpdateForm4(@RequestParam HashMap<String, Object> map) {
			NoticeVo vo = bankService.content(map);
			ModelAndView mv = new ModelAndView();
			mv.addObject("menu", map);
			mv.addObject("board", vo);
			mv.addObject("ad_idx", map.get("ad_idx"));
			mv.addObject("ad_code", map.get("ad_code"));
			mv.setViewName("user/sub/sub02/07/update");
			return mv; 
		}
						
		@RequestMapping("/finref07/Update")
		public String Update4(@RequestParam HashMap<String, Object> map, HttpServletRequest req) {
			bankService.Update(map);
			bankService.upFile(req, map);
			return "redirect:/finref07/view?m1=02&m2=02&m3=05&ad_idx="+ map.get("ad_idx")+"&ad_code="+map.get("ad_code");
		}
			
		@RequestMapping("/finref07/delFile")
		public String delFile4(@RequestParam HashMap<String, Object> map) {
			int ad_idx = Integer.parseInt(String.valueOf(map.get("ad_idx")));
			String ad_code = "CAT0014";
			map.put("ad_code", ad_code);
			bankService.delFile(map);
			return "redirect:/finref07/UpdateForm?m1=02&m2=02&m3=05&ad_idx="+ map.get("ad_idx") +"&ad_code="+ map.get("ad_code");
		}		
	
}
