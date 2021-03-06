package com.bujun.education.controller;


import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bujun.education.service.EduService;
import com.bujun.education.service.impl.Pgdata;
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
		//PagingData data = new PagingData();
		Pgdata data= new Pgdata();

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
		map.put("cnt", map.get("cnt"));
	
		EduVo  pageMaker  = data.getPaging(map);
		
		//System.out.println("cnt 값 :" + pageMaker.getCnt());
		//System.out.println("ed: cnt " + pageMaker.toString());
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		mv.addObject("pageMaker",pageMaker);
		
		mv.addObject("cnt",map.get("cnt"));
		mv.addObject("pro_list", list);
		mv.setViewName("user/sub/sub04/operatingprogram");
		return mv;
	}
	
	//세부내용 들어가기 
	@RequestMapping("/opprogram01/dCon")
	public ModelAndView dCon(@RequestParam HashMap<String, Object>map , Model model) {
		model.addAttribute("menu", map);
		
		//System.out.println("mapdetail" + map);
		ModelAndView mv = new ModelAndView();
				
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));
		
		EduVo edu = eduService.getdetail(map);
		
		System.out.println("edu : "  + edu.toString());
		
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		mv.addObject("page",map.get("page"));
		mv.addObject("pagegrp",map.get("pagegrp"));
		mv.addObject("pagecount",map.get("pagecount"));
		mv.addObject("edu",edu);
		
		mv.setViewName("user/sub/sub04/applydetail");
		return mv;
	}
	
	//수강신청 
	@RequestMapping("/opprogram01/apply")
	public ModelAndView applyGo(@RequestParam HashMap<String, Object>map ,Model model) {
		ModelAndView mv = new ModelAndView();
		//System.out.println("map");
		//listu_idx=1, listu_code=LISTU0001
		model.addAttribute("menu", map);
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));
	
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		//프로그램명 시간 / 요일 장소
		
		EduVo vo = eduService.getData(map);
		
		mv.addObject("liap_code",map.get("listu_code"));
		
		System.out.println("listu_catcode :" +map.get("listu_catcode") );
		
		mv.addObject("listu_catcode",map.get("listu_catcode"));
		
		mv.addObject("page",map.get("page"));
		mv.addObject("pagegrp",map.get("pagegrp"));
		mv.addObject("pagecount",map.get("pagecount"));
		mv.addObject("vo",vo);
		mv.setViewName("user/sub/sub04/applycheck");
		return mv;
	}
	
	@RequestMapping("/opprogram01/approc")
	//회원이 평생 교육프로그램을 보고 수강신청을 할때 
	public ModelAndView approc(@RequestParam HashMap<String, Object> map , Model model) {
		model.addAttribute("menu", map);
		//System.out.println("map 11: " + map);
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
		//System.out.println("여기서 map " + map);
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		mv.setViewName("redirect:/pgappl?m1="+m1+"&m2="+m2+"&m3="+m3+"&page=1&pagecount=10&pagegrp=1");
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
		
		mv.addObject("page",map.get("page"));
		mv.addObject("pagegrp",map.get("pagegrp"));
		mv.addObject("pagecount",map.get("pagecount"));
		
		mv.setViewName("user/sub/sub04/operatingadpro");
		return mv;
	}
	
	@RequestMapping("/opprogram01/adpro")
	public String insertProgram(@RequestParam HashMap<String, Object> map, HttpServletRequest req) {
		//System.out.println("map inprog: " + map);
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
		
		return "redirect:/opprogram01?m1="+m1+"&m2="+m2+"&m3="+m3+"&page="+map.get("page")+"&pagecount="+map.get("pagecount")+"&pagegrp="+map.get("pagegrp");
	}
	
	@RequestMapping("/pgcheck")
	public String checkprog(@RequestParam
			HashMap<String, Object> map, Model model) {
		
		model.addAttribute("menu", map);
		
		System.out.println("수강신청 내역 보여주는 map " + map);
		
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	      String login_name = authentication.getName();

	      if(!login_name.equals("anonymousUser")) {
	    	  map.put("liap_apname", login_name);
	    	  
	    	  //System.out.println("id 체크 후 맵 " + map);
	    	  
	    	  return "redirect:/pgcheck/proc?m1="+m1+"&m2="+m2+"&m3="+m3+"&liap_apname="+login_name;
	      }else {
	    	  //mv.setViewName("user/sub/sub08/login");
	    	  return "redirect:/bjLogin";
	      }

		
	/*	mv.setViewName("user/sub/sub08/login");*/
		
		
	}
	
	@RequestMapping("/pgcheck/proc")
	public ModelAndView checkproc(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		System.out.println("map 처리 " + map);
		
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));
		
		ModelAndView mv = new ModelAndView();
		
		System.out.println("id체크 맵 " + map);
		List<EduVo> vo = eduService.getcheckData(map);
		System.out.println("vo: "  + vo.toString());
		//System.out.println("돌아오는 결과 값 " +vo.toString());
		mv.addObject("liap_apname",map.get("liap_apname"));
		mv.addObject("vo",vo);
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		
		mv.setViewName("user/sub/sub04/checkview");
		return mv;
	}
	
	@RequestMapping("/pgappl")
	public ModelAndView eduingData(@RequestParam
			HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);

		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));
		
		ModelAndView mv = new ModelAndView();
		
		List<EduVo> EdingData = eduService.EduingData(map);
		System.out.println("map:" + map);

		
		Pgdata data= new Pgdata();
		
		System.out.println("map1111:" + map);
		EduVo  pageMaker  = data.getPaging(map);
		
		
		System.out.println("pageMaker" +pageMaker.toString());
		
		mv.addObject("cnt",map.get("cnt"));
		mv.addObject("pageMaker",pageMaker);
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		mv.addObject("EdingData",EdingData);
		
		mv.setViewName("user/sub/sub04/edingdata");
		return mv;
	}

}
