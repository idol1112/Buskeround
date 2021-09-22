package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.MyPageDao;
import com.javaex.vo.MypageVo;

@Service
public class MyPageService {
	
	@Autowired
	MyPageDao mypageDao;
	
	//Artist 정보 가져오기
	public MypageVo getArtistInfo(String id) {
		System.out.println("MyPageService.getArtistInfo()");
		
		MypageVo mypageVo = mypageDao.getArtistInfo(id);
		return mypageVo;
	}
}
