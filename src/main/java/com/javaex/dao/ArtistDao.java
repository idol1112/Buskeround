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
	
	//아티스트 리스트 가져오기
	public List<UserVo> getArtistList() {
		System.out.println("[ArtistDao.getArtistList()]");
		
		return sqlsession.selectList("artist.getArtist");
	}
	
	//아티스트 라이브 리스트 가져오기
	public List<UserVo> getArtistLive() {
		System.out.println("[ArtistDao.getArtistLive()]");
		
		return sqlsession.selectList("artist.getArtistLive");
	}
	
	//아티스트 팬 많은 순 리스트 가져오기
	public List<UserVo> getArtistFan() {
		System.out.println("[ArtistDao.getArtistFan()]");
		
		return sqlsession.selectList("artist.getArtistFan");
	}
	
	//new 아티스트 리스트 가져오기
	public List<UserVo> getArtistNew() {
		System.out.println("[ArtistDao.getArtistNew()]");
		
		return sqlsession.selectList("artist.getArtistNew");
	}
	
	//아티스트 장르 리스트 가져오기
	public List<UserVo> getArtistGenre(int no) {
		System.out.println("[ArtistDao.getArtistGenre()]");
		
		return sqlsession.selectList("artist.getArtistGenre", no);
	}
	
 
	
	
	//팬 되기 리스트 가져오기
	public List<UserVo> getFanList(int user_no) {
		System.out.println("[ArtistDao.getFanList()]");
		
		return sqlsession.selectList("artist.getFanList", user_no);
	}
	
	
}
