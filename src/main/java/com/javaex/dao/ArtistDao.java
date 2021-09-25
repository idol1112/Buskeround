package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.UserVo;

@Repository
public class ArtistDao {

	@Autowired
	private SqlSession sqlsession;
	
	// 아티스트 리스트 가져오기
	public List<UserVo> getArtistList() {
		System.out.println("[Artist.getArtistList()]");
		
		return sqlsession.selectList("artist.getArtist");
	}
	
	//아티스트 라이브 리스트 가져오기
	public List<UserVo> getArtistLive() {
		System.out.println("[Artist.getArtistLive()]");
		
		return sqlsession.selectList("artist.getArtistLive");
	}
	
	
}
