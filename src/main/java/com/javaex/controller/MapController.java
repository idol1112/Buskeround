package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.javaex.service.MapService;
import com.javaex.vo.MapVo;
import com.javaex.vo.PostVo;

@Controller
public class MapController {

	@Autowired
	MapService mapService;
	

	@RequestMapping("/Map/map")
	public String mapList(Model model) throws JsonProcessingException {
		System.out.println("맵컨트롤러-맵리스트");
		List<MapVo> mapList = mapService.mapList();
		model.addAttribute("mapList", mapList);
		System.out.println(mapList);
		
		return "Map/map";
	}
	
	@ResponseBody
	@RequestMapping("/Map/mapns")
	public List<PostVo> mapns(@RequestParam("nlat") double nlat, @RequestParam("nlng") double nlng, @RequestParam("slat") double slat, @RequestParam("slng") double slng) {
		System.out.println("에이작스컨트롤러");
		List<PostVo> mapFind = mapService.mapfind(nlat,nlng,slat,slng);
		System.out.println(mapFind);
		return mapFind;
	}
	
}
