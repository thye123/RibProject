package com.bujun.club.dao.imple;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.io.ResolverUtil.IsA;
import org.apache.ibatis.jdbc.Null;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.bujun.club.dao.BuginDao;
import com.bujun.club.service.imple.PagingData;
import com.bujun.club.vo.ClubMember;
import com.bujun.club.vo.ClubVo;
import com.bujun.club.vo.SearchVo;

@Repository("bugindao")
public class BuginDaoImple implements BuginDao {
	
	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public List<ClubVo> getClub(HashMap<String, Object> map) {
		String clb_clucode = (String)map.get("clb_clucode");

		sqlsession.selectList("Bugin.CluBoard" , map);
		System.out.println("map : "  + map);
		List<ClubVo> clublist  = (List<ClubVo>) map.get("result");
		System.out.println("Daoimpl List : " + clublist.toString()  ) ;
		return clublist;
	}
	
	@Override
	public List<ClubMember> getView() {
		List<ClubMember> clist = sqlsession.selectList("Bugin.CluView");
		return clist;
	}
	
	@Override
	public List<ClubMember>  getCode() {
		List<ClubMember> clist = sqlsession.selectList("Bugin.CodeView");
		return clist;
	}
	
	@Override
	public List<ClubVo> getBoardList(HashMap<String, Object> map) {
		sqlsession.selectList("Bugin.BoardList",map);
		List<ClubVo> cmem =  (List<ClubVo>) map.get("result");
		return cmem;
	}
	
	@Override
	public void insertjoin(HashMap<String, Object> map) {
		sqlsession.insert("Bugin.InsertJoin",map);
	}
	
	@Override
	public ClubVo getOnedata(HashMap<String, Object> map) {
		 sqlsession.selectOne("Bugin.Onedata",map);
		 List<ClubVo> cl =  (List<ClubVo>) map.get("result");
		 ClubVo club = cl.get(0);
		 return club;
	}

	@Override
	public void dataDel(HashMap<String, Object> map) {
		String pre_idx = (String)map.get("clb_idx");
		int clb_idx = Integer.parseInt(pre_idx);
		map.put("clb_idx", clb_idx);
		sqlsession.delete("Bugin.dataDel",map);
		
	}

	@Override
	public void uptproc(HashMap<String, Object> map) {
		
		sqlsession.update("Bugin.Uptdata",map);
	}

	@Override //검색 관련 ajax 리스트 보여주는 부분 
	public List<SearchVo> AjaxkeyList(HashMap<String, Object> map) {

		sqlsession.selectList("Bugin.Ajax",map);

		List<SearchVo> clist  
		= (List<SearchVo>) map.get("result");
		return clist;
	}

	
	@Override //파일 관련 부분 
	public void insertdata(MultipartFile file, HashMap<String, Object> map
			, HttpServletRequest req) {
		sqlsession.insert("Bugin.Indata",map);
	}

	//검색 해서 페이징 뿌려주는건데
	@Override
	public void pagingajax(HashMap<String, Object> map) {

		sqlsession.selectOne("Bugin.paging",map);

	}

	@Override
	public ClubMember getName(HashMap<String, Object> map) {
		ClubMember member = sqlsession.selectOne("Bugin.memberName",map);
		return member;
	}

}
