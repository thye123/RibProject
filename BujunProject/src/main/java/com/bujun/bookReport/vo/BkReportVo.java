package com.bujun.bookReport.vo;

public class BkReportVo {
	private int bd_idx;
	private String bd_catcode;
	private String bd_writer;
	private String bd_rimemnum;
	private String bd_email;
	private String bd_phone;
	private String bd_pass;
	private int bd_open;
	private String bd_title;
	private String bd_content;
	private String bd_regdate;
	private int bd_count;
	private String bd_gubun;
	private int bd_grp;
	private int bd_step;
	
	
	
	//ÆÄÀÏ
	private int file_idx;               
	private int file_boardidx;       
	private String file_boardcode;    
	private String file_filename;    
	private String file_size;        
	private String file_filerealname;  
	private String file_ext;          
	private String file_regdate;   
	
	//
	private int Bd_pass_chk;
	
	
	public BkReportVo() {};
	
	public BkReportVo(int bd_idx, String bd_catcode, String bd_writer, String bd_rimemnum, String bd_email,
			String bd_phone, String bd_pass, int bd_open, String bd_title, String bd_content, String bd_regdate,
			int bd_count, String bd_gubun) {
		this.bd_idx = bd_idx;
		this.bd_catcode = bd_catcode;
		this.bd_writer = bd_writer;
		this.bd_rimemnum = bd_rimemnum;
		this.bd_email = bd_email;
		this.bd_phone = bd_phone;
		this.bd_pass = bd_pass;
		this.bd_open = bd_open;
		this.bd_title = bd_title;
		this.bd_content = bd_content;
		this.bd_regdate = bd_regdate;
		this.bd_count = bd_count;
		this.bd_gubun = bd_gubun;
	}
	public int getBd_idx() {
		return bd_idx;
	}
	public void setBd_idx(int bd_idx) {
		this.bd_idx = bd_idx;
	}
	public String getBd_catcode() {
		return bd_catcode;
	}
	public void setBd_catcode(String bd_catcode) {
		this.bd_catcode = bd_catcode;
	}
	public String getBd_writer() {
		return bd_writer;
	}
	public void setBd_writer(String bd_writer) {
		this.bd_writer = bd_writer;
	}
	public String getBd_rimemnum() {
		return bd_rimemnum;
	}
	public void setBd_rimemnum(String bd_rimemnum) {
		this.bd_rimemnum = bd_rimemnum;
	}
	public String getBd_email() {
		return bd_email;
	}
	public void setBd_email(String bd_email) {
		this.bd_email = bd_email;
	}
	public String getBd_phone() {
		return bd_phone;
	}
	public void setBd_phone(String bd_phone) {
		this.bd_phone = bd_phone;
	}
	public String getBd_pass() {
		return bd_pass;
	}
	public void setBd_pass(String bd_pass) {
		this.bd_pass = bd_pass;
	}
	public int getBd_open() {
		return bd_open;
	}
	public void setBd_open(int bd_open) {
		this.bd_open = bd_open;
	}
	public String getBd_title() {
		return bd_title;
	}
	public void setBd_title(String bd_title) {
		this.bd_title = bd_title;
	}
	public String getBd_content() {
		return bd_content;
	}
	public void setBd_content(String bd_content) {
		this.bd_content = bd_content;
	}
	public String getBd_regdate() {
		return bd_regdate;
	}
	public void setBd_regdate(String bd_regdate) {
		this.bd_regdate = bd_regdate;
	}
	public int getBd_count() {
		return bd_count;
	}
	public void setBd_count(int bd_count) {
		this.bd_count = bd_count;
	}
	public String getBd_gubun() {
		return bd_gubun;
	}
	public void setBd_gubun(String bd_gubun) {
		this.bd_gubun = bd_gubun;
	}

	public int getFile_idx() {
		return file_idx;
	}

	public void setFile_idx(int file_idx) {
		this.file_idx = file_idx;
	}

	public int getFile_boardidx() {
		return file_boardidx;
	}

	public void setFile_boardidx(int file_boardidx) {
		this.file_boardidx = file_boardidx;
	}

	public String getFile_boardcode() {
		return file_boardcode;
	}

	public void setFile_boardcode(String file_boardcode) {
		this.file_boardcode = file_boardcode;
	}

	public String getFile_filename() {
		return file_filename;
	}

	public void setFile_filename(String file_filename) {
		this.file_filename = file_filename;
	}

	public String getFile_size() {
		return file_size;
	}

	public void setFile_size(String file_size) {
		this.file_size = file_size;
	}

	public String getFile_filerealname() {
		return file_filerealname;
	}

	public void setFile_filerealname(String file_filerealname) {
		this.file_filerealname = file_filerealname;
	}

	public String getFile_ext() {
		return file_ext;
	}

	public void setFile_ext(String file_ext) {
		this.file_ext = file_ext;
	}

	public String getFile_regdate() {
		return file_regdate;
	}

	public void setFile_regdate(String file_regdate) {
		this.file_regdate = file_regdate;
	}

	public int getBd_pass_chk() {
		return Bd_pass_chk;
	}

	public void setBd_pass_chk(int bd_pass_chk) {
		Bd_pass_chk = bd_pass_chk;
	}

	public int getBd_grp() {
		return bd_grp;
	}

	public void setBd_grp(int bd_grp) {
		this.bd_grp = bd_grp;
	}

	public int getBd_step() {
		return bd_step;
	}

	public void setBd_step(int bd_step) {
		this.bd_step = bd_step;
	}
	
	
	
	
	
}
