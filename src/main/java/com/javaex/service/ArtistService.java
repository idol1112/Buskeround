package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.ArtistDao;
import com.javaex.vo.UserVo;

@Service
public class ArtistService {

	@Autowired
	private ArtistDao artistDao;
	
	//아티스트 리스트 가져오기
	public List<UserVo> getArtistList() {
		
		return artistDao.getArtistList();
	}
	

}