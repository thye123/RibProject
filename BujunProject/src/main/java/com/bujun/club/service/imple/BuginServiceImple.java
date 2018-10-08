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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.bujun.club.dao.BuginDao;
import com.bujun.club.service.BuginService;
import com.bujun.club.vo.ClubMember;
import com.bujun.club.vo.ClubVo;
import com.bujun.club.vo.SearchVo;

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
			upload.addFile(file, map, req);
			bugindao.uptproc(file, map, req);
		} else {
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
		// 파일관련 업로드 시작
		// 파일 업로드 비지니스 로직 시작

		String filePath = "c:\\aaa\\";

		// 업로드된 파일의 처리(폴더의 저장)
		MultipartHttpServletRequest multipartServletRequest = (MultipartHttpServletRequest) req;

		Iterator<String> iterator = multipartServletRequest.getFileNames();
		MultipartFile multipartFile = null;

		// List<String> filenames = new ArrayList<>();
		String filenames = null; // 받아온 파일 제목
		String fileName = null; // 실 파일 제목
		String file_size = null; // 파일 크기

		int i = 0;
		while (iterator.hasNext()) {
			multipartFile = multipartServletRequest.getFile(iterator.next());

			if (!multipartFile.isEmpty()) {
				fileName = multipartFile.getOriginalFilename();
				filenames = fileName;
				String file_boardcode = (String) map.get("clb_clucode");
				map.put("filenames", filenames);
				map.put("file_boardcode", file_boardcode);
				// 저장
				File fileNew = new File(filePath + fileName);
				// 파일 사이즈 를 구하기 위해 파일 제목명을 들고옵니다.
				File sizeFile = new File(fileName);
				// 파일 사이즈 크기를 구합니다.
				long fsize = sizeFile.length();
				file_size = Long.toString(fsize);

				// 확장자명 넣기
				String fileOrg = fileNew.getName();
				int Idx = fileOrg.lastIndexOf(".");
				String fileext = fileOrg.substring(Idx);
				
				map.put("fileext", fileext);
				map.put("file_size", file_size);
				map.put("file_filerealname", filenames);
				
				i += 1;
				
				try {
					multipartFile.transferTo(fileNew); // 실제파일명으로 저장

				} catch (IOException e) {
					System.out.println("오류:" + e.getMessage());
					e.printStackTrace();
				}
			}
		}

		if (map.get("file_filename") != null) {
			String file_filename = filenames;
			map.put("file_filename", file_filename);
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


}
