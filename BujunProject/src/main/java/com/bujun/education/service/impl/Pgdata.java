package com.bujun.education.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.bujun.education.vo.EduVo;

public class Pgdata {

	public EduVo getPaging(HashMap<String, Object> map) {
		
		EduVo vo = new EduVo();
		List<EduVo> vos = new ArrayList<>();
		
		int page      = Integer.parseInt(String.valueOf(map.get("page")));
		int pagecount = Integer.parseInt(String.valueOf(map.get("pagecount")));
		int pagegrp   = Integer.parseInt(String.valueOf(map.get("pagegrp")));
		
		
		int count   =Integer.parseInt(String.valueOf(map.get("cnt")));
		/*		
				(int) map.get("cnt");*/
		System.out.println("map count " +count);
		
		int startpage= ( (pagegrp-1) * pagecount) +1;
		
		int end  = (pagegrp * pagecount);
		
		
		int temps = count % 10;
		
		if(temps==0) {
			int temp = (count/10);
			vo.setEndpage(end);
			System.out.println("temps1" + temp);
		
		}else {
			
			int temp =  (count/10)+1;
			if(temp < end) {
				vo.setEndpage(temp);
			}else {
				vo.setEndpage(end);
			}
		}
		
		vo.setPage(page);
		vo.setPagecount(pagecount);
		vo.setPagegrp(pagegrp);
		vo.setStatrpage(startpage);
		return vo;
		
	}

}
