package com.bujun.club.vo;

public class ClubVo {
		
	//리스트를 가져 오기 위한 VO 
	
		private int clb_idx;
		private String clb_clucode;	
		private String clb_writer;	
		private int clb_rimemnum;	
		private String clb_email;	
		private int clb_open;	
		private String clb_pass;	
		private String clb_title;	
		private String clb_content;	
		private String clb_regdate;	
		private int clb_count;
		private String keyfield;
		private String keyword;
		private String file_filename;
		
		//페이징 관련 시작 
		private int  count;
		private int start;
		private int end;
		private boolean prev;
		private boolean next;
		private int pagegrp;
		private int page;
		private int pagecount;
		private int tempEnd;
		//테스타할 임의의 변수 
		private int tmep; 
		
		public int getTmep() {
			return tmep;
		}

		public void setTmep(int tmep) {
			this.tmep = tmep;
		}

		public void setCount(int count) {
			this.count = count;
		}

		public void setPage(int page) {
			this.page = page;
		}

		public ClubVo() {}
		
		public ClubVo(int page , int pagecount , int count , int pagegrp) {
	
			this.page	   = page;
			this.pagecount = pagecount;
			this.count=count;
			this.pagegrp= pagegrp;
			calcPage(page,pagecount,count,pagegrp);
			//calcPage();
		}
		
		

		public int getTempEnd() {
			return tempEnd;
		}

		public void setTempEnd(int tempEnd) {
			this.tempEnd = tempEnd;
		}

		public int getPagecount() {
			return pagecount;
		}

		public void setPagecount(int pagecount) {
			this.pagecount = pagecount;
		}

		public String getFile_filename() {
			return file_filename;
		}

		public void setFile_filename(String file_filename) {
			this.file_filename = file_filename;
		}

		public int getPagegrp() {
			return pagegrp;
		}

		public void setPagegrp(int pagegrp) {
			this.pagegrp = pagegrp;
		}


		public Integer getPage() {
			return page;
		}

		public void setPage(Integer page) {
			if (page < 1) {
				this.page = 1;
				return;
			}
			this.page = page;
		}

		public void setCount(Integer count) {
			if (count < 1) {
				return;
			}
			this.count = count;
	
		}

		
		public int getStart() {
			return start;
		}

		public void setStart(int start) {
			this.start = start;
		}

		public int getEnd() {
			return end;
		}

		public void setEnd(int end) {
			this.end = end;
		}

		public boolean isPrev() {
			return prev;
		}

		public void setPrev(boolean prev) {
			this.prev = prev;
		}

		public boolean isNext() {
			return next;
		}

		public void setNext(boolean next) {
			this.next = next;
		}

		public Integer getCount() {
			return count;
		}

		public String getKeyfield() {
			return keyfield;
		}
		public void setKeyfield(String keyfield) {
			this.keyfield = keyfield;
		}
		public String getKeyword() {
			return keyword;
		}
		public void setKeyword(String keyword) {
			this.keyword = keyword;
		}
		public int getClb_idx() {
			return clb_idx;
		}
		public void setClb_idx(int clb_idx) {
			this.clb_idx = clb_idx;
		}
		public String getClb_clucode() {
			return clb_clucode;
		}
		public void setClb_clucode(String clb_clucode) {
			this.clb_clucode = clb_clucode;
		}
		public String getClb_writer() {
			return clb_writer;
		}
		public void setClb_writer(String clb_writer) {
			this.clb_writer = clb_writer;
		}
		public int getClb_rimemnum() {
			return clb_rimemnum;
		}
		public void setClb_rimemnum(int clb_rimemnum) {
			this.clb_rimemnum = clb_rimemnum;
		}
		public String getClb_email() {
			return clb_email;
		}
		public void setClb_email(String clb_email) {
			this.clb_email = clb_email;
		}
		public int getClb_open() {
			return clb_open;
		}
		public void setClb_open(int clb_open) {
			this.clb_open = clb_open;
		}
		public String getClb_pass() {
			return clb_pass;
		}
		public void setClb_pass(String clb_pass) {
			this.clb_pass = clb_pass;
		}
		public String getClb_title() {
			return clb_title;
		}
		public void setClb_title(String clb_title) {
			this.clb_title = clb_title;
		}
		public String getClb_content() {
			return clb_content;
		}
		public void setClb_content(String clb_content) {
			this.clb_content = clb_content;
		}
		public String getClb_regdate() {
			return clb_regdate;
		}
		public void setClb_regdate(String clb_regdate) {
			this.clb_regdate = clb_regdate;
		}
		public int getClb_count() {
			return clb_count;
		}
		public void setClb_count(int clb_count) {
			this.clb_count = clb_count;
		}
		
		
		
		//method
		public ClubVo calcPage(int page, int pagecount, int count
				,int pagegrp) { // page변수는 현재 페이지번호 
			ClubVo vo = new ClubVo();
			//끝번호 
			
			int tempEnd = (int)(Math.ceil(page / 10.0) * 10); 
			//끝번호 구하기래 
			
			int end  = (pagegrp * pagecount);
			vo.setEnd(end);
			//시작페이지 
			int startemp = ( (pagegrp-1) * pagecount) +1;
			vo.setStart(startemp);
			//끝 번호 구하기 입니다 
			
			int temps = count % 10;
			
			if(temps==0) {
				int temp = (count/10);
				
				vo.setEnd(end);
				System.out.println("temps1" + temp);
				vo.setTmep(temp);
			}else {
				
				int temp =  (count/10)+1;
				
				if(temp<end) {
					vo.setEnd(temp);
					System.out.println("temps2" + temp);
					vo.setTmep(temp);
				}
			}
			
			
			/*this.prev = this.start != 1;*/
			if(page!=1) {
/*				//
				현재 있는 페이지가 1이 아니면 
				시작이 1 이 아니면 이전으로 돌릴수 있도록 */
				this.prev= true;
				vo.setPrev(true);
			}else {
				if(page==1) {
					//1이면 이전버튼이 활성화 못되게 
					this.prev=false;
					vo.setPrev(false);
				}
			}
			this.next = this.end * 10 < this.count; 
			
			vo.setTempEnd(tempEnd);
			vo.setPage(page);
			vo.setNext(next);
			vo.setTmep(temps);
			vo.setCount(count);
			vo.setPagecount(pagecount);
			vo.setPagegrp(pagegrp);
			return vo; 
		
		}

		@Override
		public String toString() {
			return "ClubVo [count=" + count + ", start=" + start + ", end=" + end + ", prev=" + prev + ", next=" + next
					+ ", pagegrp=" + pagegrp + ", page=" + page + ", pagecount=" + pagecount + ", tempEnd=" + tempEnd
					+ ", tmep=" + tmep + "]";
		}






}
