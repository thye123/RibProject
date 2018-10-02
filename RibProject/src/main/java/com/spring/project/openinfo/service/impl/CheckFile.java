package com.spring.project.openinfo.service.impl;

import java.io.File;

public class CheckFile {

	public String getCheckFileName(String filePath, 
			String realFileName, String fileExt) {
		
		boolean isCheck        = true;
		String  returnFileName = null;
		
		String  fullFilePath   = null;
		File    file           = null;
		
		int i = 0;
		while(isCheck) {
			fullFilePath = filePath + realFileName + fileExt;
			file         = new File( fullFilePath );
			if(file.exists())
			{
				i++;
				realFileName = realFileName + String.valueOf(i);
			} 
			else 
			{
				isCheck     = false;				
			}
		}
		
		returnFileName = realFileName + fileExt;
		
		return  returnFileName;
	}
	
}
