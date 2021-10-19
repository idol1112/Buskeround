package com.javaex.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

			System.out.println("넘버값없으면 실행");
			List<MapVo> mapList = mapService.mapList();
			model.addAttribute("mapList", mapList);
			
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
	
	//버스킹존 이동
	@RequestMapping("/buskingzone")
	public String busKingzoneList(Model model) {
		System.out.println("버스킹존 컨트롤러");
		List<BuskingzoneVo> buskingzoneList = mapService.buskingzoneLists();
		model.addAttribute("buskingzoneList", buskingzoneList);
		System.out.println(buskingzoneList);
		
		
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
	public Object overlayList(@RequestParam("user_no") int user_no) {
		System.out.println("컨트롤러 - 오버레이리스트");

		BuskingzoneVo overlayList = mapService.overlayList(user_no);
		
		List<BuskingzoneVo> overlayStage =  mapService.overlayStage(user_no);
		
		System.out.println(overlayList);
		System.out.println(overlayStage);
		
		Map<String, Object> mapOverlay = new HashMap<String, Object>();
		mapOverlay.put("overlayList", overlayList);
		mapOverlay.put("overlayStage", overlayStage);

		return mapOverlay;
	}
	
	//에이작스 날짜 받기
	@ResponseBody
	@RequestMapping("/overlaySch")
	public List<BuskingzoneVo> overlaySch(@RequestParam("buskingzone") String stage_name,@RequestParam("companyno") int user_no) {
		System.out.println("장소선택시 날짜 가져오는 컨트롤러");

		List<BuskingzoneVo> sch = mapService.overlaySch(stage_name,user_no);
		System.out.println(sch);
		return sch;
	}
	
	//에이작스 시간 받기
	@ResponseBody
	@RequestMapping("/overlayTime")
	public List<BuskingzoneVo> overlayTime(@RequestParam("buskingzone") String stage_name,@RequestParam("companyno") int user_no,@RequestParam("buskingzone_date") String buskingzone_date) {
		System.out.println("날짜선택시 시간 가져오는 컨트롤러");

		List<BuskingzoneVo> time = mapService.overlayTime(stage_name,user_no,buskingzone_date);
		System.out.println("컨트롤러데이터:"+time);
		return time;
	}
	
	//아티스트 공연신청
	@RequestMapping("/buskingApp")
	public String buskingApp(@RequestParam("user_no") int user_no, @RequestParam("time_no") int time_no, @RequestParam("artistRequest") String artistRequest) {
		
		return mapService.buskingApp(user_no,time_no,artistRequest);
	}
	
	
	@RequestMapping("/mapOne")
	public String mapOne(Model model,@RequestParam("user_no") int user_no) {
		System.out.println("넘버값"+user_no);
		MapVo mapListOne = mapService.mapListOne(user_no);
		System.out.println(mapListOne);
		
		model.addAttribute("mapListOne", mapListOne);
		
		return "Map/mapOne";
	}
	
	@RequestMapping("/maptest")
	public String maptest(Model model) {
		System.out.println("맵테스트");
		List<MapVo> mapList = mapService.mapList();
		model.addAttribute("mapList", mapList);
		System.out.println(mapList);
		return "Map/maptest";
	}

	
}
