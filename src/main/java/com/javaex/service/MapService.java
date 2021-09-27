package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.MapDao;
import com.javaex.vo.MapVo;
import com.javaex.vo.PostVo;

@Service
public class MapService {

	@Autowired
	MapDao mapDao;
	
	public List<MapVo> mapList() {
		System.out.println("맵서비스-맵리스트");
		List<MapVo> mapList = mapDao.mapList();
		return mapList;
	}
	
	public List<PostVo> mapfind(double nlat,double nlng,double slat,double slng) {
		System.out.println("맵찾기-서비스");
		
		Map<String, Double> findMap = new HashMap<String, Double>();
		findMap.put("nlat", nlat);
		findMap.put("nlng", nlng);
		findMap.put("slat", slat);
		findMap.put("slng", slng);
		 
		List<PostVo> mapfind = mapDao.mapfind(findMap);
		
		return mapfind;
	}
	
	
	
	
}
