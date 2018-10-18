package com.bujun.reservation.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.bujun.reservation.service.ReservationService;
import com.bujun.reservation.vo.ReservationVo;


@Controller
public class ReservationController {
	
	@Autowired
	private ReservationService  reservationservice;
	
	
	@RequestMapping("/reserve")
	public ModelAndView reserInfor(@RequestParam HashMap<String, Object> map, Model model)
	{
		ModelAndView mv = new ModelAndView();
		String re_code = "";
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));		
		if(m1.equals("02")&&m2.equals("04")) {
			re_code = "CAT0020"; 
			map.put("re_code", re_code);
			List<ReservationVo> rv = reservationservice.getClassID(map);
			System.out.println("값" + rv.toString());
			mv.addObject("rv",rv);
			mv.addObject("m1",m1);
			mv.addObject("m2",m2);
			mv.setViewName("user/sub/sub02/reservation");
		}
		
		if(m1.equals("02")&&m2.equals("04")&&m3.equals("02")) {
			re_code = "CAT0021";
			map.put("re_code", re_code);
			List<ReservationVo> rv = reservationservice.getClassID(map);
			System.out.println("값" + rv.toString());
			mv.addObject("rv",rv);
			mv.addObject("m1",m1);
			mv.addObject("m2",m2);
			mv.addObject("m3",m3);
			mv.setViewName("user/sub/sub02/reference");
		}

		return mv;
	}
	

	@RequestMapping("/reserve/detail")
	
	public ModelAndView resDetail(@RequestParam HashMap<String , Object> map)
	{
		ModelAndView mv = new ModelAndView();
		System.out.println("상세보기 map" + map);
		mv.addObject("seat_code",map.get("seat_code"));
		mv.addObject("firstdate",map.get("firstdate"));
		mv.addObject("sedate",map.get("sedate"));
		mv.addObject("area_code",map.get("area_code"));
		mv.setViewName("user/sub/sub02/deatal");
		return mv;
		
	}

	@RequestMapping("/reserve/insert")
	
	public String msg(@RequestParam HashMap<String , Object> map)
	{
		System.out.println("tempInsert"  + map);
		reservationservice.getInsert(map);
		return "user/sub/sub02/msg";
	}

	@RequestMapping("/reserve/settingAjax")
	
	public ModelAndView DelAjax(@RequestParam HashMap<String, Object>map)
	{
		ModelAndView mv= new ModelAndView();
		reservationservice.DelAjax(map);
		//System.out.println("삭제하고 조회한 결과 값 " + list.toString());
		mv.setViewName("redirect: /reserve");
		return mv;
		
	}

	
}
