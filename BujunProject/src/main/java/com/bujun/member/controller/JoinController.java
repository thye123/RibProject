package com.bujun.member.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bujun.member.service.JoinService;


@Controller
public class JoinController {
	
	@Autowired
	private JoinService Joinservice; 
	
	@RequestMapping("/idcheck")
	@ResponseBody
	public int FileDelete(@RequestParam HashMap<String, Object> map) {
		
		int result = Joinservice.getJoinIdCheck(map);
		
		return result;
	}
	
	
	
	@RequestMapping("/joinForm")
	public String JoinForm(@RequestParam HashMap<String, Object> map, Model model) {
		
		
		map.put("mem_email", (String)map.get("email1") + "@" + map.get("email2"));
		map.put("mem_phone", (String) map.get("tel1") + map.get("tel2") + map.get("tel3"));
		map.put("zipcode", map.get("post"));
		map.put("mem_adress", map.get("addr1"));
		map.put("mem_deadress", map.get("addr2"));
		map.put("mem_auth", "ROLE_MEMBER");
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder(); //암호화
		String Password = passwordEncoder.encode((String)map.get("mem_pass")); //암호화된 패스워드
		
		map.put("mem_pass", Password);
		
		
		Joinservice.UpdateJoin(map);
		
		model.addAttribute("msg", "회원가입 완료 되었습니다.");
		return "user/sub/sub08/join_msg";
	}
	
	
	@RequestMapping("/mypage")
	public String Mypage(@RequestParam HashMap<String, Object> map, Model model) {
		
		return "user/sub/sub08/mypage";
	}	
	
	
	
	
}
