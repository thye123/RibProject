package com.bujun.club.controllor;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bujun.club.service.BuginService;
import com.bujun.club.service.imple.Filedownload;
import com.bujun.club.service.imple.PagingData;
import com.bujun.club.vo.ClubMember;
import com.bujun.club.vo.ClubVo;
import com.bujun.club.vo.SearchVo;

@Controller
public class BuginControllor {

	@Autowired
	private BuginService buginservice;
	
	@RequestMapping("/club01")
	public String clubidx(@RequestParam HashMap<String, Object> map, Model model) {
		//���� ���������� ���� ���Ƹ� Ŭ�� ������ �������� �Ѱ��ִ� ��Ʈ�ѷ� 
		System.out.println("map" + map);
		model.addAttribute("menu", map);
		String m1 = String.valueOf(map.get("m1"));		
		String m2 = String.valueOf(map.get("m2"));		
		String m3 = String.valueOf(map.get("m3"));
		
		String link ="";
		
		if(m1.equals("05")&&m2.equals("03")&&m3.equals("01")) {
			link = "user/sub/sub05/club01";
		}else {
			if(m1.equals("05")&&m2.equals("03")&&m3.equals("02")) {
				link = "user/sub/sub05/club02";
			}else {
				if(m1.equals("05")&&m2.equals("03")&&m3.equals("03")) {
					link = "user/sub/sub05/club03";
				}else {
					if(m1.equals("05")&&m2.equals("03")&&m3.equals("04")) {
						link = "user/sub/sub05/club04";
					}
				}
			}
		}
		
		return link;
	}
	

	//�Խ��� �׸� �����ִ� �κ� 
/*	@RequestMapping("/club01/Club")
	public ModelAndView Club(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		/Club?clu_code=CUS0001
		/club01?m1=05&m2=03&m3=01
		
		String clu_code = (String) map.get("clu_code");
	
		List<ClubVo> clist = buginservice.getBoardList(map); //����Ʈ �����ٷ��� 
		List<ClubMember> mem = buginservice.getCode(); //�Խ��� �� �ڵ� �������� 
		ClubMember clu = buginservice.getName(map); //�Խ��� �� �̸� �������� 

		mv.addObject("mem", mem);
		mv.addObject("clu_name", clu.getClu_name());
		mv.addObject("clist", clist);
		mv.addObject("clu_code", clu_code);
		
		//������ �̵��ϴ� �κ� 
		mv.setViewName("user/sub/sub05/c01");
		return mv;
	}*/

	// ���Ƹ� �Խ��� Ŭ���� �Խ��� ����Ʈ�� ���� list
	@RequestMapping("/club01/CluBoard")
	public ModelAndView clublist(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		System.out.println("�Ѱܿ��� ������ ���Դϴ�. " + map);
		String clb_clucode = (String) map.get("clb_clucode");
		List<ClubVo> clubList = buginservice.getClub(map);
		
		//���� ������ �������� pagingData �� ���� 
		//�װ� ������ ����� Ÿ���� ClubVo�� �޾��� �̾� ���ɷ��� .. 
		PagingData pg = new PagingData();
		ClubVo pageMaker = pg.pagdata(map);
		// ���� ���� �����ٶ�
		//pageMaker ���� ���������� ������ ������ vo Ÿ������ �޾��ش� 
		mv.addObject("pageMaker", pageMaker);
		mv.addObject("clubList", clubList);
		mv.addObject("clb_clucode", clb_clucode);
	
		mv.setViewName("user/sub/sub05/clublist");

		return mv;
	}

	// ���� ���� 
	@RequestMapping("/CluBoard/OneView")
	public ModelAndView OneView(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		ClubVo club = buginservice.getOnedata(map);
		
		String clb_clucode = (String) map.get("clb_clucode");
		String clb_idx = (String) map.get("clb_idx");

		mv.addObject("club", club);
		mv.addObject("clb_idx", clb_idx);
		mv.addObject("clb_clucode", clb_clucode);

		mv.setViewName("user/sub/sub05/clubdata");
		return mv;
	}


	/// CluBoard/WriteForm form �������� ���ϴ� .
	@RequestMapping("/CluBoard/WriteForm")
	public ModelAndView WriteForm(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		String clb_clucode = (String) map.get("clb_clucode");
		mv.addObject("clb_clucode", clb_clucode);
		mv.setViewName("user/sub/sub05/cBoardForm");
		return mv;
	}

	// �۾���(���� ����)
	@RequestMapping("/CluBoard/processing")

	public ModelAndView clubwrite(@RequestParam HashMap<String, Object> map, MultipartFile file,
			HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
		String clb_clucode = (String) map.get("clb_clucode");

		// ���� ����
		String file_filename = file.getOriginalFilename();

		System.out.println("saveName : " + file_filename);

		map.put("file_filename", file_filename);
		File target = new File(file_filename);
		try {
			FileCopyUtils.copy(file.getBytes(), target);
			buginservice.insertdata(file, map, req);
			mv.setViewName("redirect:/CluBoard?clb_clucode=" + clb_clucode);

		} catch (IOException e) {
			
			e.printStackTrace();
		}
		return mv;
	}

	// �ϳ��� ������ ���� ������� ���ư���
	@RequestMapping("/CluBoard/Goboard")
	public ModelAndView Goboard(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		String clb_clucode = (String) map.get("clb_clucode");
		//������ �׷�� pagegrp �� �޾Ƶ��� 
		mv.setViewName("redirect:/CluBoard?clb_clucode=" + clb_clucode+"&page=1&pagecount=10&pagegrp=1");
		return mv;
	}

	// ���� �κ��Դϴ�

	@RequestMapping("/CluBoard/Delboard")
	public ModelAndView dataDel(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		buginservice.dataDel(map);
		String clb_clucode = (String) map.get("clb_clucode");
		mv.setViewName("redirect:/CluBoard?clb_clucode=" + clb_clucode + "&page=1&pagecount=10&pagegrp=1");
		return mv;
	}

	// ���� :

	@RequestMapping("/CluBoard/Uptboard")
	public ModelAndView Uptboard(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		String clb_clucode = (String) map.get("clb_clucode");
		ClubVo vo = buginservice.getOnedata(map);
		mv.addObject("vo", vo);
		mv.addObject("clb_clucode", clb_clucode);
		mv.setViewName("user/sub/sub05/uptForm");
		return mv;
	}
	
	//update  �ٵǰ� ó�� �Ǵ� �κ� 
	@RequestMapping("/CluBoard/UptProc")
	public ModelAndView UptProc(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		String clb_clucode = (String) map.get("clb_clucode");
		buginservice.uptproc(map);
		mv.setViewName("redirect:/CluBoard?clb_clucode=" + clb_clucode+"&page=1&pagecount=10&pagegrp=1");
		return mv;
	}

	
	// ���Ƹ����� ���� �Խ���
	@RequestMapping("/joinClub")
	public ModelAndView joinClub(@RequestParam String cluapp_code) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("cluapp_code", cluapp_code);
		mv.setViewName("user/sub/sub05/joinForm");
		return mv;
	}

	// ���Ƹ���û�� insert �Ҷ� ó�� �ϴ� �κ�
	@RequestMapping("/joinClub/Proc")
	public ModelAndView joinProc(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		buginservice.insertjoin(map);
		mv.setViewName("redirect:/Clublist");
		return mv;
	}

}
