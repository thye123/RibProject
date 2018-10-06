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

	//클릭시 -- > 각 동아리 별 게시판으로 가는 list 입니다. 
	public List<ClubVo> getClub(HashMap<String, Object> map);

	public List<ClubMember>  getView();
	
	public List<ClubMember> getCode();

	public List<ClubVo> getBoardList(HashMap<String, Object> map);

	public void insertjoin(HashMap<String, Object> map);

	public ClubVo getOnedata(HashMap<String, Object> map);

	public void dataDel(HashMap<String, Object> map);

	public void uptproc(HashMap<String, Object> map);

	//파일
	public void insertdata(MultipartFile file, HashMap<String, Object> map, HttpServletRequest req);
	
	//검색 ajax
	public List<SearchVo> AjaxkeyList(HashMap<String, Object> map);
	
	//페이징 관련 ajax
	public void pagingajax(HashMap<String, Object> map);

	public ClubMember getName(String clu_code);

	//public Filedownload filedown(HashMap<String, Object> map, HttpServletResponse res);

}
