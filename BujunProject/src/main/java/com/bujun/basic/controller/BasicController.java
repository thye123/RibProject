package com.bujun.basic.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bujun.member.service.LoginService;
import com.bujun.member.vo.MemberVo;

@Controller
public class BasicController {

	
	@Autowired
	private LoginService loginService; 
	
	@RequestMapping("/")
	public String Main(HttpSession session) {
		
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String login_name = authentication.getName();
		
		MemberVo memberVo = new MemberVo();
		HashMap<String, Object> map = new HashMap<>();
		
		
		
		if(!login_name.equals("anonymousUser")) {
			
			map.put("mem_id", login_name);
			memberVo = loginService.getMember(map);		
			session.setAttribute("mem_name", memberVo.getMem_name());
			session.setAttribute("rimem_num", memberVo.getRimem_num());
			
			System.out.println("로그인됨:::::::::::::::::::: "+ login_name);
				
		} else {
			System.out.println("로그인안됨:::::::::::::::::::: "+ login_name);						
		}

			
		return "user/main/index";
	}

	
	@RequestMapping("/test")
	public String Test(@RequestParam HashMap<String, Object> map,
			Model model) {
		
		model.addAttribute("menu", map);
		
		return "user/main/test";
	}
	
	
	
	
	//security test ----> 나중에 지울거임
	@RequestMapping("/sample/all")
	public String All() {
		return "sample/all";
	}

	@RequestMapping("/sample/member")
	public String Member() {
		return "sample/member";
	}	
	
	@RequestMapping("/sample/admin")
	public String Admin() {
		return "sample/admin";
	}		
	
	@RequestMapping("/accessError")
	public String AccessError() {
		return "sample/accessError";
	}			
	

	@RequestMapping("/customLogin")
	public String customLogin() {
		return "sample/customLogin";
	}		

	
	@RequestMapping("/customLogout")
	public String customLogout() {
		return "sample/customLogout";
	}	
	

	
	

	
	

		
}
