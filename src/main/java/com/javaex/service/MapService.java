package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.MapDao;
import com.javaex.vo.BuskingzoneVo;
import com.javaex.vo.MapVo;

@Service
public class MapService {

	@Autowired
	MapDao mapDao;
	
	public List<MapVo> mapList() {
		System.out.println("맵서비스-맵리스트");
		List<MapVo> mapList = mapDao.mapList();
		return mapList;
	}
	
	public List<MapVo> mapfind(double nlat,double nlng,double slat,double slng) {
		System.out.println("맵찾기-서비스");
		
		Map<String, Double> findMap = new HashMap<String, Double>();
		findMap.put("nlat", nlat);
		findMap.put("nlng", nlng);
		findMap.put("slat", slat);
		findMap.put("slng", slng);
		 
		List<MapVo> mapfind = mapDao.mapfind(findMap);
		
		return mapfind;
	}

	////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	public List<BuskingzoneVo> buskingzoneList(double nlat,double nlng,double slat,double slng) {
		System.out.println("버스킹존 서비스");
		
		Map<String, Double> buskingzoneMap = new HashMap<String, Double>();
		buskingzoneMap.put("nlat", nlat);
		buskingzoneMap.put("nlng", nlng);
		buskingzoneMap.put("slat", slat);
		buskingzoneMap.put("slng", slng);
		List<BuskingzoneVo> buskingzoneList = mapDao.buskingzoneList(buskingzoneMap);
		
		return buskingzoneList;
	}
	
	public BuskingzoneVo overlayList(int user_no) {
		System.out.println("서비스 - 오버레이리스트");
		BuskingzoneVo overlayList = mapDao.overlayList(user_no);
		return overlayList;
	}
	
	public List<BuskingzoneVo> overlayStage(int user_no) {
		System.out.println("서비스 -오버레이장소");
		
		List<BuskingzoneVo> overlatStage = mapDao.overlayStage(user_no);
		
		return overlatStage;
	}
	//에이작스 장소선택시 날짜 가져오기
	public List<BuskingzoneVo> overlaySch(String stage_name, int user_no) {
		System.out.println("장소선택시 날짜 가져오는 서비스");
		
		Map<String, Object> overlaySch = new HashMap<String, Object>();
		overlaySch.put("stage_name", stage_name);
		overlaySch.put("user_no", user_no);

		List<BuskingzoneVo> sch = mapDao.overlaySch(overlaySch);
		
		return sch;
	}
	
	//에이작스 날짜선택시 시간 가져오기
	public List<BuskingzoneVo> overlayTime(String stage_name, int user_no, String buskingzone_date) {
		System.out.println("날짜선택시 시간 가져오는 서비스");
		
		Map<String, Object> overlayTime = new HashMap<String, Object>();
		overlayTime.put("stage_name", stage_name);
		overlayTime.put("user_no", user_no);
		overlayTime.put("buskingzone_date", buskingzone_date);
		System.out.println(buskingzone_date);
		List<BuskingzoneVo> time = mapDao.overlayTime(overlayTime);
		
		return time;
	}
	
	//아티스트 공연신청
	public String buskingApp(int user_no,int time_no,String artistRequest) {
		System.out.println("서비스-공연신청");
		
		Map<String, Object> buskingApp = new HashMap<String, Object>();
		buskingApp.put("user_no", user_no);
		buskingApp.put("time_no", time_no);
		buskingApp.put("user_info", artistRequest);
		
		mapDao.buskingApp(buskingApp);
		
		return "";
	}
	//버스킹존 위치데이터
	public List<BuskingzoneVo> buskingzoneList() {
		List<BuskingzoneVo> buskingzoneList = mapDao.buskingzoneList();
		return buskingzoneList;
	}
	
	
}
