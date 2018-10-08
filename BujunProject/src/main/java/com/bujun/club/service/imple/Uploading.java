package com.bujun.club.service.imple;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public class Uploading {

	public void addFile(MultipartFile file, HashMap<String, Object> map, HttpServletRequest req) {
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
				
				if (map.get("file_filename") != null) {
					String file_filename = filenames;
					/*map.put("file_filename", file_filename);*/
				}
				
			}
		}

		
	}

}
