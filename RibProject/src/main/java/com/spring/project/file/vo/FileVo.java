package com.spring.project.file.vo;

public class FileVo {

	private int 	file_idx;
	private int 	file_board_idx;
	private String	file_board_code;
	private String	file_name;
	private String	file_size;
	private String	file_real_name;
	private String	file_ext;
	private String	file_regdate;
	
	public int getFile_idx() {
		return file_idx;
	}
	public void setFile_idx(int file_idx) {
		this.file_idx = file_idx;
	}
	public int getFile_board_idx() {
		return file_board_idx;
	}
	public void setFile_board_idx(int file_board_idx) {
		this.file_board_idx = file_board_idx;
	}
	public String getFile_board_code() {
		return file_board_code;
	}
	public void setFile_board_code(String file_board_code) {
		this.file_board_code = file_board_code;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public String getFile_size() {
		return file_size;
	}
	public void setFile_size(String file_size) {
		this.file_size = file_size;
	}
	public String getFile_real_name() {
		return file_real_name;
	}
	public void setFile_real_name(String file_real_name) {
		this.file_real_name = file_real_name;
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
		return "FileVo [file_idx=" + file_idx + ", file_board_idx=" + file_board_idx + ", file_board_code="
				+ file_board_code + ", file_name=" + file_name + ", file_size=" + file_size + ", file_real_name="
				+ file_real_name + ", file_ext=" + file_ext + ", file_regdate=" + file_regdate + "]";
	}
		
}
