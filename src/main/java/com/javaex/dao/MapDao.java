package com.javaex.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	
}
