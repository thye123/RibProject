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
import com.bujun.study.vo.StudyAppVo;

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
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		String m3 = String.valueOf(map.get("m3"));
		String clb_clucode = "";
		String clu_code="";
		
		if(m1.equals("05")&&m2.equals("03")&&m3.equals("01")) {	
			clb_clucode = "CUS0001";
			map.put("clb_clucode", clb_clucode);
			clu_code = "CUS0001";
			map.put("clu_code", clu_code);
		}else {
			if(m1.equals("05")&&m2.equals("03")&&m3.equals("02")) {
				clb_clucode = "CUS0002";
				map.put("clb_clucode", clb_clucode);
				clu_code = "CUS0002";
				map.put("clu_code", clu_code);
			}else {
				if(m1.equals("05")&&m2.equals("03")&&m3.equals("03")) {
					clb_clucode = "CUS0003";
					map.put("clb_clucode", clb_clucode);
					clu_code = "CUS0003";
					map.put("clu_code", clu_code);
				}else {
					if(m1.equals("05")&&m2.equals("03")&&m3.equals("04")) {
						clb_clucode = "CUS0004";
						map.put("clb_clucode", clb_clucode);
						clu_code = "CUS0004";
						map.put("clu_code", clu_code);
					}
				}
			}
		}
		
		ClubMember clu = buginservice.getName(clu_code); 
		List<ClubVo> clubList = buginservice.getClub(map);
		PagingData pg = new PagingData();
	
		ClubVo pageMaker = pg.pagdata(map);
		
		mv.addObject("clu_name", clu.getClu_name());
		mv.addObject("pageMaker", pageMaker);
		
		mv.addObject("clubList", clubList);
		mv.addObject("clu_code", clu_code);
		
		mv.addObject("m1", map.get("m1"));
		mv.addObject("m2", map.get("m2"));
		mv.addObject("m3", map.get("m3"));
		
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
		
		ClubVo club = buginservice.getOnedata(map);
		
		String clb_clucode = (String) map.get("clb_clucode");
		ClubMember memberName = buginservice.getName(clb_clucode);
		String clb_idx = (String) map.get("clb_idx");

		mv.addObject("club", club);
		mv.addObject("clb_idx", clb_idx);
		mv.addObject("clb_clucode", clb_clucode);
		mv.addObject("memberName",memberName.getClu_name());
		mv.addObject("m1", map.get("m1"));
		mv.addObject("m2", map.get("m2"));
		mv.addObject("m3", map.get("m3"));
		
		
		mv.setViewName("user/sub/sub05/clubdata");
		return mv;
	}


	@RequestMapping("/club01/CluBoard/CheckPass")
	public ModelAndView checkPass(@RequestParam HashMap<String, Object> map , Model model) {
		model.addAttribute("menu", map);
		ModelAndView mv = new ModelAndView();
		//System.out.println("map : " + map);
		
		int idx=  Integer.parseInt(String.valueOf(map.get("clb_idx")));
		ClubVo vo = buginservice.getClbPass(idx);
		model.addAttribute("menu", map);
		
		mv.addObject("m1", map.get("m1"));
		mv.addObject("m2", map.get("m2"));
		mv.addObject("m3", map.get("m3"));
		
		mv.addObject("clb_pass",vo.getClb_pass());
		mv.addObject("clb_clucode",map.get("clb_clucode"));
		mv.addObject("clb_idx",map.get("clb_idx"));
		mv.setViewName("user/sub/sub05/checkPass");
		return mv;
	}
	
	@RequestMapping("/club01/CluBoard/Checking")
	public String checkingProc(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		//System.out.println("하나데이터 map" + map);
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		String m3 = String.valueOf(map.get("m3"));
		
		mv.addObject("m1", map.get("m1"));
		mv.addObject("m2", map.get("m2"));
		mv.addObject("m3", map.get("m3"));
		
		
		String match = (String)map.get("clb_pass");
		//System.out.println("match" + match);
		String almathc = String.valueOf(map.get("clb_pass"));
		
		if(match.equals(almathc)) {
		
			return "redirect:/club01/CluBoard/OneView?clb_idx="+map.get("clb_idx")
			+"&clb_clucode=CUS0001&m1="+m1+"&m2="+m2+"&m3="+m3;
		}else {
			return "redirect:/club01/CluBoard?m1="+m1+"&m2="+m2+"&m3="+m3;
		
		}

	}
	
	/// CluBoard/WriteForm form �������� ���ϴ� .
	@RequestMapping("/club01/CluBoard/WriteForm")
	public ModelAndView WriteForm(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		ModelAndView mv = new ModelAndView();
		//System.out.println("writeMap" + map);
		String clb_clucode = (String) map.get("clb_clucode");
		mv.addObject("clb_clucode", clb_clucode);
		
		mv.addObject("m1", map.get("m1"));
		mv.addObject("m2", map.get("m2"));
		mv.addObject("m3", map.get("m3"));
		
		mv.setViewName("user/sub/sub05/cBoardForm");
		
		return mv;
	}

	// �۾���(���� ����)
	@RequestMapping("/CluBoard/processing")

	public ModelAndView clubwrite(@RequestParam HashMap<String, Object> map, MultipartFile file,
			HttpServletRequest req, Model model) {
		model.addAttribute("menu", map);
		ModelAndView mv = new ModelAndView();

		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		String m3 = String.valueOf(map.get("m3"));
		
		
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		
		
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
		mv.setViewName("redirect:/club01/CluBoard?clb_clucode="+clb_clucode+"&page=1&pagecount=10&pagegrp=1&m1=" + m1 + "&m2=" + m2 + "&m3=" + m3);
		return mv;
	}

	//�ϳ��� ������ ���� ������� ���ư���
	@RequestMapping("/club01/CluBoard/Goboard")
	public ModelAndView Goboard(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		String m3 = String.valueOf(map.get("m3"));
		String clb_clucode = (String) map.get("clb_clucode");
		mv.setViewName("redirect:/club01/CluBoard?clb_clucode=" + clb_clucode+"&page=1&pagecount=10&pagegrp=1&m1="+ m1 + "&m2="+ m2 + "&m3=" + m3);
		return mv;
	}

	// ���� �κ��Դϴ�
	@RequestMapping("/club01/CluBoard/Delboard")
	public String dataDel(@RequestParam HashMap<String, Object> map) {
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		String m3 = String.valueOf(map.get("m3"));
		buginservice.dataDel(map);
		String clb_clucode = (String) map.get("clb_clucode");
		
		return "redirect:/club01/CluBoard?clb_clucode=" + clb_clucode + "&page=1&pagecount=10&pagegrp=1&m1=" + m1 + "&m2=" + m2 + "&m3=" + m3 ;
	}

	// ���� :

	@RequestMapping("/club01/CluBoard/Uptboard")
	public ModelAndView Uptboard(@RequestParam HashMap<String, Object> map , Model model ) {
		ModelAndView mv = new ModelAndView();
		model.addAttribute("menu", map);
		String clb_clucode = (String) map.get("clb_clucode");
		//System.out.println("mapssssss:" + map);
		ClubVo vo = buginservice.getOnedata(map);
		ClubMember member = buginservice.getName(clb_clucode);
		
		mv.addObject("vo", vo);
		mv.addObject("memberName",member.getClu_name());
		mv.addObject("clb_clucode", clb_clucode);
		mv.addObject("clb_idx", map.get("clb_idx"));
		
		mv.addObject("m1", map.get("m1"));
		mv.addObject("m2", map.get("m2"));
		mv.addObject("m3", map.get("m3"));
		
		mv.setViewName("user/sub/sub05/uptForm");
		return mv;
	}
	
	//update  �ٵǰ� ó�� �Ǵ� �κ� 
	@RequestMapping("/club01/CluBoard/UptProc")
	public String UptProc(@RequestParam HashMap<String, Object> map
			 ,MultipartFile file, HttpServletRequest req, Model model) {
		
		model.addAttribute("menu", map);
		//System.out.println("������Ʈ ���� ó��1 " + map);
		String clb_clucode = (String) map.get("clb_clucode");
		String file_filename = file.getOriginalFilename();
		
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		String m3 = String.valueOf(map.get("m3"));
		
		if(file_filename!=null) {
			map.put("file_filename", file_filename);
			Uploading upload= new Uploading();
			upload.addFile(file, map, req);
			buginservice.uptproc(file, map, req);
		}else { 
			buginservice.uptproc(file, map, req);
		}
		
		return "redirect:/club01/CluBoard?clb_clucode=" + clb_clucode + "&page=1&pagecount=10&pagegrp=1&m1=" + m1 + "&m2=" + m2 + "&m3=" + m3;
	}

	
	// ���Ƹ����� ���� �Խ���
	@RequestMapping("/club01/joinClub")
	public ModelAndView joinClub(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		String cluapp_code = "";
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		String m3 = String.valueOf(map.get("m3"));
		
		//게시판 코드 찾기
		if(m1.equals("05")&&m2.equals("03")&&m3.equals("01")) {
			cluapp_code = "CUS0001";
		}else {
			if(m1.equals("05")&&m2.equals("03")&&m3.equals("02")) {
				cluapp_code = "CUS0002";
			}else {
				if(m1.equals("05")&&m2.equals("03")&&m3.equals("03")) {
					cluapp_code = "CUS0003";
				}else {
					if(m1.equals("05")&&m2.equals("03")&&m3.equals("04")) {
						cluapp_code = "CUS0004";
					}
				}
			}
		}
		
		mv.addObject("m1", m1);
		mv.addObject("m2", m2);
		mv.addObject("m3", m3);
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

	@RequestMapping("/club01/joinList")
	public ModelAndView joinList(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		ModelAndView mv = new ModelAndView();
		String clu_code = "";
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		String m3 = String.valueOf(map.get("m3"));
		//게시판 코드 찾기
		if(m1.equals("05")&&m2.equals("03")&&m3.equals("01")) {
			clu_code = "CUS0001";
			map.put("clu_code", clu_code);
		}else {
			if(m1.equals("05")&&m2.equals("03")&&m3.equals("02")) {
				clu_code = "CUS0002";
				map.put("clu_code", clu_code);
			}else {
				if(m1.equals("05")&&m2.equals("03")&&m3.equals("03")) {
					clu_code = "CUS0003";
					map.put("clu_code", clu_code);
				}else {
					if(m1.equals("05")&&m2.equals("03")&&m3.equals("04")) {
						clu_code = "CUS0004";
						map.put("clu_code", clu_code);
					}
				}
			}
		}
		
		List<ClubVo> list = buginservice.getApplyList(map);
		
		mv.addObject("m1", m1);
		mv.addObject("m2", m2);
		mv.addObject("m3", m3);
		mv.addObject("clu_code", clu_code);
		mv.addObject("cluAppList", list);
		mv.addObject("page_num", map.get("page_num"));
		mv.addObject("paging", map.get("pagingVo"));
		mv.addObject("tot_cnt", map.get("tot_cnt"));
		mv.setViewName("user/sub/sub05/clubApplyList");
		return mv;
	}
	
	@RequestMapping("/club/accept")
	public String acceptClub(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		buginservice.upApplyAccept(map);
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		String m3 = String.valueOf(map.get("m3"));
		String clu_code = String.valueOf(map.get("cluap_code"));
		return "redirect:/club01/joinList?m1=" + m1 + "&m2=" + m2 + "&m3=" + m3 + "&page_num=1&page_grp=1";
	}
	
	@RequestMapping("/club/cluapsearch")
	public ModelAndView stuApplySearch(@RequestParam HashMap<String, Object> map, Model model) {
		model.addAttribute("menu", map);
		String m1 = String.valueOf(map.get("m1"));
		String m2 = String.valueOf(map.get("m2"));
		String m3 = String.valueOf(map.get("m3"));
		String clu_code="";
		if(m1.equals("05")&&m2.equals("03")&&m3.equals("01")) {
			clu_code = "CUS0001";
			map.put("clu_code", clu_code);
		}else {
			if(m1.equals("05")&&m2.equals("03")&&m3.equals("02")) {
				clu_code = "CUS0002";
				map.put("clu_code", clu_code);
			}else {
				if(m1.equals("05")&&m2.equals("03")&&m3.equals("03")) {
					clu_code = "CUS0003";
					map.put("clu_code", clu_code);
				}else {
					if(m1.equals("05")&&m2.equals("03")&&m3.equals("04")) {
						clu_code = "CUS0004";
						map.put("clu_code", clu_code);
					}
				}
			}
		}
		List<ClubVo> list = buginservice.searchAPList(map);
		ModelAndView mv = new ModelAndView();
		mv.addObject("m1", m1);
		mv.addObject("m2", m2);
		mv.addObject("m3", m3);
		mv.addObject("cluAppList", list);
		mv.addObject("clu_code", clu_code);
		mv.addObject("paging", map.get("pagingVo"));
		mv.addObject("page_num", map.get("page_num"));
		mv.addObject("tot_cnt", map.get("tot_cnt"));
		mv.addObject("keyfield", map.get("keyfield"));
		mv.setViewName("user/sub/sub05/clubApplyList");
		return mv;
	}
	
	
}
