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
		
		return mypageDao.getArtistInfo(id);
	}
	
	public int artistModify(MypageVo mypageVo) {
		System.out.println("MyPageService.artistModify()");
		
		return mypageDao.artistModify(mypageVo);
	}
}
