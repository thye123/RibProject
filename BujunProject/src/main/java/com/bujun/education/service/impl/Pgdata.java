package com.bujun.education.service.impl;

import java.util.HashMap;
import com.bujun.education.vo.EduVo;

public class Pgdata {

	public EduVo getPaging(HashMap<String, Object> map) {
		
		EduVo vo = new EduVo();
		
		int page      = Integer.parseInt(String.valueOf(map.get("page")));
		int pagecount = Integer.parseInt(String.valueOf(map.get("pagecount")));
		int pagegrp   = Integer.parseInt(String.valueOf(map.get("pagegrp")));
		
		int cnt   =Integer.parseInt(String.valueOf(map.get("cnt")));
		
		System.out.println("cnt: " + cnt);
		
		int tempEnd = (int)(Math.ceil(page / 10.0) * 10); 
		System.out.println("tempEnd: " + tempEnd);

		
		
		int end  = (pagegrp * pagecount);
		vo.setEnd(end);
		
		int startemp = ( (pagegrp-1) * pagecount) +1;
		vo.setStart(startemp);
		
		int cntMake = 0;
		if(cnt % 10 == 0) {
			cntMake = (cnt/10);
			vo.setEnd(end);
			//System.out.println("temps1" + cntMake);
			vo.setEnd(cntMake);
		}else {
			
			cntMake =  (cnt/10)+1;
			//System.out.println("temps2" + cntMake);
			
			if(cntMake<end) {
				vo.setEnd(cntMake);
				//System.out.println("temps2" + cntMake);
			}
			
			vo.setTmep(cntMake);
		}
		

		if(page!=1) {
			
			//vo.isNext(true);
			vo.setPrev(true);
		}else {
			if(page==1) {
				//this.prev=false;
				vo.setPrev(false);
			}
		}
		
	//	this.next = this.end * 10 < this.count; 
		
		vo.setTempEnd(tempEnd);
		vo.setPage(page);
	//	vo.setNext(next);
		vo.setCnt(cntMake);
		vo.setPagecount(pagecount);
		vo.setPagegrp(pagegrp);
		return vo; 

		
	}

}
