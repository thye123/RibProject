package com.bujun.notice.vo;

public class FileVo {
	private int file_idx;
	private int file_boardidx;
	private String file_boardcode;
	private String file_filename;
	private String file_size;
	private String file_filerealname;
	private String file_ext;
	private String file_regdate;
	
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
	
	@Override
	public String toString() {
		return "FileVo [file_idx=" + file_idx + ", file_boardidx=" + file_boardidx + ", file_boardcode="
				+ file_boardcode + ", file_filename=" + file_filename + ", file_size=" + file_size
				+ ", file_filerealname=" + file_filerealname + ", file_ext=" + file_ext + ", file_regdate="
				+ file_regdate + "]";
	}
	
}
