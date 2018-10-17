package com.bujun.material.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.bujun.material.dao.MaterialDao;
import com.bujun.material.service.MaterialService;
import com.bujun.notice.service.impl.CheckFileName;
import com.bujun.notice.service.impl.Paging;
import com.bujun.notice.vo.NoticeVo;
import com.bujun.notice.vo.PagingVo;
@Service("materialService")
public class MaterialServiceImpl implements MaterialService {
	@Autowired
	private MaterialDao materialDao;
	
	@Override
	public List<NoticeVo> getList(HashMap<String, Object> map) {
		int totalcount = 10;
		int pagecount = 10;
		map.put("pagecount", pagecount);
		List<NoticeVo> bankList = materialDao.getList(map);
		
		int nowpage = Integer.parseInt(String.valueOf(map.get("nowpage")));
		int grpnum  = Integer.parseInt(String.valueOf(map.get("grpnum")));
		int total = Integer.parseInt(String.valueOf(map.get("total")));
		String searchType = String.valueOf(map.get("searchType"));
		String keyWord = String.valueOf(map.get("keyword"));
	
		Paging paging = new Paging(nowpage, total, totalcount, grpnum, pagecount, searchType, keyWord);
		PagingVo vo = paging.getPagingInfo(); 
		
		map.put("pagingVo", vo);
		return bankList;
			
	}

	@Override
	public int getWrite(HashMap<String, Object> map) {
		int ad_idx = materialDao.getWrite(map);
		return ad_idx;
	}

	@Override
	public void addFile(HttpServletRequest req, HashMap<String, Object> map) {
		CheckFileName checkFile = new CheckFileName();
		String filePath = "d:\\upload\\";
		
		MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)req;
		Iterator<String> iterator = multiRequest.getFileNames();
		MultipartFile multipartFile = null;
		
		
		String fileName    = null;
		String orgFileName = null;
		String fileExt     = null;
		String sFileName   = null;
		int    filesize    = 0;
		
		int i = 0;
		while(iterator.hasNext()) {
			multipartFile = multiRequest.getFile(iterator.next());
			HashMap<String, String> hashMap = new HashMap<>();
			
			if(!multipartFile.isEmpty()) {
				fileName = multipartFile.getOriginalFilename();
				filesize = (int) multipartFile.getSize();
				
				int dotIdx  = fileName.lastIndexOf('.');
				orgFileName = fileName.substring(0, dotIdx);
				fileExt     = fileName.substring(dotIdx);
				
				sFileName   = checkFile.getCheckFileName(filePath, orgFileName, fileExt);
				
				
				
				map.put("filename", fileName);
				map.put("fileext", fileExt);
				map.put("orgfilename", orgFileName);
				map.put("filesize", filesize);
				
				File file = new File(filePath + sFileName);
				
				i += 1;
				try {
					multipartFile.transferTo(file);
				} catch(IOException e) {
					System.out.println("오류:" + e.getMessage());
					e.printStackTrace();
				}
				materialDao.addFile(req, map);
			}
		}
	}

	@Override
	public NoticeVo content(HashMap<String, Object> map) {
		NoticeVo vo = materialDao.content(map);
		return vo;
	}

	@Override
	public void Update(HashMap<String, Object> map) {
		materialDao.Update(map);
	}

	@Override
	public void upFile(HttpServletRequest req, HashMap<String, Object> map) {
		CheckFileName checkFile = new CheckFileName();
		String filePath = "d:\\upload\\";
		
		MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)req;
		Iterator<String> iterator = multiRequest.getFileNames();
		MultipartFile multipartFile = null;
		
		
		String fileName    = null;
		String orgFileName = null;
		String fileExt     = null;
		String sFileName   = null;
		int    filesize    = 0;
		
		int i = 0;
		while(iterator.hasNext()) {
			multipartFile = multiRequest.getFile(iterator.next());
			HashMap<String, String> hashMap = new HashMap<>();
			
			if(!multipartFile.isEmpty()) {
				fileName = multipartFile.getOriginalFilename();
				filesize = (int) multipartFile.getSize();
				
				int dotIdx  = fileName.lastIndexOf('.');
				orgFileName = fileName.substring(0, dotIdx);
				fileExt     = fileName.substring(dotIdx);
				
				sFileName   = checkFile.getCheckFileName(filePath, orgFileName, fileExt);
				
				
				
				map.put("filename", fileName);
				map.put("fileext", fileExt);
				map.put("orgfilename", orgFileName);
				map.put("filesize", filesize);
				
				File file = new File(filePath + sFileName);
				
				i += 1;
				try {
					multipartFile.transferTo(file);
				} catch(IOException e) {
					System.out.println("오류:" + e.getMessage());
					e.printStackTrace();
				}
				materialDao.upFile(req, map);
			}
		}
	}

	@Override
	public void delFile(HashMap<String, Object> map) {
		materialDao.delFile(map);
	}
}
