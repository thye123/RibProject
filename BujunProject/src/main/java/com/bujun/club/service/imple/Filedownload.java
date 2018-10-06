package com.bujun.club.service.imple;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;


public class Filedownload extends AbstractView {
	 
	 
    public void Filedownload(){
         
        setContentType("application/download; utf-8");
         
    }
 
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		  File file = (File)model.get("downloadFile");
		 //File file = new File(pathname);   
		  	System.out.println("moidel" + model.toString());
	        System.out.println("파일의 실제이름"+ file.getName());
		    System.out.println("DownloadView --> file.getPath() : " + file.getPath());
	        System.out.println("DownloadView --> file.getName() : " + file.getName());
	         
	       response.setContentType(getContentType());
	        response.setContentLength((int)file.length());
	         
	        String userAgent = request.getHeader("User-Agent");
	         
	        boolean ie = userAgent.indexOf("MSIE") > -1;
	         
	        String fileName = null;
	         
	        if(ie){
	             
	            fileName = URLEncoder.encode(file.getName(), "utf-8");
	             System.out.println("filename " + fileName);        
	        } else {
	             
	            fileName = new String(file.getName().getBytes("utf-8"));
	             
	        }// end if;
	 
	         
	        response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\";");
	         
	        response.setHeader("Content-Transfer-Encoding", "binary");
	         
	        OutputStream out = response.getOutputStream();
	         
	        FileInputStream fis = null;
	         
	        try {
	             
	            fis = new FileInputStream(file);
	             
	            FileCopyUtils.copy(fis, out);
	             
	             
	        } catch(Exception e){
	             
	            e.printStackTrace();
	             
	        }finally{
	             
	            if(fis != null){
	                 
	                try{
	                    fis.close();
	                }catch(Exception e){}
	            }
	             
	        }// try end;
	         
	        out.flush();

		
	}
}