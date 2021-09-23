package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ArtistDao {

	@Autowired
	private SqlSession sqlsession;
	
	// 아티스트 리스트 가져오기
	public void getArtistList() {
		System.out.println("artistdao");
		
		sqlsession.selectList("artist.getArtist");
	}
	
	
}
