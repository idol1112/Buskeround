package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.BlogDao;
import com.javaex.dao.MyPageDao;
import com.javaex.dao.UserDao;
import com.javaex.vo.MypageVo;
import com.javaex.vo.UserVo;

@Service
public class MyPageService {
	
	@Autowired
	MyPageDao mypageDao;
	@Autowired
	UserDao userDao;
	@Autowired
	BlogDao blogDao;
	
	//유저 수정 (이미지)
	public int modifyImg(UserVo userVo, MultipartFile file) {
		System.out.println("MyPageService.modify");
		
		String saveDir = "C:\\javaStudy\\upload";

		// 확장자
		String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		System.out.println("exName:" + exName);
		
		// 저장파일이름(관리 떄문에 겹치지 않는 새이름 부여)
		String logoFile = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
		System.out.println("saveName:" + logoFile);

		// 파일패스
		String filePath = saveDir + "\\" + logoFile;
		System.out.println("filePath:" + filePath);
		
		// 파일 서버하드디스크에 저장
		try {

			byte[] fileData = file.getBytes();
			OutputStream out = new FileOutputStream(filePath);
			BufferedOutputStream bout = new BufferedOutputStream(out);

			bout.write(fileData);
			bout.close();

		} catch (Exception e) {
			// TODO: handle exception
		}
		
		userVo.setUser_img(logoFile);
		
		return mypageDao.modifyImg(userVo);
	}
	
	//유저 수정 (노 이미지)
	public int modify(UserVo userVo) {
		System.out.println("MyPageService.modify");
		
		return mypageDao.modify(userVo);
	}
	
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
