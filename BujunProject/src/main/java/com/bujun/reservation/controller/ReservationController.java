package com.bujun.reservation.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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
	{model.addAttribute("menu", map);
		/*로그인 조건 */
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));		
		
		String re_code = "";
		
		ModelAndView mv = new ModelAndView();
			
		   Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		      String login_name = authentication.getName();
		    
		     
		      if(!login_name.equals("anonymousUser")) {
		    		
		    		if(m1.equals("02")&&m2.equals("04")) {
		    			re_code = "CAT0020"; 
		    			map.put("re_code", re_code);
		    			map.put("res_memid", login_name);
		    			List<ReservationVo> rv = reservationservice.getClassID(map);
		    			List<ReservationVo> list = reservationservice.cancle(map);
		    			
		    			mv.addObject("list",list);
		    			mv.addObject("rv",rv);
		    			mv.addObject("m1",m1);
		    			mv.addObject("m2",m2);
		    			mv.setViewName("user/sub/sub02/reservation");
		    		}
		    		
		    		if(m1.equals("02")&&m2.equals("04")&&m3.equals("02")) {
		    			re_code = "CAT0021"; //ㅂㅜㅁㅗㅋㅗ
		    			map.put("re_code", re_code);
		    			map.put("res_memid", login_name);
		    			List<ReservationVo> rv = reservationservice.getClassID(map);
		    			
		    			//System.out.println("값" + rv.toString());
		    			List<ReservationVo> list = reservationservice.cancle(map);
		    			mv.addObject("list",list);
		    			mv.addObject("rv",rv);
		    			mv.addObject("m1",m1);
		    			mv.addObject("m2",m2);
		    			mv.addObject("m3",m3);
		    			mv.setViewName("user/sub/sub02/reference");
		    		}
		    		
		    		
		      }else {
		    	  mv.setViewName("user/sub/sub08/login");
		      }
		      

		/*로그인 조건 끝 */
		


		return mv;
	}
	

	@RequestMapping("/reserve/detail")
	
	public ModelAndView resDetail(@RequestParam HashMap<String , Object> map ,Model model)
	{model.addAttribute("menu", map);
		ModelAndView mv = new ModelAndView();
		//System.out.println("상세보기 map" + map);
		mv.addObject("seat_code",map.get("seat_code"));
		mv.addObject("firstdate",map.get("firstdate"));
		mv.addObject("sedate",map.get("sedate"));
		mv.addObject("area_code",map.get("area_code"));
		mv.setViewName("user/sub/sub02/deatal");
		return mv;
		
	}

	@RequestMapping("/reserve/insert")
	
	public String msg(@RequestParam HashMap<String , Object> map , Model model)
	{model.addAttribute("menu", map);
		//System.out.println("map:" + map);
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		String m3 = String.valueOf(map.get("m3"));
		//System.out.println("tempInsert"  + map);
		int seatcode=Integer.parseInt(String.valueOf(map.get("res_seatcode")));
		String seat = "SEAT0";
		String seats= "SEAT00";
		
		if(seatcode > 0 && seatcode <= 9) {
			String res_seatcode = seats.concat((String)map.get("res_seatcode"));
			map.put("res_seatcode", res_seatcode);
		}
		
		if(seatcode > 9) {
			String res_seatcode = seat.concat((String)map.get("res_seatcode"));
			map.put("res_seatcode", res_seatcode);
		}
		
		reservationservice.getInsert(map);
		return "redirect:/reserve?m1="+m1+"&m2="+m2+"&m3="+m3;
				
	}

	@RequestMapping("/reserve/settingAjax")
	
	public ModelAndView DelAjax(@RequestParam HashMap<String, Object>map ,Model model)
	{model.addAttribute("menu", map);
		ModelAndView mv= new ModelAndView();
		reservationservice.DelAjax(map);
		mv.setViewName("redirect:/reserve");
		return mv;
		
	}

	@RequestMapping("/reserve/update")
	public String updateReserve(@RequestParam HashMap<String, Object> map ,Model model) {
		model.addAttribute("menu", map);
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		String m3 = String.valueOf(map.get("m3"));
		
		reservationservice.upReserve(map);
		return "redirect:/reserve?m1=02&m2=04";
	}
	
	
	@RequestMapping("/reserve/cancle")
	public String cancel(@RequestParam HashMap<String, Object> map ,Model model) {
		model.addAttribute("menu", map);
		//ModelAndView mv= new ModelAndView();
		
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		String m3 = String.valueOf(map.get("m3"));
		System.out.println("취소 정보 map" + map);
		reservationservice.deleteSet(map);
		return "redirect:/reserve?m1="+m1+"&m2="+m2+"&m3="+m3;

	}
	
	
	@RequestMapping("/reserve/out")
	public String out(@RequestParam HashMap<String, Object> map ,Model model) {
		model.addAttribute("menu", map);
		reservationservice.outSeat(map);
		return "redirect:/reserve?m1=02&m2=04";
	}
	
	
	
	@RequestMapping("/reserve/outsetted")
	public String timeOut(@RequestParam HashMap<String, Object> map ,Model model) {
		model.addAttribute("menu", map);
		ModelAndView mv = new ModelAndView();
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		String m3 = String.valueOf(map.get("m3"));
		String location = "";
		if(m1.equals("02")&&m2.equals("04")) {
			reservationservice.getDeleteSeat(map);
			location = "redirect:/reserve?m1="+ m1 + "&m2=" + m2;
		}
		
		if(m1.equals("02")&&m2.equals("04")&&m3.equals("02")) {
			reservationservice.getDeleteSeat(map);
			location = "redirect:/reserve?m1="+ m1 + "&m2=" + m2 + "&m3=" + m3;
		}
		return location;
	}
	
}

