package com.bujun.openinfo.controller;

import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.bujun.openinfo.service.OpenInfoService;
import com.bujun.openinfo.vo.Encoding;
import com.bujun.openinfo.vo.OpenInfoVo;

@Controller
public class OpenInfoController {
	
	@Autowired
	OpenInfoService openInfoService;
	
	@RequestMapping("/info01")
	public String openInfoIntro(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		return "user/sub/sub07/OpenInfoIntro";
	}
	
	@RequestMapping("/info02")
	public String openInfoList(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		return "user/sub/sub07/OpenInfoList";
	}
	
	@RequestMapping("/info03")
	public ModelAndView goOpenInfo(@RequestParam HashMap<String, Object> map, Model model, HttpSession session) {
		//System.out.println("map: " + map);
		model.addAttribute("menu", map);
		String ad_code = "";
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));
			
		//게시판 코드 확인
		if(m1.equals("07")&&m2.equals("01")&&m3.equals("03")) {
			ad_code = "CAT0016";
			//System.out.println("ad_code: " + ad_code);
			map.put("ad_code", ad_code);
		}else {
			if(m1.equals("07")&&m2.equals("01")&&m3.equals("05")) {
				ad_code="CAT0017";
				//System.out.println("ad_code: " + ad_code);
				map.put("ad_code", ad_code);
			}
		}
		
		//System.out.println("map : " + map);
		List<OpenInfoVo> list = openInfoService.selectList(map);
		//System.out.println("list: " + list);
		//System.out.println("paging: " + map.get("pagingVo"));
		ModelAndView mv = new ModelAndView();
		mv.addObject("m1",map.get("m1"));
		mv.addObject("m2",map.get("m2"));
		mv.addObject("m3",map.get("m3"));
		mv.addObject("ad_code", ad_code);
		mv.addObject("contentList", list);
		mv.addObject("paging", map.get("pagingVo"));
		mv.addObject("page_num", map.get("page_num"));
		mv.addObject("tot_cnt", map.get("tot_cnt"));
		mv.setViewName("user/sub/sub07/OpenInfo");
		return mv;
	}
		
	//새글작성
	@RequestMapping("/info03/CForm")
	public ModelAndView insertForm(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		ModelAndView mv = new ModelAndView();
		String ad_code = "";
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));
		
		//code 변환
		if(m1.equals("07")&&m2.equals("01")&&m3.equals("03")) {
			ad_code = "CAT0016";
			//System.out.println("ad_code: " + ad_code);
			map.put("ad_code", ad_code);
		}else {
			if(m1.equals("07")&&m2.equals("01")&&m3.equals("05")) {
				ad_code="CAT0017";
				//System.out.println("ad_code: " + ad_code);
				map.put("ad_code", ad_code);
			}
		}
		
		mv.addObject("ad_code", map.get("ad_code"));
		mv.addObject("m1", m1);
		mv.addObject("m2", m2);
		mv.addObject("m3", m3);
		mv.setViewName("user/sub/sub07/OpenInfoInsert");
		return mv;
	}
	
	@RequestMapping("/info03/iCon")
	public String insertContent(@RequestParam HashMap<String, Object> map, Model model, HttpServletRequest req) {
		model.addAttribute("menu", map);
		int ad_idx = openInfoService.insertContent(map);
		String ad_code = String.valueOf(map.get("ad_code"));
		
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));
		
		//ad_code 변환
		if(m1.equals("07")&&m2.equals("01")&&m3.equals("03")) {
			ad_code = "CAT0016";
			//System.out.println("ad_code: " + ad_code);
			map.put("ad_code", ad_code);
		}else {
			if(m1.equals("07")&&m2.equals("01")&&m3.equals("05")) {
				ad_code="CAT0017";
				//System.out.println("ad_code: " + ad_code);
				map.put("ad_code", ad_code);
			}
		}
		
		map.put("ad_idx", ad_idx);
				
		openInfoService.addFile(req, map);			
		return "redirect:/info03?m1="+m1+"&m2="+m2+"&m3="+m3+"&page_num=1&page_grp=1";
	}
	
	//상세 정보
	@RequestMapping("/info03/dCon")
	public ModelAndView goContent(@RequestParam HashMap<String, Object> map, Model model, HttpSession session) {
		model.addAttribute("menu", map);
		String ad_code = "";
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));
			
		//게시판 코드 확인
		if(m1.equals("07")&&m2.equals("01")&&m3.equals("03")) {
			ad_code = "CAT0016";
			//System.out.println("ad_code: " + ad_code);
			map.put("ad_code", ad_code);
		}else {
			if(m1.equals("07")&&m2.equals("01")&&m3.equals("05")) {
				ad_code="CAT0017";
				//System.out.println("ad_code: " + ad_code);
				map.put("ad_code", ad_code);
			}
		}
		
		OpenInfoVo vo = openInfoService.detail(map);
		ModelAndView mv = new ModelAndView();
		mv.addObject("openInfoVo", vo);
		mv.addObject("ad_idx", map.get("ad_idx"));
		mv.addObject("writer", map.get("ad_writer"));
		mv.addObject("keyword", map.get("keyword"));
		mv.addObject("keyfield", map.get("keyfield"));
		mv.setViewName("user/sub/sub07/OpenInfoDetail");
		return mv;
	}
	
	//검색
	@RequestMapping("/info03/search")
	public ModelAndView search(@RequestParam HashMap<String, Object> map, Model model, HttpSession session) {
		model.addAttribute("menu", map);
		String ad_code = "";
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));
		
		//게시판 코드 확인
		if(m1.equals("07")&&m2.equals("01")&&m3.equals("03")) {
			ad_code = "CAT0016";
			//System.out.println("ad_code: " + ad_code);
			map.put("ad_code", ad_code);
		}else {
			if(m1.equals("07")&&m2.equals("01")&&m3.equals("05")) {
				ad_code="CAT0017";
				//System.out.println("ad_code: " + ad_code);
				map.put("ad_code", ad_code);
			}
		}
		
		Encoding ed = new Encoding();
		String keyWord = ed.encoding(String.valueOf(map.get("keyword")));
		
		List<OpenInfoVo> list = openInfoService.search(map);
		System.out.println("map search: " + list);
		ModelAndView mv = new ModelAndView();
		mv.addObject("m1", map.get("m1"));
		mv.addObject("m2", map.get("m2"));
		mv.addObject("m3", map.get("m3"));
		mv.addObject("ad_code", map.get("ad_code"));
		mv.addObject("searchList", list);
		mv.addObject("paging", map.get("pagingVo"));
		mv.addObject("page_num", map.get("page_num"));
		mv.addObject("tot_cnt", map.get("tot_cnt"));
		mv.addObject("keyfield", map.get("keyfield"));
		mv.addObject("keyword", keyWord);
		mv.setViewName("user/sub/sub07/OpenInfo");
		return mv;
	}
	
	//수정
	@RequestMapping("/info03/updateform")
	public ModelAndView updateForm(@RequestParam HashMap<String, Object> map, Model model, HttpSession session) {
		model.addAttribute("menu", map);
		String ad_code = "";
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));
		
		//게시판 코드 확인
		if(m1.equals("07")&&m2.equals("01")&&m3.equals("03")) {
			ad_code = "CAT0016";
			//System.out.println("ad_code: " + ad_code);
			map.put("ad_code", ad_code);
		}else {
			if(m1.equals("07")&&m2.equals("01")&&m3.equals("05")) {
				ad_code="CAT0017";
				//System.out.println("ad_code: " + ad_code);
				map.put("ad_code", ad_code);
			}
		}
		
		OpenInfoVo vo = openInfoService.detail(map);
		ModelAndView mv = new ModelAndView();
		mv.addObject("OpenInfoVo", vo);
		mv.addObject("ad_idx", map.get("ad_idx"));
		mv.addObject("ad_code", ad_code);
		mv.addObject("m1", m1);
		mv.addObject("m2", m2);
		mv.addObject("m3", m3);		
		mv.setViewName("user/sub/sub07/OpenInfoUpdate");
		return mv;
	}
	
	@RequestMapping("/info03/update")
	public String update(@RequestParam HashMap<String, Object> map, HttpServletRequest req, Model model, HttpSession session) {
		model.addAttribute("menu", map);
		openInfoService.update(map);
		openInfoService.upFile(req,map);
		return "redirect:/info03/dCon?ad_code="+map.get("ad_code")+"&ad_idx="+map.get("ad_idx");
	}
	
	//삭제
	@RequestMapping("/info03/delete")
	public String delCon(@RequestParam HashMap<String, Object> map, Model model, HttpSession session) {
		model.addAttribute("menu", map);
		String ad_code = "";
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));
		
		//게시판 코드 확인
		if(m1.equals("07")&&m2.equals("01")&&m3.equals("03")) {
			ad_code = "CAT0016";
			//System.out.println("ad_code: " + ad_code);
			map.put("ad_code", ad_code);
		}else {
			if(m1.equals("07")&&m2.equals("01")&&m3.equals("05")) {
				ad_code="CAT0017";
				//System.out.println("ad_code: " + ad_code);
				map.put("ad_code", ad_code);
			}
		}
		
		openInfoService.delete(map);
		
		return "redirect:/info03?m1="+m1+"&m2="+m2+"&m3="+m3+"&page_num=1&page_grp=1";
	}
	
	@RequestMapping("/info03/delFile")
	public String delFile(@RequestParam HashMap<String, Object> map, Model model, HttpSession session) {
		model.addAttribute("menu", map);
		String ad_code = "";
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));
		
		//게시판 코드 확인
		if(m1.equals("07")&&m2.equals("01")&&m3.equals("03")) {
			ad_code = "CAT0016";
			//System.out.println("ad_code: " + ad_code);
			map.put("ad_code", ad_code);
		}else {
			if(m1.equals("07")&&m2.equals("01")&&m3.equals("05")) {
				ad_code="CAT0017";
				//System.out.println("ad_code: " + ad_code);
				map.put("ad_code", ad_code);
			}
		}
		
		openInfoService.delfile(map);
		return "redirect:/info03/updateform?m1="+m1+"&m2="+m2+"&m3="+m3+"&ad_idx="+map.get("ad_idx");
	}
}

