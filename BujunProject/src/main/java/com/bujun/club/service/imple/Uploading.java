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
		
		//System.out.println("File " + map);
		String filePath = "d:\\upload\\";
		
		// ���ε�� ������ ó��(������ ����)
		MultipartHttpServletRequest multipartServletRequest = (MultipartHttpServletRequest) req;

		Iterator<String> iterator = multipartServletRequest.getFileNames();
		MultipartFile multipartFile = null;

		// List<String> filenames = new ArrayList<>();
		String filenames = null; // �޾ƿ� ���� ����
		String fileName = null; // �� ���� ����
		String file_size = null; // ���� ũ��

		int i = 0;
		while (iterator.hasNext()) {
			multipartFile = multipartServletRequest.getFile(iterator.next());

			if (!multipartFile.isEmpty()) {
				fileName = multipartFile.getOriginalFilename();
				filenames = fileName;
				String file_boardcode = (String) map.get("clb_clucode");
				map.put("filenames", filenames);
				map.put("file_boardcode", file_boardcode);
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
					multipartFile.transferTo(fileNew); // �������ϸ����� ����

				} catch (IOException e) {
					//System.out.println("����:" + e.getMessage());
					e.printStackTrace();
				}

				if (map.get("file_filename") != null) {
					String file_filename = filenames;
					map.put("file_filename", file_filename);
				}

			}
		}

	}

}
