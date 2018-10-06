package com.bujun.club.vo;

public class SearchVo {
	
		//�ʵ� 
		private int clb_idx;
		private String clb_clucode;	
		private String keyfield;
		private String keyword;
		private String clb_writer;	
		private int clb_rimemnum;	
		private String clb_email;	
		private int clb_open;	
		private String clb_pass;	
		private String clb_title;	
		private String clb_content;	
		private String clb_regdate;	
		private int clb_count;
	
		//����¡ ���� ���� 
		private int page; //������ ��ȣ 
		private int pagecount; //1�������� ������ ������ ���ڵ� �� 
		private int  count; //��ü ������ Į���� (DB ���� board_Cnt �� �Ѿ��)
		private int start; //���� 
		private int end; //�� 
		private boolean prev; //���� 
 		private boolean next; //���� 
 		private int tempEnd;
 		private int pagegrp;
 		
 		//������ 
		//constrctor (������)

		public SearchVo() {}
		
		//������ ����� ���� ������ 
		
		//1 ��ü Į���� �������� 
		public SearchVo(int count, int page, int pagecount , int pagegrp) {
			this.count = count;
			this.page	   = page;
			this.pagecount = pagecount;
			this.pagegrp= pagegrp;
			calcPage(page,pagecount,count,pagegrp);
		}


 		//get/set
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
		
		public int getPage() {
			return page;
		}

		public int getPagegrp() {
			return pagegrp;
		}

		public void setPagegrp(int pagegrp) {
			this.pagegrp = pagegrp;
		}

		public int getPagecount() {
			return pagecount;
		}

		public void setPagecount(Integer pagecount) {
			this.pagecount = pagecount;
		}

		public void setPage(Integer page) {
			if (page < 1) {
				this.page = 1;
				return;
			}
			this.page = page;
			
			
		}

		public void setCount(Integer count) {
	
			this.count = count;
			
			System.out.println("�� �÷� ���� = " + count);

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

		public int getCount() {
			return count;
		}

		
		public int getTempEnd() {
			return tempEnd;
		}

		public void setTempEnd(int tempEnd) {
			this.tempEnd = tempEnd;
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

		
		//method
		public SearchVo calcPage(int page, int pagecount, int count
				,int pagegrp) { // page������ ���� ��������ȣ 
			SearchVo vo = new SearchVo();
			//����ȣ 
			int tempEnd = (int)(Math.ceil(page / 10.0) * 10); 
			
			//���������� 
			int startemp = ( (pagegrp-1) * pagecount) +1;
			vo.setStart(startemp);
			
			//�� ��ȣ ���ϱ� �Դϴ� 
			int temps = count % 10;
			if(temps==0) {
				int temp = (count/10);
				vo.setEnd(temp);
			}else {
				int temp =  (count/10)+1;
				vo.setEnd(temp);
			}

			//vo Ÿ������ ���� �־��ش� 
			vo.setTempEnd(tempEnd);
			vo.setPage(page);
			vo.setPrev(prev);
			vo.setNext(next);
			//vo.setStart(start);
			vo.setCount(count);
			vo.setPagegrp(pagegrp);
			return vo; 
		
		}

		@Override
		public String toString() {
			return "SearchVo [clb_idx=" + clb_idx + ", clb_clucode=" + clb_clucode + ", keyfield=" + keyfield
					+ ", keyword=" + keyword + ", clb_writer=" + clb_writer + ", clb_rimemnum=" + clb_rimemnum
					+ ", clb_email=" + clb_email + ", clb_open=" + clb_open + ", clb_pass=" + clb_pass + ", clb_title="
					+ clb_title + ", clb_content=" + clb_content + ", clb_regdate=" + clb_regdate + ", clb_count="
					+ clb_count + ", page=" + page + ", pagecount=" + pagecount + ", count=" + count + ", start="
					+ start + ", end=" + end + ", prev=" + prev + ", next=" + next + ", tempEnd=" + tempEnd
					+ ", pagegrp=" + pagegrp + "]";
		}
		
}
