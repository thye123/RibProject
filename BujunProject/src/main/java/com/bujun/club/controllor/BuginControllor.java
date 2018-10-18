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
import com.bujun.club.service.imple.Uploading;
import com.bujun.club.vo.ClubMember;
import com.bujun.club.vo.ClubVo;
import com.bujun.club.vo.SearchVo;
import com.bujun.member.vo.MemberVo;

@Controller
public class BuginControllor {

	@Autowired
	private BuginService buginservice;
	/*각 동아리 메뉴 값 */
	@RequestMapping("/club01")
	public String clubidx(@RequestParam HashMap<String, Object> map, Model model) {
		//���� ���������� ���� ���Ƹ� Ŭ�� ������ �������� �Ѱ��ִ� ��Ʈ�ѷ� 
		//System.out.println("map" + map);
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
	
	
	//리스트 
	@RequestMapping("/club01/CluBoard")
	public ModelAndView clublist(@RequestParam HashMap<String, Object> map ,Model model) {
		ModelAndView mv = new ModelAndView();
		model.addAttribute("menu", map);
		
		mv.addObject("m1", map.get("m1"));
		mv.addObject("m2", map.get("m2"));
		mv.addObject("m3", map.get("m3"));
		
		String clu_code  = (String)map.get("clb_clucode");
		//System.out.println("clb_clucode" + clu_code);
		ClubMember clu = buginservice.getName(clu_code); 
		List<ClubVo> clubList = buginservice.getClub(map);
		//System.out.println("pass 값 조회 " + clubList.toString());
		PagingData pg = new PagingData();
	
		ClubVo pageMaker = pg.pagdata(map);
		//System.out.println(pageMaker.toString());
		
		
		mv.addObject("clu_name", clu.getClu_name());
		mv.addObject("pageMaker", pageMaker);
		
		mv.addObject("clubList", clubList);
		mv.addObject("clu_code", clu_code);
		//System.out.println("clu_code"+ clu_code);
		mv.setViewName("user/sub/sub05/clublist");

		return mv;
	}

	// ���� ���� 
	@RequestMapping("/club01/CluBoard/OneView")
	public ModelAndView OneView(@RequestParam HashMap<String, Object> map ,Model model) {
		
		//System.out.println("하나데이터 map" + map);

		ModelAndView mv = new ModelAndView();
		model.addAttribute("menu", map);
		
		mv.addObject("m1", map.get("m1"));
		mv.addObject("m2", map.get("m2"));
		mv.addObject("m3", map.get("m3"));
		
		ClubVo club = buginservice.getOnedata(map);
		
		String clb_clucode = (String) map.get("clb_clucode");
		ClubMember memberName = buginservice.getName(clb_clucode);
		String clb_idx = (String) map.get("clb_idx");

		mv.addObject("club", club);
		mv.addObject("clb_idx", clb_idx);
		mv.addObject("clb_clucode", clb_clucode);
		mv.addObject("memberName",memberName.getClu_name());
		mv.setViewName("user/sub/sub05/clubdata");
		return mv;
	}


	@RequestMapping("/club01/CluBoard/CheckPass")
	public ModelAndView checkPass(@RequestParam HashMap<String, Object> map) {
		
		ModelAndView mv = new ModelAndView();
		//System.out.println("map : " + map);
		
		int idx=  Integer.parseInt(String.valueOf(map.get("clb_idx")));
		ClubVo vo = buginservice.getClbPass(idx);
		mv.addObject("clb_pass",vo.getClb_pass());
		mv.addObject("clb_clucode",map.get("clb_clucode"));
		mv.addObject("clb_idx",map.get("clb_idx"));
		mv.setViewName("user/sub/sub05/checkPass");
		return mv;
	}
	
	@RequestMapping("/club01/CluBoard/Checking")
	public String checkingProc(@RequestParam HashMap<String, Object> map) {
		
		//System.out.println("하나데이터 map" + map);


		String match = (String)map.get("clb_pass");
		//System.out.println("match" + match);
		String almathc = String.valueOf(map.get("clb_pass"));
		//System.out.println("almathc :" + almathc);
		if(match.equals(almathc)) {
		
			return "redirect:/club01/CluBoard/OneView?clb_idx="+map.get("clb_idx")+"&clb_clucode=CUS0001";
		}else {
			return "redirect:/club01/CluBoard";
		
		}

	}
	
	/// CluBoard/WriteForm form �������� ���ϴ� .
	@RequestMapping("/club01/CluBoard/WriteForm")
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
		MemberVo vo = new MemberVo();
	
	
		//member 번호 들고 오려고 
		
		String filePath = "D:\\upload\\";
		
		String file_filename = null;
		file_filename = file.getOriginalFilename();
		
		File target = new File(filePath+file_filename);
		map.put("file_filename", file_filename);
		map.put("target", target);
		
		buginservice.insertdata(file, map, req);
		Uploading upload= new Uploading();
		upload.addFile(file, map, req);
		mv.setViewName("redirect:/club01/CluBoard?clb_clucode="+clb_clucode+"&page=1&pagecount=10&pagegrp=1");
		return mv;
	}

	//�ϳ��� ������ ���� ������� ���ư���
	@RequestMapping("/club01/CluBoard/Goboard")
	public ModelAndView Goboard(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		String clb_clucode = (String) map.get("clb_clucode");
		mv.setViewName("redirect:/club01/CluBoard?clb_clucode=" + clb_clucode+"&page=1&pagecount=10&pagegrp=1");
		return mv;
	}

	// ���� �κ��Դϴ�
	@RequestMapping("/club01/CluBoard/Delboard")
	public ModelAndView dataDel(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		buginservice.dataDel(map);
		String clb_clucode = (String) map.get("clb_clucode");
		mv.setViewName("redirect:/club01/CluBoard?clb_clucode=" + clb_clucode + "&page=1&pagecount=10&pagegrp=1");
		return mv;
	}

	// ���� :

	@RequestMapping("/club01/CluBoard/Uptboard")
	public ModelAndView Uptboard(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		//System.out.println("���� map " + map);
		String clb_clucode = (String) map.get("clb_clucode");
		ClubVo vo = buginservice.getOnedata(map);
		ClubMember member = buginservice.getName(clb_clucode);
		mv.addObject("vo", vo);
		mv.addObject("memberName",member.getClu_name());
		mv.addObject("clb_clucode", clb_clucode);
		mv.addObject("clb_idx", map.get("clb_idx"));
		mv.setViewName("user/sub/sub05/uptForm");
		return mv;
	}
	
	//update  �ٵǰ� ó�� �Ǵ� �κ� 
	@RequestMapping("/club01/CluBoard/UptProc")
	public String UptProc(@RequestParam HashMap<String, Object> map
			 ,MultipartFile file, HttpServletRequest req) {
	
		//System.out.println("������Ʈ ���� ó��1 " + map);
		String clb_clucode = (String) map.get("clb_clucode");
		String file_filename = file.getOriginalFilename();
		
		if(file_filename!=null) {
			map.put("file_filename", file_filename);
			Uploading upload= new Uploading();
			upload.addFile(file, map, req);
			buginservice.uptproc(file, map, req);
		}else { 
			buginservice.uptproc(file, map, req);
		}
		
		return "redirect:/club01/CluBoard?clb_clucode=" + clb_clucode + "&page=1&pagecount=10&pagegrp=1";
	}

	
	// ���Ƹ����� ���� �Խ���
	@RequestMapping("/club01/joinClub")
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
		mv.setViewName("user/sub/sub05/msg");
		return mv;
	}

}
