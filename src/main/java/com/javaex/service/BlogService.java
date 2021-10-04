package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.BlogDao;
import com.javaex.vo.BlogVo;
import com.javaex.vo.ResumeVo;

@Service
public class BlogService {
	
	@Autowired
	BlogDao blogDao;
	
	//블로그 정보 가져오기
	public BlogVo selectUser (String id) {
		System.out.println("BlogService.SelectUser()");
		
		return blogDao.selectUser(id);
	}
	
	//블로그 이력사항 가져오기
	public List<ResumeVo> getResumeList(String id){
		System.out.println("BlogService.getResumeList()");
		
		return blogDao.selectResumeList(id);
	}
	
	//블로그 수정하기(이미지)
	public int modifyImg(BlogVo blogVo, MultipartFile file, List<ResumeVo> resumeList) {
		System.out.println("BlogService.Modify()");
		
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
		
		blogVo.setBanner(logoFile);
		blogDao.resumeInsert(resumeList, blogVo);
		
		return blogDao.modifyImg(blogVo);	
	}
	
	//블로그 수정하기(노 이미지)
	public int modify(BlogVo blogVo, List<ResumeVo> resumeList) {
		System.out.println("BlogService.Modify()");
		
		blogDao.resumeInsert(resumeList, blogVo);
		return blogDao.modify(blogVo);	
	}
	
	//블로그 수정하기(이미지 삭제)
	public int modifyDeleteImg(BlogVo blogVo, List<ResumeVo> resumeList) {
		System.out.println("BlogService.Modify()");
		
		blogDao.resumeInsert(resumeList, blogVo);
		return blogDao.modifyDeleteImg(blogVo);	
	}

}
