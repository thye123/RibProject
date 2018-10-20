package com.bujun.club.dao;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.bujun.club.vo.ClubMember;
import com.bujun.club.vo.ClubVo;
import com.bujun.club.vo.SearchVo;
import com.bujun.member.vo.MemberVo;

public interface BuginDao {

	//Ŭ���� -- > �� ���Ƹ� �� �Խ������� ���� list �Դϴ�. 
	public List<ClubVo> getClub(HashMap<String, Object> map);

	public List<ClubMember> getView();
	
	public List<ClubMember> getCode();

	public List<ClubVo> getBoardList(HashMap<String, Object> map);

	public void insertjoin(HashMap<String, Object> map);

	public ClubVo getOnedata(HashMap<String, Object> map);

	public void dataDel(HashMap<String, Object> map);

	public void uptproc(MultipartFile file, HashMap<String, Object> map,HttpServletRequest req);

	public void insertdata(MultipartFile file, HashMap<String, Object> map, HttpServletRequest req);
	
	//ajaxKeyList 
	public List<SearchVo> AjaxkeyList(HashMap<String, Object> map);
	
	//����¡ ajax
	public SearchVo pagingajax(HashMap<String, Object> map);

	public ClubMember getName(String clu_code);
	
	//회원번호 들고 오는것 
	public MemberVo getRimemNum(String clb_writer);

	public ClubVo getClbPass(int idx);

	public List<ClubVo> getApplyList(HashMap<String, Object> map);

	public void upApplyAccept(HashMap<String, Object> map);

}
