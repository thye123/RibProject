package com.bujun.study.controller;

import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bujun.openinfo.vo.Encoding;
import com.bujun.study.service.StudyService;
import com.bujun.study.vo.StudyAppVo;
import com.bujun.study.vo.StudyVo;

@Controller
public class StudyController {
	
	@Autowired
	StudyService studyService;
	//${sessionScope.mem_name}
	
	//�뒪�꽣�뵒 紐⑸줉 �떆�옉
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
	//�뒪�꽣�뵒 紐⑸줉 �걹
	
	
	//�뒪�꽣�뵒 �벑濡� �떆�옉
	@RequestMapping("/study/addStudyForm")
	public ModelAndView addStudyForm(@RequestParam HashMap<String, Object> map, Model model, HttpSession session) {
		
      Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
      String login_name = authentication.getName();
      
      ModelAndView mv = new ModelAndView();

      if(!login_name.equals("anonymousUser")) {
    	model.addAttribute("menu", map);		
  		mv.addObject("m1", map.get("m1"));
  		mv.addObject("m2", map.get("m2"));
  		mv.setViewName("user/sub/sub06/studyInsert");
  		return mv;
      } else {
		mv.setViewName("redirect:/bjLogin");
  		return mv;    	  
      }
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
	//�뒪�꽣�뵒 �벑濡� �걹
	
	
	//�긽�꽭�젙蹂� �떆�옉
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
	//�긽�꽭�젙蹂� �걹
	
	
	//�닔�젙 �떆�옉
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
	//�닔�젙 �걹
	
	
	//�궘�젣 �떆�옉
	@RequestMapping("/study/delete")
	public String delete(@RequestParam HashMap<String, Object> map, Model model) {
		System.out.println("map: " + map);
		model.addAttribute("menu", map);
		studyService.delete(map);
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		return "redirect:/study?m1="+m1+"&m2="+m2+"&page_num=1&page_grp=1";
	}
	//�궘�젣 �걹

	
	//�뒪�꽣�뵒 寃��깋 �떆�옉
	@RequestMapping("/study/search")
	public ModelAndView search(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		List<StudyVo> list = studyService.search(map);
		ModelAndView mv = new ModelAndView();
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		
		Encoding ed = new Encoding();
		String keyWord = ed.encoding(String.valueOf(map.get("keyword")));
		
		mv.addObject("m1", m1);
		mv.addObject("m2", m2);
		mv.addObject("sList", list);
		mv.addObject("paging", map.get("pagingVo"));
		mv.addObject("page_num", map.get("page_num"));
		mv.addObject("tot_cnt", map.get("tot_cnt"));
		mv.addObject("keyfield", map.get("keyfield"));
		mv.addObject("keyword", keyWord);
		mv.setViewName("user/sub/sub06/study");
		return mv;
	}
	//�뒪�꽣�뵒 寃��깋 �걹
	
	
	//�뒪�꽣�뵒 媛��엯 �떊泥� �떆�옉
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
	//�뒪�꽣�뵒 媛��엯 �떊泥� �걹
	
	
	//�뒪�꽣�뵒 媛��엯 �떊泥� �쁽�솴 �떆�옉(媛쒖씤)
	@RequestMapping("/study/appList")
	public ModelAndView myApplyList(@RequestParam HashMap<String, Object> map, Model model) {
	
		
      Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
      String login_name = authentication.getName();
      ModelAndView mv = new ModelAndView();
      

      if(!login_name.equals("anonymousUser")) {
    	  
  		model.addAttribute("menu", map);
  		List<StudyAppVo> list = studyService.appList(map);
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
      
      } else {
		mv.setViewName("redirect:/bjLogin");
  		return mv;    	  
      }
	      
	}
	//�뒪�꽣�뵒 媛��엯 �떊泥� �쁽�솴 �걹(媛쒖씤)
	
	
	//�뒪�꽣�뵒 媛��엯 �떊泥� �쁽�솴 寃��깋 �떆�옉(媛쒖씤)
	@RequestMapping("/study/myapplysearch")
	public ModelAndView myApplySearch(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		System.out.println("map : " + map);
		List<StudyAppVo> list = studyService.appSearch(map);
		System.out.println("list: " + list);
		ModelAndView mv = new ModelAndView();
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		
		Encoding ed = new Encoding();
		String keyWord = ed.encoding(String.valueOf(map.get("keyword")));
		
		mv.addObject("m1", m1);
		mv.addObject("m2", m2);
		mv.addObject("AppList", list);
		mv.addObject("paging", map.get("pagingVo"));
		mv.addObject("page_num", map.get("page_num"));
		mv.addObject("tot_cnt", map.get("tot_cnt"));
		mv.addObject("keyfield", map.get("keyfield"));
		mv.addObject("keyword", keyWord);
		mv.setViewName("user/sub/sub06/studyApplyList");
		return mv;
	}
	//�뒪�꽣�뵒 媛��엯 �떊泥� �쁽�솴 寃��깋 �걹(媛쒖씤)
	
	
	//�뒪�꽣�뵒 媛��엯 �떊泥� �쁽�솴 �떆�옉(�뒪�꽣�뵒蹂� -> 湲��삱由� �궗�엺留� 蹂� �닔 �엳�쓬)
	@RequestMapping("/study/prcondition")
	public ModelAndView stuApplyList(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		List<StudyAppVo> list = studyService.stuApplyList(map);
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		ModelAndView mv = new ModelAndView();
		mv.addObject("m1", m1);
		mv.addObject("m2", m2);
		mv.addObject("stu_idx", map.get("stu_idx"));
		mv.addObject("stuap_code", map.get("stu_code"));
		mv.addObject("AppList", list);
		mv.addObject("paging", map.get("pagingVo"));
		mv.addObject("page_num", map.get("page_num"));
		mv.addObject("tot_cnt", map.get("tot_cnt"));
		mv.setViewName("user/sub/sub06/studyApplyList");
		return mv;
	}
	//�뒪�꽣�뵒 媛��엯 �떊泥� �쁽�솴 �걹(�뒪�꽣�뵒蹂� -> 湲��삱由� �궗�엺留� 蹂� �닔 �엳�쓬)
	
	
	//�뒪�꽣�뵒 媛��엯 �떊泥� �쁽�솴 寃��깋 �떆�옉(�뒪�꽣�뵒 蹂� -> 湲��삱由� �궗�엺留� 蹂� �닔 �엳�쓬)
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
	//�뒪�꽣�뵒 媛��엯 �떊泥� �쁽�솴 寃��깋 �걹(�뒪�꽣�뵒 蹂� -> 湲��삱由� �궗�엺留� 蹂� �닔 �엳�쓬)
	
	
	//�뒪�꽣�뵒 �듅�씤
	@RequestMapping("/study/accept")
	public String acceptStudy(@RequestParam HashMap<String, Object> map) {
		//�듅�씤
		studyService.updateApply(map);
		
		//紐⑥쭛�씤�썝 �떎李⑤㈃ 紐⑥쭛 �셿猷�
		studyService.studyEnd(map);
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		return "redirect:/study/prcondition?m1="+m1+"&m2="+m2+"&page_num=1&page_grp=1&stu_code="+map.get("stuap_code")+"&stu_idx="+map.get("stu_idx");
	}
}
