package com.bujun.club.controllor;

import java.io.File;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DownloadControllor implements ApplicationContextAware {
	// 파일 다운로드 부분
	private WebApplicationContext context = null;

	@RequestMapping("/download")
	public ModelAndView callDownload(@RequestParam HashMap<String, Object> map, HttpServletResponse res) {
		ModelAndView mv = new ModelAndView();
		// 다운르도 디렉토리
		String store = "c:\\aaa\\";
		// map 에서 받은 파일 이름
		String rename = String.valueOf(map.get("filename"));
		// 전체 경로를 정해버림
		String fileFullPath = store + rename;
		// 파일 클래스 객체를 생성하고
		File file = new File(fileFullPath);
		// bean 에 있는 id 값을 찾아서 그쪽으로 함
		return new ModelAndView("download", "downloadFile", file);

	}

	@Override
	public void setApplicationContext(ApplicationContext arg0) throws BeansException {

		this.context = (WebApplicationContext) arg0;
	}
}
