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
		//메인 페이지에서 독서 동아리 클릭 했을때 페이지를 넘겨주는 컨트롤러 
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
	

	//게시판 항목 보여주는 부분 
/*	@RequestMapping("/club01/Club")
	public ModelAndView Club(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		/Club?clu_code=CUS0001
		/club01?m1=05&m2=03&m3=01
		
		String clu_code = (String) map.get("clu_code");
	
		List<ClubVo> clist = buginservice.getBoardList(map); //리스트 보여줄려고 
		List<ClubMember> mem = buginservice.getCode(); //게시판 각 코드 들고오려고 
		ClubMember clu = buginservice.getName(map); //게시판 각 이름 들고오려고 

		mv.addObject("mem", mem);
		mv.addObject("clu_name", clu.getClu_name());
		mv.addObject("clist", clist);
		mv.addObject("clu_code", clu_code);
		
		//페이지 이동하는 부분 
		mv.setViewName("user/sub/sub05/c01");
		return mv;
	}*/

	// 동아리 게시판 클릭시 게시판 리스트로 가는 list
	@RequestMapping("/club01/CluBoard")
	public ModelAndView clublist(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		System.out.println("넘겨오는 데이터 값입니다. " + map);
		String clb_clucode = (String) map.get("clb_clucode");
		List<ClubVo> clubList = buginservice.getClub(map);
		
		//각종 데이터 받은곳은 pagingData 에 있음 
		//그걸 가지고 계산한 타입을 ClubVo로 받았음 미안 내능력은 .. 
		PagingData pg = new PagingData();
		ClubVo pageMaker = pg.pagdata(map);
		// 값을 내려 보내줄때
		//pageMaker 에서 내려보내줄 데이터 값들을 vo 타입으로 받아준다 
		mv.addObject("pageMaker", pageMaker);
		mv.addObject("clubList", clubList);
		mv.addObject("clb_clucode", clb_clucode);
	
		mv.setViewName("user/sub/sub05/clublist");

		return mv;
	}

	// 세부 정보 
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


	/// CluBoard/WriteForm form 영역으로 갑니다 .
	@RequestMapping("/CluBoard/WriteForm")
	public ModelAndView WriteForm(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		String clb_clucode = (String) map.get("clb_clucode");
		mv.addObject("clb_clucode", clb_clucode);
		mv.setViewName("user/sub/sub05/cBoardForm");
		return mv;
	}

	// 글쓰기(파일 관련)
	@RequestMapping("/CluBoard/processing")

	public ModelAndView clubwrite(@RequestParam HashMap<String, Object> map, MultipartFile file,
			HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
		String clb_clucode = (String) map.get("clb_clucode");

		// 파일 시작
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

	// 하나의 데이터 에서 목록으로 돌아갈떄
	@RequestMapping("/CluBoard/Goboard")
	public ModelAndView Goboard(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		String clb_clucode = (String) map.get("clb_clucode");
		//페이지 그룹과 pagegrp 를 받아두자 
		mv.setViewName("redirect:/CluBoard?clb_clucode=" + clb_clucode+"&page=1&pagecount=10&pagegrp=1");
		return mv;
	}

	// 삭제 부분입니다

	@RequestMapping("/CluBoard/Delboard")
	public ModelAndView dataDel(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		buginservice.dataDel(map);
		String clb_clucode = (String) map.get("clb_clucode");
		mv.setViewName("redirect:/CluBoard?clb_clucode=" + clb_clucode + "&page=1&pagecount=10&pagegrp=1");
		return mv;
	}

	// 수정 :

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
	
	//update  다되고 처리 되는 부분 
	@RequestMapping("/CluBoard/UptProc")
	public ModelAndView UptProc(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		String clb_clucode = (String) map.get("clb_clucode");
		buginservice.uptproc(map);
		mv.setViewName("redirect:/CluBoard?clb_clucode=" + clb_clucode+"&page=1&pagecount=10&pagegrp=1");
		return mv;
	}

	
	// 동아리정보 보는 게시판
	@RequestMapping("/joinClub")
	public ModelAndView joinClub(@RequestParam String cluapp_code) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("cluapp_code", cluapp_code);
		mv.setViewName("user/sub/sub05/joinForm");
		return mv;
	}

	// 동아리신청서 insert 할때 처리 하는 부분
	@RequestMapping("/joinClub/Proc")
	public ModelAndView joinProc(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		buginservice.insertjoin(map);
		mv.setViewName("redirect:/Clublist");
		return mv;
	}

}
