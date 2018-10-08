package com.bujun.openinfo.service.impl;

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
import com.bujun.openinfo.dao.OpenInfoDao;
import com.bujun.openinfo.service.OpenInfoService;
import com.bujun.openinfo.vo.OpenInfoVo;
import com.bujun.openinfo.vo.PagingVo;


@Service
public class OpenInfoServiceImpl implements OpenInfoService {

	@Autowired
	OpenInfoDao openInfoDao;
	
	//리스트
	@Override
	public List<OpenInfoVo> selectList(HashMap<String, Object> map) {
		List<OpenInfoVo> list = openInfoDao.selectList(map);
		int page_num 	= Integer.parseInt(String.valueOf(map.get("page_num")));
		String ad_code 	= String.valueOf(map.get("ad_code"));
		int tot_cnt		= Integer.parseInt(String.valueOf(map.get("tot_cnt")));
		int page_grp    = Integer.parseInt(String.valueOf(map.get("page_grp")));
		//System.out.println("map service:" + map);
		Paging pg = new Paging(page_num, ad_code, tot_cnt, page_grp);
		PagingVo pv = pg.paging();
		map.put("pagingVo", pv);
		return list;
	}

	//인서트
	@Override
	public int insertContent(HashMap<String, Object> map) {
		int ad_idx = openInfoDao.insertContent(map);
		return ad_idx;
	}

	//파일 인서트
	@Override
	public void addFile(HttpServletRequest req, HashMap<String, Object> map) {
		CheckFile fileCheck = new CheckFile();
		
		String filePath = "d:\\upload\\";
		MultipartHttpServletRequest multi = (MultipartHttpServletRequest) req;
		
		Iterator<String> iterator = multi.getFileNames();
		MultipartFile  multiFile = null; 

		String file_fileName    	= null;
		String file_fileRealName 	= null;
		String file_ext     		= null;
		String sFileName   			= null;
		int    file_size			= 0;
		
		int i = 0;
		while ( iterator.hasNext()) {
			multiFile = multi.getFile(iterator.next());
			
			HashMap<String, String> hashMap = new HashMap<String, String>();
			
			if( !multiFile.isEmpty() ) {
				file_fileName = multiFile.getOriginalFilename();
				file_size     = (int) multiFile.getSize();
				// upload 된 파일명
				
				//             0 1 23 4 5678
				// fileName = "테풍.솔릭.jpg"
				int dotIdx  		= file_fileName.lastIndexOf('.');
				file_fileRealName 	= file_fileName.substring( 0, dotIdx ); // "테풍.솔릭"
				file_ext     		= file_fileName.substring( dotIdx  );   // ".jpg";
				
				// 중복파일이 존재하면 번호추가 후 실제 파일명 처리
				sFileName   = fileCheck.getCheckFileName(
					filePath, file_fileRealName, file_ext ); //"테풍1";
				
				// 저장
				File file = new File(filePath + sFileName);
				i += 1;
				
				//저장
				map.put("file_size", file_size);
				map.put("file_fileName", file_fileName);
				map.put("file_fileRealName", file_fileRealName);
				map.put("file_ext", file_ext);
				

				openInfoDao.addFile(req, map);		
				
				try {
					multiFile.transferTo( file ); // 실제파일명으로 저장
				} catch(IOException e) {
					System.out.println("오류:" + e.getMessage()); 
					e.printStackTrace();
				}				
			}
		}
	}

	@Override
	public OpenInfoVo detail(HashMap<String, Object> map) {
		OpenInfoVo vo = openInfoDao.detail(map);
		return vo;
	}

	@Override
	public List<OpenInfoVo> search(HashMap<String, Object> map) {
		List<OpenInfoVo> list = openInfoDao.search(map);
		int page_num 	= Integer.parseInt(String.valueOf(map.get("page_num")));
		String ad_code 	= String.valueOf(map.get("ad_code"));
		int tot_cnt		= Integer.parseInt(String.valueOf(map.get("tot_cnt")));
		int page_grp    = Integer.parseInt(String.valueOf(map.get("page_grp")));
		
		Paging pg = new Paging(page_num, ad_code, tot_cnt, page_grp);
		PagingVo pv = pg.paging();
		map.put("pagingVo", pv);
		return list;
	}

	@Override
	public void update(HashMap<String, Object> map) {
		openInfoDao.update(map);
	}

}
