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
	// ���� �ٿ�ε� �κ�
	private WebApplicationContext context = null;

	@RequestMapping("/download")
	public ModelAndView callDownload(@RequestParam HashMap<String, Object> map, HttpServletResponse res) {
		ModelAndView mv = new ModelAndView();
		// �ٿ�� ���丮
		String store = "d:\\upload\\";
		// map ���� ���� ���� �̸�
		String rename = String.valueOf(map.get("filename"));
		// ��ü ��θ� ���ع���
		String fileFullPath = store + rename;
		// ���� Ŭ���� ��ü�� �����ϰ�
		File file = new File(fileFullPath);
		// bean �� �ִ� id ���� ã�Ƽ� �������� ��
		return new ModelAndView("download", "downloadFile", file);

	}

	@Override
	public void setApplicationContext(ApplicationContext arg0) throws BeansException {

		this.context = (WebApplicationContext) arg0;
	}
}
