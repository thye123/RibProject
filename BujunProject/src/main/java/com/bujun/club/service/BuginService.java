package com.bujun.club.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

import com.bujun.club.service.imple.Filedownload;
import com.bujun.club.vo.ClubMember;
import com.bujun.club.vo.ClubVo;
import com.bujun.club.vo.SearchVo;

public interface BuginService {

	//Ŭ���� -- > �� ���Ƹ� �� �Խ������� ���� list �Դϴ�. 
	public List<ClubVo> getClub(HashMap<String, Object> map);

	public List<ClubMember>  getView();
	
	public List<ClubMember> getCode();

	public List<ClubVo> getBoardList(HashMap<String, Object> map);

	public void insertjoin(HashMap<String, Object> map);

	public ClubVo getOnedata(HashMap<String, Object> map);

	public void dataDel(HashMap<String, Object> map);

	public void uptproc(MultipartFile file, HashMap<String, Object> map, HttpServletRequest req);

	//����
	public void insertdata(MultipartFile file, HashMap<String, Object> map, HttpServletRequest req);
	
	//�˻� ajax
	public List<SearchVo> AjaxkeyList(HashMap<String, Object> map);
	
	//����¡ ���� ajax
	public SearchVo pagingajax(HashMap<String, Object> map);

	public ClubMember getName(String clu_code);

	//public Filedownload filedown(HashMap<String, Object> map, HttpServletResponse res);

}