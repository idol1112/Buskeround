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

@Controller
public class MapController {

	@Autowired
	MapService mapService;
	
	//지도 위도경도데이터 받기
	@RequestMapping("/Map/map")
	public String mapList(Model model) throws JsonProcessingException {
		System.out.println("맵컨트롤러-맵리스트");
		List<MapVo> mapList = mapService.mapList();
		model.addAttribute("mapList", mapList);
		System.out.println(mapList);
		
		return "Map/map";
	}
	
	//버스킹존 데이터 받기
	@RequestMapping("/Map/buskingzone")
	public String busKingzoneList(Model model) throws JsonProcessingException {
		List<MapVo> mapList = mapService.mapList();
		model.addAttribute("mapList", mapList);
		System.out.println(mapList);
		
		return "Map/buskingzone";
	}
	
	//에이작스 위치기반 리스트테이터 받기
	@ResponseBody
	@RequestMapping("/Map/mapns")
	public List<MapVo> mapns(@RequestParam("nlat") double nlat, @RequestParam("nlng") double nlng, @RequestParam("slat") double slat, @RequestParam("slng") double slng) {
		System.out.println("에이작스컨트롤러");
		List<MapVo> mapFind = mapService.mapfind(nlat,nlng,slat,slng);
		System.out.println(mapFind);
		return mapFind;
	}
	
	@RequestMapping("/Map/maptest")
	public String maptest(){
		System.out.println("맵테스트");
		
		return "Map/maptest";
	}
	
}
