package com.spring.project.openinfo.controller;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.spring.project.openinfo.service.OpenInfoService;
import com.spring.project.openinfo.vo.OpenInfoVo;

@RestController
public class SearchController {
	
	@Autowired
	OpenInfoService opService;
	
	@Autowired
	OpenInfoService openInfoService;
	
	@RequestMapping(value="/OpenInfo/Search/", method=RequestMethod.GET, headers="Accept=application/json")
	public List<OpenInfoVo> searchList(@RequestParam HashMap<String, Object> map){
		System.out.println("map ajax : " + map);
		List<OpenInfoVo> list = openInfoService.searchList(map); 
		return list;
	}
}
