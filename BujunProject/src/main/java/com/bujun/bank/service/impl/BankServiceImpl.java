package com.bujun.bank.service.impl;

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

import com.bujun.bank.dao.BankDao;
import com.bujun.bank.service.BankService;
import com.bujun.notice.service.impl.CheckFileName;
import com.bujun.notice.service.impl.Paging;
import com.bujun.notice.vo.NoticeVo;
import com.bujun.notice.vo.PagingVo;

@Service("bankService")
public class BankServiceImpl implements BankService {
	@Autowired
	private BankDao bankDao;
	@Override
	public List<NoticeVo> getList(HashMap<String, Object> map) {
		int totalcount = 10;
		int pagecount = 10;
		map.put("pagecount", pagecount);
		List<NoticeVo> bankList = bankDao.getList(map);
		
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
		int ad_idx = bankDao.getWrite(map);
		return ad_idx;
		
	}
	
	@Override
	public void addFile(HttpServletRequest req, HashMap<String, Object> map) {
		CheckFileName checkFile = new CheckFileName();
		String filePath = "c:\\upload\\";
		
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
				bankDao.addFile(req, map);
			}
		}
		
	}
	@Override
	public NoticeVo content(HashMap<String, Object> map) {
		NoticeVo vo = bankDao.content(map);
		return vo;
	}
	@Override
	public void Update(HashMap<String, Object> map) {
		bankDao.Update(map);
	}
	@Override
	public void upFile(HttpServletRequest req, HashMap<String, Object> map) {
		CheckFileName checkFile = new CheckFileName();
		String filePath = "c:\\upload\\";
		
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
				bankDao.upFile(req, map);
			}
		}
	}
	@Override
	public void delFile(HashMap<String, Object> map) {
		bankDao.delFile(map);		
	}

}
