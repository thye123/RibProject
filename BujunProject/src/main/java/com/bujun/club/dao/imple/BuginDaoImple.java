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
		//System.out.println("map : "  + map);
		List<ClubVo> clublist  = (List<ClubVo>) map.get("result");
		//System.out.println("Daoimpl List : " + clublist.toString()  ) ;
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
		// System.out.println("Onedata" + cl.toString());
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
	public void uptproc(MultipartFile file, HashMap<String, Object> map,HttpServletRequest req) {
		sqlsession.update("Bugin.Uptdata",map);
	}

	@Override //검색 관련 ajax 리스트 보여주는 부분 
	public List<SearchVo> AjaxkeyList(HashMap<String, Object> map) {
		//System.out.println("DaoImpl "+ map);
		
		sqlsession.selectList("Bugin.Ajax",map);

		int page = Integer.parseInt(String.valueOf(map.get("page")));
		if(page > 1) {
			map.put("page", "1");
		}
		
		//System.out.println("map의 윛 "+ map);
		
		List<SearchVo> clist  
		= (List<SearchVo>) map.get("result");
		
		//System.out.println("Daoimple에서 적용되는ㄱ ㅏㅄ " + clist.toString());
		return clist;
	}

	
	@Override //파일 관련 부분 
	public void insertdata(MultipartFile file, HashMap<String, Object> map
			, HttpServletRequest req) {
		sqlsession.insert("Bugin.Indata",map);
	}

	//검색 해서 페이징 뿌려주는건데
	@Override
	public SearchVo pagingajax(HashMap<String, Object> map) {

		sqlsession.selectOne("Bugin.paging",map);
		SearchVo vo = new SearchVo();
		//System.out.println("DaoImpl" + map.get("count"));
		return vo;
	}

	@Override
	public ClubMember getName(String clu_code) {
		System.out.println("getName" + clu_code);
		
		ClubMember member = sqlsession.selectOne("Bugin.memberName",clu_code);
		System.out.println(member.toString());
		return member;
	}

}
