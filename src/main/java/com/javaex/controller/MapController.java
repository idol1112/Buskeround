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
import com.javaex.vo.BuskingzoneVo;
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
	
	//에이작스 위치기반 리스트테이터 받기
	@ResponseBody
	@RequestMapping("/Map/mapns")
	public List<MapVo> mapns(@RequestParam("nlat") double nlat, @RequestParam("nlng") double nlng, @RequestParam("slat") double slat, @RequestParam("slng") double slng) {
		System.out.println("에이작스컨트롤러");
		List<MapVo> mapFind = mapService.mapfind(nlat,nlng,slat,slng);
		System.out.println(mapFind);
		return mapFind;
	}
	
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	//버스킹존 데이터 받기
	@RequestMapping("/buskingzone")
	public String busKingzoneList() {
		System.out.println("버스킹존 컨트롤러");
		
		return "Map/buskingzone";
	}
	
	//에이작스 위치기반 리스트테이터 받기
	@ResponseBody
	@RequestMapping("/buskingzonens")
	public List<BuskingzoneVo> busKingzonens(@RequestParam("nlat") double nlat, @RequestParam("nlng") double nlng, @RequestParam("slat") double slat, @RequestParam("slng") double slng) {
		System.out.println("버스킹존 컨트롤러");
		List<BuskingzoneVo> buskingzoneList = mapService.buskingzoneList(nlat,nlng,slat,slng);
		return buskingzoneList;
	}
	
	@ResponseBody
	@RequestMapping("/overlayList")
	public BuskingzoneVo overlayList(@RequestParam("user_no") int user_no) {
		System.out.println("컨트롤러 - 오버레이리스트");

		BuskingzoneVo overlayList = mapService.overlayList(user_no);
		System.out.println(overlayList);
		return overlayList;
	}
	
	
	
	
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	@RequestMapping("/Map/maptest")
	public String maptest(){
		System.out.println("맵테스트");
		
		return "Map/maptest";
	}
	
}
