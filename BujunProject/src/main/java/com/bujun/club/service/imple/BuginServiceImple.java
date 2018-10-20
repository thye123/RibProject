package com.bujun.club.service.imple;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.bujun.club.dao.BuginDao;
import com.bujun.club.service.BuginService;
import com.bujun.club.vo.ClubMember;
import com.bujun.club.vo.ClubVo;
import com.bujun.club.vo.SearchVo;
import com.bujun.member.vo.MemberVo;
import com.bujun.study.service.impl.Paging;
import com.bujun.study.vo.PagingVo;

@Service("buginservice")
public class BuginServiceImple implements BuginService {

	@Autowired
	private BuginDao bugindao;

	@Override
	public List<ClubVo> getClub(HashMap<String, Object> map) {
		List<ClubVo> clubList = bugindao.getClub(map);
		return clubList;
	}

	@Override
	public List<ClubMember> getView() {
		List<ClubMember> clist = bugindao.getView();
		return clist;
	}

	@Override
	public List<ClubMember> getCode() {
		List<ClubMember> melist = bugindao.getCode();
		return melist;
	}

	@Override
	public List<ClubVo> getBoardList(HashMap<String, Object> map) {
		List<ClubVo> clist = bugindao.getBoardList(map);
		return clist;
	}

	@Override
	public void insertjoin(HashMap<String, Object> map) {
		bugindao.insertjoin(map);

	}

	@Override
	public ClubVo getOnedata(HashMap<String, Object> map) {
		ClubVo club = bugindao.getOnedata(map);
		return club;
	}

	@Override
	public void dataDel(HashMap<String, Object> map) {
		bugindao.dataDel(map);

	}

	@Override
	public void uptproc(MultipartFile file, HashMap<String, Object> map,HttpServletRequest req) {
		Uploading upload = new Uploading();
		if (map.get("file_filename") != null) {
			//System.out.println("map1" + map);
			upload.addFile(file, map, req);
			bugindao.uptproc(file, map, req);
		} else {
			//System.out.println("map2" + map);
			bugindao.uptproc(file, map, req);
		}
		
	}

	@Override
	public List<SearchVo> AjaxkeyList(HashMap<String, Object> map) {
		List<SearchVo> clist = bugindao.AjaxkeyList(map);
		return clist;
	}

	@Override
	public void insertdata(MultipartFile file, HashMap<String, Object> map, HttpServletRequest req) {

		System.out.println("insert" + map);
		
		String filePath = "d:\\upload\\";
		
		String file_filename = null;
		file_filename = file.getOriginalFilename();
		map.put("file_filename", file_filename);
		File target = new File(filePath+file_filename);

		MultipartHttpServletRequest multipartServletRequest = (MultipartHttpServletRequest) req;

		Iterator<String> iterator = multipartServletRequest.getFileNames();
		MultipartFile multipartFile = null;

		String filenames = null; 
		String fileName = null; 
		String file_size = null;

		int i = 0;
		while (iterator.hasNext()) {
			multipartFile = multipartServletRequest.getFile(iterator.next());

			if (!multipartFile.isEmpty()) {
				fileName = multipartFile.getOriginalFilename();
				filenames = fileName;
				map.put("filenames", filenames);
				// ����
				File fileNew = new File(filePath + fileName);
				// ���� ������ �� ���ϱ� ���� ���� ������� ���ɴϴ�.
				File sizeFile = new File(fileName);
				// ���� ������ ũ�⸦ ���մϴ�.
				long fsize = sizeFile.length();
				file_size = Long.toString(fsize);

				// Ȯ���ڸ� �ֱ�
				String fileOrg = fileNew.getName();
				int Idx = fileOrg.lastIndexOf(".");
				String fileext = fileOrg.substring(Idx);
				
				map.put("fileext", fileext);
				map.put("file_size", file_size);
				map.put("file_filerealname", filenames);
				
				i += 1;
				
				try {
					FileCopyUtils.copy(file.getBytes(), target);
					multipartFile.transferTo(fileNew); // �������ϸ����� ����

				} catch (IOException e) {
					//System.out.println("����:" + e.getMessage());
					e.printStackTrace();
				}
			}
		}

		if (map.get("file_filename") != null) {
			file_filename = filenames;
			map.put("file_filename", file_filename);
			String file_boardcode = (String) map.get("clb_clucode");
//			System.out.println("코드 값 "  + file_boardcode);
			map.put("file_boardcode", file_boardcode);
			bugindao.insertdata(file, map, req);

		} else {
			bugindao.insertdata(file, map, req);
		}

	}

	@Override
	public SearchVo pagingajax(HashMap<String, Object> map) {
		SearchVo vo= bugindao.pagingajax(map);
		return vo;
	}

	@Override
	public ClubMember getName(String clu_code) {
		ClubMember member= bugindao.getName(clu_code);
		return member;
	}

	@Override
	public MemberVo getRimemNum(String clb_writer) {
		MemberVo member = bugindao.getRimemNum(clb_writer);
		return member;
	}

	@Override
	public ClubVo getClbPass(int idx) {
		ClubVo vo= bugindao.getClbPass(idx);
		return vo;
	}

	@Override
	public List<ClubVo> getApplyList(HashMap<String, Object> map) {
		List<ClubVo> list = bugindao.getApplyList(map);
		int page_num 	= Integer.parseInt(String.valueOf(map.get("page_num")));
		int tot_cnt		= Integer.parseInt(String.valueOf(map.get("tot_cnt")));
		int page_grp    = Integer.parseInt(String.valueOf(map.get("page_grp")));
		Paging pg = new Paging(page_num, tot_cnt, page_grp);
		PagingVo pv = pg.paging();
		map.put("pagingVo", pv);
		return list;
	}

	@Override
	public void upApplyAccept(HashMap<String, Object> map) {
		bugindao.upApplyAccept(map);
	}


}
