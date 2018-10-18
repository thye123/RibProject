package com.bujun.bjsearch.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import com.bujun.bjsearch.vo.BjlSearchVo;
import com.bujun.bookReport.paging.PageMaker;
import com.bujun.bookReport.paging.SearchCriteria;

@Controller
public class SearchController {

	@RequestMapping("/bjsearch")
	public String Bjsearch(@RequestParam HashMap<String, Object> map, Model model, SearchCriteria cri) 
			throws ParserConfigurationException, SAXException, IOException {
		
		model.addAttribute("menu", map);
		
		
		/*****************************************/
		
		System.out.println("=========================");
		
		
		if( map.get("chk") != null && map.get("chk").equals("1") ) {
			
			if(map.get("sort_select1").equals("001")) {
				map.put("sort_select1", "종합자료실");
			} else if (map.get("sort_select1").equals("002")) {
				map.put("sort_select1", "어린이실");
			} else if (map.get("sort_select1").equals("003")) {
				map.put("sort_select1", "아동실");
			} else if (map.get("sort_select1").equals("004")) {
				map.put("sort_select1", "분관아동");
			} else if (map.get("sort_select1").equals("005")) {
				map.put("sort_select1", "분관종합실");
			} else if (map.get("sort_select1").equals("006")) {
				map.put("sort_select1", "종합실");
			} else if (map.get("sort_select1").equals("007")) {
				map.put("sort_select1", "서고");
			} else if (map.get("sort_select1").equals("008")) {
				map.put("sort_select1", "보존서고");
			} else if (map.get("sort_select1").equals("009")) {
				map.put("sort_select1", "유아서고");
			} else if (map.get("sort_select1").equals("010")) {
				map.put("sort_select1", "분관서고(일반)");
			} else if (map.get("sort_select1").equals("011")) {
				map.put("sort_select1", "분관서고(유아,그림책)");
			} else if (map.get("sort_select1").equals("012")) {
				map.put("sort_select1", "분관서고(관광)");
			} else if (map.get("sort_select1").equals("013")) {
				map.put("sort_select1", "스마트 도서관");
			} else if (map.get("sort_select1").equals("014")) {
				map.put("sort_select1", "문적원2실");
			} else if (map.get("sort_select1").equals("015")) {
				map.put("sort_select1", "디지털자료실");
			} else if (map.get("sort_select1").equals("016")) {
				map.put("sort_select1", "분관디지털(DVD)");
			} else if (map.get("sort_select1").equals("017")) {
				map.put("sort_select1", "멀티미디어실");
			} else if (map.get("sort_select1").equals("018")) {
				map.put("sort_select1", "유아자료실(1층)");
			} else if (map.get("sort_select1").equals("019")) {
				map.put("sort_select1", "아동자료실(2층)");
			}
			
			
			if(map.get("sort_select3").equals("GM")) {
				map.put("sort_select3", "일반자료");
			} else if (map.get("sort_select3").equals("HA")) {
				map.put("sort_select3", "교과서");
			} else if (map.get("sort_select3").equals("HR")) {
				map.put("sort_select3", "학습서");
			} else if (map.get("sort_select3").equals("MA")) {
				map.put("sort_select3", "잡지");
			} else if (map.get("sort_select3").equals("NP")) {
				map.put("sort_select3", "신문");
			} else if (map.get("sort_select3").equals("CA")) {
				map.put("sort_select3", "만화");
			} else if (map.get("sort_select3").equals("OBJ")) {
				map.put("sort_select3", "아동,청소년 도서");
			} else if (map.get("sort_select3").equals("MED")) {
				map.put("sort_select3", "점자자료");
			}
			
			
			map.put("pageNum", map.get("page"));
			
			
			String url = "http://search.siminlib.go.kr/search/query/xml_publibQuery.jsp?kwd="
					+ map.get("kwd") + "&key=d207f3a0bf8348af8bac8adb7d1b0224&"
					+ "sort_select1=" + map.get("sort_select1") + "&sort_select2=&sort_select3="+ map.get("sort_select3") +
					"&sort_select5=" + map.get("sort_select5")
					+"&startDate=" + map.get("startDate") + "&endDate="+ map.get("endDate") +"&pageSize=12&pageNum="+ map.get("pageNum");


			String kwd = cri.encoding((String) map.get("kwd"));
			model.addAttribute("kwd", kwd);
			model.addAttribute("key", map.get("kwd"));
			
			model.addAttribute("sort_select1", map.get("sort_select1"));
			model.addAttribute("sort_select3", map.get("sort_select3"));
			model.addAttribute("sort_select5", map.get("sort_select5"));
			model.addAttribute("startDate", map.get("startDate"));
			model.addAttribute("endDate", map.get("endDate"));
			
			BjlSearchVo vo = null;
			List<BjlSearchVo> list = new ArrayList<>();
			
			
			//// xml 파싱
			DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
			Document doc = dBuilder.parse(url);
			
			
			//root tag
			doc.getDocumentElement().normalize();
			System.out.println("Root element : " + doc.getDocumentElement().getNodeName()); // Root element: root
			
			//파싱할 tag
			NodeList nList = doc.getElementsByTagName("row"); //row안에 정보 들어가있음
			System.out.println("파싱할 리스트 수 : " + nList.getLength());
			
			for(int temp = 0; temp < nList.getLength(); temp++){		
				Node nNode = nList.item(temp);
				if(nNode.getNodeType() == Node.ELEMENT_NODE){
									
					Element eElement = (Element) nNode;

					
					
					System.out.println("######################");
					System.out.println("저자  : " + getTagValue("AUTHOR_INFO", eElement));
					System.out.println("책이름  : " + getTagValue("N_TITLE", eElement));		
					
					String n_title = getTagValue("N_TITLE", eElement);
					String author_info = getTagValue("AUTHOR_INFO", eElement);
					String pub_info = getTagValue("PUB_INFO", eElement);
					String form_mat = getTagValue("FORM_MAT", eElement);
					String giho = getTagValue("GIHO", eElement);
					String kdc = getTagValue("KDC", eElement);

					
					vo = new BjlSearchVo();
					vo.setTitle(n_title);
					vo.setAuthor(author_info);
					vo.setPubInfo(pub_info);
					vo.setGubun(form_mat);
					vo.setGiho(giho);
					vo.setKdc(kdc);
					
					
					list.add(vo);

				}	// for end
			}	
			
			
			
			//전체 데이터 수
			NodeList info = doc.getElementsByTagName("info"); //info
			
			int total = 0;
			
			//info
			for (int i = 0; i < info.getLength(); i++) {
				Node nNode = info.item(i);
				
				Element eElement = (Element) nNode;				
				total = Integer.parseInt(getTagValue("total", eElement));
			}
			
			System.out.println("전체 데이터 수 : " + total);
			
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(cri);
			pageMaker.setTotalCount(total);
			
					
			
			model.addAttribute("total", total);
			model.addAttribute("pageMaker", pageMaker);
			model.addAttribute("list", list);
			
			
			
		}
		
		
		/*****************************************/
		
		
		
		
		return "user/sub/sub03/bjsearch";
	}
	
	
	
    // tag값의 정보를 가져오는 메소드
	private static String getTagValue(String tag, Element eElement) {
	    NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
	    Node nValue = (Node) nlList.item(0);
	    if(nValue == null) 
	        return null;
	    return nValue.getNodeValue();
	}	
	
}
