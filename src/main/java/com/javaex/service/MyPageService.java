package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.BlogDao;
import com.javaex.dao.MyPageDao;
import com.javaex.dao.UserDao;
import com.javaex.vo.MypageVo;

@Service
public class MyPageService {
	
	@Autowired
	MyPageDao mypageDao;
	@Autowired
	UserDao userDao;
	@Autowired
	BlogDao blogDao;
	
	//Artist 정보 가져오기
	public MypageVo getArtistInfo(String id) {
		System.out.println("MyPageService.getArtistInfo()");
		
		return mypageDao.getArtistInfo(id);
	}
	
	//아티스트 정보 등록
	public int artistInsert(MypageVo mypageVo) {
		System.out.println("MyPageService.artistInsert()");
		
		//블로그 만들기
		System.out.println("BlogDao");
		
		blogDao.createBlog(mypageVo.getUser_no());
		blogDao.createCategory(mypageVo.getUser_no());
		
		return mypageDao.artistModify(mypageVo);
	}
	
	//아티스트 정보 수정
	public int artistModify(MypageVo mypageVo) {
		System.out.println("MyPageService.artistModify()");
		
		return mypageDao.artistModify(mypageVo);
	}
	
	//이티스트 활동명 중복 체크
	public boolean nickCheck(String nickname, int user_no) {
		
	    if (userDao.nickCheck(nickname) == null) {
	        return true;
	      } else {
	    	  String nick = userDao.getNick(user_no);
	    	  System.out.println(nick);
	    	  System.out.println(nickname);
	    	  if(nickname.equals(nick)) {
	    		  return true;	    		  
	    	  } else {
	    		  return false;
	    	  }
	      }
	    
	    
	}
	
}
