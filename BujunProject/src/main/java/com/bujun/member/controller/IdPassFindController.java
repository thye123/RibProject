package com.bujun.member.controller;

import java.util.HashMap;
import javax.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.bujun.member.service.LoginService;
import com.bujun.member.vo.MemberVo;

@Controller
public class IdPassFindController {

	@Autowired
	private LoginService loginService; 
	
	@Autowired
	private JavaMailSender mailSender;
	

	@RequestMapping("/idfind")
	public String Idfind(@RequestParam HashMap<String, Object> map, Model model) {
		
				
		return "user/sub/sub08/idfind";
	}
	
	
	
	@RequestMapping("/find02")
	public String Find02(@RequestParam HashMap<String, Object> map, Model model) {
		
		int passChk = loginService.getPassChk(map);

		
		//MemberVo vo = loginService.getPassChk(map);
		
		System.out.println(passChk);
		
		if(passChk == 0) {
			model.addAttribute("msg", "아이디와 이메일이 일치하지 않습니다.");
			return "user/sub/sub08/error_msg";
		} else {
			
			String ranpw = randomPw();
			
			String email = loginService.getPassChkEmail(map);
			
			System.out.println("email : " + email);
			
		    String setfrom = "bjlibrary01@gmail.com";         
		    String tomail  = email;     							// 받는 사람 이메일
		    String title   = "부전도서관 임시비밀번호입니다.";      // 제목
		    String content = "임시비밀번호 : " + ranpw;    			// 내용
		   
		    try {
		      MimeMessage message = mailSender.createMimeMessage();
		      MimeMessageHelper messageHelper 
		                        = new MimeMessageHelper(message, true, "UTF-8");
		 
		      messageHelper.setFrom(setfrom);  // 보내는사람 생략하거나 하면 정상작동을 안함
		      messageHelper.setTo(tomail);     // 받는사람 이메일
		      messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
		      messageHelper.setText(content);  // 메일 내용
		     
		      mailSender.send(message);
		    } catch(Exception e){
		      System.out.println(e);
		    }
		    
			model.addAttribute("msg", "메일 발송됨");
			return "user/sub/sub08/error_msg";
		}
		
		
	}
	
	
	//임시 비밀번호 생성
	private static String randomPw(){ 
		char pwCollection[] = new char[] {  
                '1','2','3','4','5','6','7','8','9','0',  
                'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',  
                'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',  
                '!','@','#','$','%','^','&','*','(',')'};//배열에 선언  

		String ranPw = "";  

		for (int i = 0; i < 10; i++) {  
			int selectRandomPw = (int)(Math.random()*(pwCollection.length));//Math.rondom()은 0.0이상 1.0미만의 난수를 생성해 준다.  
			ranPw += pwCollection[selectRandomPw];  
		}  
		return ranPw;  
	} 
	
}