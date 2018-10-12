package com.bujun.member.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bujun.member.service.JoinService;
import com.bujun.member.vo.MemberVo;


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
		map.put("mem_phone", (String) map.get("tel1") + "-" + map.get("tel2") + "-" + map.get("tel3"));
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
		
		MemberVo vo = Joinservice.getUser(map);
		model.addAttribute("user", vo);
				
		return "user/sub/sub08/mypage";
	}	
	
	@RequestMapping("/mypageUpdate")
	public String MypageUpdate(@RequestParam HashMap<String, Object> map, Model model) {
		
		MemberVo vo = Joinservice.getUser(map);
		model.addAttribute("user", vo);
				
		return "user/sub/sub08/mypageUpdate";
	}		
	
	
	@RequestMapping("/mypageUpdateForm")
	public String MypageUpdateForm(@RequestParam HashMap<String, Object> map, Model model) {
		
		map.put("mem_email", (String)map.get("email1") + "@" + map.get("email2"));
		map.put("mem_phone", (String) map.get("tel1") + "-" + map.get("tel2") + "-" + map.get("tel3"));
		map.put("zipcode", map.get("post"));
		map.put("mem_adress", map.get("addr1"));
		map.put("mem_deadress", map.get("addr2"));
		
		
		if(map.get("mem_pass").equals("")) { //비밀번호 변경X			
			Joinservice.MypageUpdate(map);
		} else { //비밀번호 변경O
			
			BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder(); //암호화
			String Password = passwordEncoder.encode((String)map.get("mem_pass")); //암호화된 패스워드
			
			map.put("mem_pass", Password);
			
			Joinservice.MypageUpdatePass(map);
		}
		
		model.addAttribute("msg", "수정되었습니다.");
				
		return "user/sub/sub08/update_msg";
	}
	
	
	
	@RequestMapping("/mypageDelete")
	public String MypageDelete(@RequestParam HashMap<String, Object> map, Model model,HttpSession session) {
		
		
		System.out.println(map.get("mem_id"));
		
		Joinservice.getUserDelete(map);
				
		model.addAttribute("msg", "탈퇴하였습니다.");	
		
		session.removeAttribute("mem_name");
		session.removeAttribute("mem_id");
		session.removeAttribute("rimem_num");
		
		
		return "user/sub/sub08/delete_msg";
	}	
	
	
}
