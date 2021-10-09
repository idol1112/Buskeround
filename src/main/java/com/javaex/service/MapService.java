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
	
	public List<BuskingzoneVo> overlaySch(String stage_name, int user_no) {
		System.out.println("장소선택시 날짜 가져오는 서비스");
		
		Map<String, Object> overlaySch = new HashMap<String, Object>();
		overlaySch.put("stage_name", stage_name);
		overlaySch.put("user_no", user_no);

		
		List<BuskingzoneVo> sch = mapDao.overlaySch(overlaySch);
		
		return sch;
	}
	
	
}
