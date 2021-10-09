package com.javaex.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.BuskingzoneVo;
import com.javaex.vo.MapVo;

@Repository
public class MapDao {

	@Autowired
	SqlSession sqlSession;
	
	public List<MapVo> mapList() {
		System.out.println("맵다오-맵리스트");
		List<MapVo> mapList = sqlSession.selectList("map.mapList");
		return mapList;
	}
	
	public List<MapVo> mapfind(Map<String, Double> findMap) {
		System.out.println("맵찾기-다오");
		List<MapVo> mapfind = sqlSession.selectList("map.findMap", findMap);
		return mapfind;
	}
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////	
	
	public List<BuskingzoneVo> buskingzoneList(Map<String, Double> buskingzoneMap) {
		System.out.println("버스킹존 다오");
		List<BuskingzoneVo> buskingzoneList = sqlSession.selectList("buskingzone.buskingzoneList", buskingzoneMap);
		return buskingzoneList;
	}
	
	public BuskingzoneVo overlayList(int user_no) {
		System.out.println("다오  - 오버레이리스트");
		BuskingzoneVo overlayList = sqlSession.selectOne("buskingzone.overlayList", user_no);
		return overlayList;
	}
	
	public List<BuskingzoneVo> overlayStage(int user_no) {
		System.out.println("서비스 -오버레이장소");
		
		List<BuskingzoneVo> overlatStage = sqlSession.selectList("buskingzone.overlayStage", user_no);
		
		return overlatStage;
	}
	
	//에이작스 장소 지정시간 값가져오기
	public List<BuskingzoneVo> overlaySch(Map<String, Object> overlaySch) {
		System.out.println("장소선택시 날짜 가져오는 서비스");

		List<BuskingzoneVo> sch = sqlSession.selectList("buskingzone.overlaySch",overlaySch);
		
		return sch;
	}
	
}
