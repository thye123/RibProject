package com.bujun.study.controller;

import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.bujun.study.service.StudyService;
import com.bujun.study.vo.StudyVo;

@Controller
public class StudyController {
	
	@Autowired
	StudyService studyService;
	//${sessionScope.mem_name}
	@RequestMapping("/study")
	public ModelAndView goStudy(@RequestParam HashMap<String, Object> map, Model model, HttpSession session) {
		model.addAttribute("menu", map);
		List<StudyVo> list = studyService.getList(map);
		ModelAndView mv = new ModelAndView();
		mv.addObject("m1", map.get("m1"));
		mv.addObject("m2", map.get("m2"));
		mv.addObject("sList", list);
		mv.addObject("paging", map.get("pagingVo"));
		mv.addObject("page_num", map.get("page_num"));
		mv.addObject("tot_cnt", map.get("tot_cnt"));
		mv.setViewName("user/sub/sub06/study");
		return mv;
	}
	
	@RequestMapping("/study/addStudyForm")
	public ModelAndView addStudyForm(@RequestParam HashMap<String, Object> map, Model model, HttpSession session) {
		model.addAttribute("menu", map);		
		ModelAndView mv = new ModelAndView();
		mv.addObject("m1", map.get("m1"));
		mv.addObject("m2", map.get("m2"));
		mv.setViewName("user/sub/sub06/studyInsert");
		return mv;
	}
	
	@RequestMapping("/study/addStudy")
	public ModelAndView addStudy(@RequestParam HashMap<String, Object> map, Model model, HttpSession session) {
		model.addAttribute("menu", map);
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		studyService.addstudy(map);
		ModelAndView mv = new ModelAndView();
		mv.addObject("m1", m1);
		mv.addObject("m2", m2);
		mv.setViewName("redirect:/study?m1=" + m1 + "&m2=" + m2 + "&page_num=1&page_grp=1");;
		return mv;
	}
	
	@RequestMapping("/study/dCon")
	public ModelAndView stuDetail(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		StudyVo vo = studyService.getDetail(map);
		ModelAndView mv = new ModelAndView();
		mv.addObject("detail", vo);
		mv.addObject("m1", m1);
		mv.addObject("m2", m2);
		mv.setViewName("user/sub/sub06/studyDetail");		
		return mv;
	}
	
	@RequestMapping("/study/updateForm")
	public ModelAndView updateFrom(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		ModelAndView mv = new ModelAndView();
		StudyVo vo = studyService.getDetail(map);
		mv.addObject("m1", m1);
		mv.addObject("m2", m2);
		mv.addObject("detail", vo);
		mv.addObject("stu_code",map.get("stu_code"));
		mv.addObject("stu_idx", map.get("stu_idx"));
		mv.setViewName("user/sub/sub06/studyUpdate");
		return mv;
	}
	
	@RequestMapping("/study/update")
	public String update(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		studyService.update(map);
		return "redirect:/study/dCon?m1="+m1+"&m2="+m2+"&stu_code="+map.get("stu_code")+"&stu_idx="+map.get("stu_idx");
	}
	
	@RequestMapping("/study/delete")
	public String delete(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		studyService.delete(map);
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		return "redirect:/study?m1=" + m1 + "&m2=" + m2 + "&page_num=1&page_grp=1";
	}
	
	@RequestMapping("/study/search")
	public ModelAndView search(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		List<StudyVo> list = studyService.search(map);
		ModelAndView mv = new ModelAndView();
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		mv.addObject("m1", m1);
		mv.addObject("m2", m2);
		mv.addObject("sList", list);
		mv.addObject("paging", map.get("pagingVo"));
		mv.addObject("page_num", map.get("page_num"));
		mv.addObject("tot_cnt", map.get("tot_cnt"));
		mv.addObject("keyfield", map.get("keyfield"));
		mv.addObject("keyword", map.get("keyword"));
		mv.setViewName("user/sub/sub06/study");
		return mv;
	}
	
	@RequestMapping("/study/joinForm")
	public ModelAndView studyJoinForm(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		ModelAndView mv = new ModelAndView();
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		mv.addObject("m1", m1);
		mv.addObject("m2", m2);
		mv.addObject("stu_code",map.get("stu_code"));
		mv.addObject("stu_idx", map.get("stu_idx"));
		mv.setViewName("user/sub/sub06/studyJoin");
		return mv;
	}
}
