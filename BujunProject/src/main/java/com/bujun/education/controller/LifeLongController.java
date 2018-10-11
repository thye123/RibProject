package com.bujun.education.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bujun.education.service.EduService;
import com.bujun.education.vo.EduVo;

@Controller
public class LifeLongController {
	
	@Autowired
	EduService eduService;
	
	@RequestMapping("/opprogram01")
	public ModelAndView operatingProgram(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		String listu_catcode = "";
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));
		//게시판 코드 확인
		if(m1.equals("04")&&m2.equals("01")&&m3.equals("02")) {
			listu_catcode = "CAT0023";
			map.put("listu_catcode", listu_catcode);
		}else {
			if(m1.equals("04")&&m2.equals("01")&&m3.equals("03")) {
				listu_catcode="CAT0024";
				map.put("listu_catcode", listu_catcode);
			}
		}
		List<EduVo> list = eduService.edulist(map);
		ModelAndView mv = new ModelAndView();
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		mv.addObject("pro_list", list);
		mv.setViewName("user/sub/sub04/operatingprogram");
		return mv;
	}
	
	//세부내용 들어가기 
	@RequestMapping("/opprogram01/dCon")
	public ModelAndView dCon(@RequestParam HashMap<String, Object>map , Model model) {
		model.addAttribute("menu", map);
		
		ModelAndView mv = new ModelAndView();
				
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));
	
		EduVo edu = eduService.getdetail(map);
		
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		mv.addObject("edu",edu);
		mv.setViewName("user/sub/sub04/applydetail");
		return mv;
	}
	
	//수강신청 
	@RequestMapping("/opprogram01/apply")
	public ModelAndView applyGo(@RequestParam HashMap<String, Object>map ,Model model) {
		ModelAndView mv = new ModelAndView();
		
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));
	
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		
		//System.out.println("map 상세 "  + map);
		mv.addObject("liap_code",map.get("listu_code"));
		//redirect 값으로 받기 위해서 
		mv.addObject("listu_catcode",map.get("listu_catcode"));
		
		mv.setViewName("user/sub/sub04/applycheck");
		return mv;
	}
	
	@RequestMapping("/opprogram01/approc")
	//회원이 평생 교육프로그램을 보고 수강신청을 할때 
	public ModelAndView approc(@RequestParam HashMap<String, Object> map , Model model) {
		model.addAttribute("menu", map);
		System.out.println("map 11: " + map);
		ModelAndView mv = new ModelAndView();
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));

		//각 전화번호 잘라서 들고오고 
		
		String stel = (String)map.get("stel"); 
		String stel2 =(String)map.get("stel2");
		String stel3 =(String)map.get("stel3");
		String liap_apphone = stel.concat(stel2).concat(stel3);

		map.remove("stel");
		map.remove("stel2");
		map.remove("stel3");
		//휴대폰 잘라서 붙여넣은 객체를 담는다 
		map.put("liap_apphone", liap_apphone);
		System.out.println("map2 " + map);
		eduService.getInApply(map);
		System.out.println("여기서 map " + map);
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		
		mv.setViewName("redirect:/opprogram01?m1="+m1+"&m2="+m2+"&m3="+m3);
		return mv;
	}
	
	
	@RequestMapping("/opprogram01/adprof")
	public ModelAndView insertProgramForm(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		ModelAndView mv = new ModelAndView();
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		mv.setViewName("user/sub/sub04/operatingadpro");
		return mv;
	}
	
	@RequestMapping("/opprogram01/adpro")
	public String insertProgram(@RequestParam HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("map inprog: " + map);
		String listu_catcode = "";
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));
		
		//게시판 코드 확인
		if(m1.equals("04")&&m2.equals("01")&&m3.equals("02")) {
			listu_catcode = "CAT0023";
			//System.out.println("ad_code: " + ad_code);
			map.put("listu_catcode", listu_catcode);
		}else {
			if(m1.equals("04")&&m2.equals("01")&&m3.equals("03")) {
				listu_catcode="CAT0024";
				//System.out.println("ad_code: " + ad_code);
				map.put("listu_catcode", listu_catcode);
			}
		}
		eduService.insertPro(map);
		
		return "redirect:/opprogram01?m1="+m1+"&m2="+m2+"&m3="+m3;
	}
}
