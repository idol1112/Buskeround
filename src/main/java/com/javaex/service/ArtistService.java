package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.ArtistDao;

@Service
public class ArtistService {

	@Autowired
	private ArtistDao artistDao;
	
	//아티스트 리스트 가져오기
	public void getArtistList() {
		System.out.println("artistlist");
		
		artistDao.getArtistList();
	}
	

}
