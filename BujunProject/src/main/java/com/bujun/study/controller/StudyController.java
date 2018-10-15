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
import com.bujun.study.vo.StudyAppVo;
import com.bujun.study.vo.StudyVo;

@Controller
public class StudyController {
	
	@Autowired
	StudyService studyService;
	//${sessionScope.mem_name}
	
	//스터디 목록 시작
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
	//스터디 목록 끝
	
	
	//스터디 등록 시작
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
	//스터디 등록 끝
	
	
	//상세정보 시작
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
	//상세정보 끝
	
	
	//수정 시작
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
	//수정 끝
	
	
	//삭제 시작
	@RequestMapping("/study/delete")
	public String delete(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		studyService.delete(map);
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		return "redirect:/study/dCon?m1="+m1+"&m2="+m2+"&stu_code="+map.get("stu_code")+"&stu_idx="+map.get("stu_idx");
	}
	//삭제 끝

	
	//스터디 검색 시작
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
	//스터디 검색 끝
	
	
	//스터디 가입 신청 시작
	@RequestMapping("/study/joinForm")
	public ModelAndView studyJoinForm(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		StudyVo vo = studyService.getDetail(map);
		ModelAndView mv = new ModelAndView();
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		mv.addObject("m1", m1);
		mv.addObject("m2", m2);
		mv.addObject("studyDetail", vo);
		mv.addObject("stu_code",map.get("stu_code"));
		mv.addObject("stu_idx", map.get("stu_idx"));
		mv.setViewName("user/sub/sub06/studyJoin");
		return mv;
	}
	
	@RequestMapping("/study/join")
	public String studyJoin(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		String phone1 = String.valueOf(map.get("stuap_phone1"));
		String phone2 = String.valueOf(map.get("stuap_phone2"));
		String phone3 = String.valueOf(map.get("stuap_phone3"));
		String stuap_phone = phone1 + phone2 + phone3;
		map.put("stuap_phone", stuap_phone);
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		studyService.studyAppliy(map);
		return "redirect:/study?m1=" + m1 + "&m2=" + m2 + "&page_num=1&page_grp=1";
	}
	//스터디 가입 신청 끝
	
	
	//스터디 가입 신청 현황 시작(개인)
	@RequestMapping("/study/appList")
	public ModelAndView myApplyList(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		List<StudyAppVo> list = studyService.appList(map);
		ModelAndView mv = new ModelAndView();
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		mv.addObject("m1", m1);
		mv.addObject("m2", m2);
		mv.addObject("AppList", list);
		mv.addObject("paging", map.get("pagingVo"));
		mv.addObject("page_num", map.get("page_num"));
		mv.addObject("tot_cnt", map.get("tot_cnt"));
		mv.setViewName("user/sub/sub06/studyApplyList");
		return mv;
	}
	//스터디 가입 신청 현황 끝(개인)
	
	
	//스터디 가입 신청 현황 검색 시작(개인)
	@RequestMapping("/study/myapplysearch")
	public ModelAndView myApplySearch(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		System.out.println("map : " + map);
		List<StudyAppVo> list = studyService.appSearch(map);
		System.out.println("list: " + list);
		ModelAndView mv = new ModelAndView();
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		mv.addObject("m1", m1);
		mv.addObject("m2", m2);
		mv.addObject("AppList", list);
		mv.addObject("paging", map.get("pagingVo"));
		mv.addObject("page_num", map.get("page_num"));
		mv.addObject("tot_cnt", map.get("tot_cnt"));
		mv.addObject("keyfield", map.get("keyfield"));
		mv.addObject("keyword", map.get("keyword"));
		mv.setViewName("user/sub/sub06/studyApplyList");
		return mv;
	}
	//스터디 가입 신청 현황 검색 끝(개인)
	
	
	//스터디 가입 신청 현황 시작(스터디별 -> 글올린 사람만 볼 수 있음)
	@RequestMapping("/study/prcondition")
	public ModelAndView stuApplyList(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		List<StudyAppVo> list = studyService.stuApplyList(map);
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		ModelAndView mv = new ModelAndView();
		mv.addObject("m1", m1);
		mv.addObject("m2", m2);
		mv.addObject("stuap_code", map.get("stu_code"));
		mv.addObject("AppList", list);
		mv.addObject("paging", map.get("pagingVo"));
		mv.addObject("page_num", map.get("page_num"));
		mv.addObject("tot_cnt", map.get("tot_cnt"));
		mv.setViewName("user/sub/sub06/studyApplyList");
		return mv;
	}
	//스터디 가입 신청 현황 끝(스터디별 -> 글올린 사람만 볼 수 있음)
	
	
	//스터디 가입 신청 현황 검색 시작(스터디 별 -> 글올린 사람만 볼 수 있음)
	@RequestMapping("/study/stusearch")
	public ModelAndView stuApplySearch(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		List<StudyAppVo> list = studyService.stuApplySearch(map);
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		ModelAndView mv = new ModelAndView();
		mv.addObject("m1", m1);
		mv.addObject("m2", m2);
		mv.addObject("AppList", list);
		mv.addObject("stuap_code", map.get("stuap_code"));
		mv.addObject("paging", map.get("pagingVo"));
		mv.addObject("page_num", map.get("page_num"));
		mv.addObject("tot_cnt", map.get("tot_cnt"));
		mv.addObject("keyfield", map.get("keyfield"));
		mv.setViewName("user/sub/sub06/studyApplyList");
		return mv;
	}
	//스터디 가입 신청 현황 검색 끝(스터디 별 -> 글올린 사람만 볼 수 있음)
	
	
	//스터디 승인
	@RequestMapping("/study/accept")
	public String acceptStudy(@RequestParam HashMap<String, Object> map) {
		//승인
		studyService.updateApply(map);
		
		//모집인원 다차면 모집 완료
		studyService.studyEnd(map);
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		return "redirect:/study/prcondition?m1="+m1+"&m2="+m2+"&page_num=1&page_grp=1&stu_code="+map.get("stuap_code");
	}
}
