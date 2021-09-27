package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.BlogDao;
import com.javaex.vo.BlogVo;

@Service
public class BlogService {
	
	@Autowired
	BlogDao blogDao;
	
	//블로그 정보 가져오기
	public BlogVo selectUser (String id) {
		System.out.println("BlogService.SelectUser()");
		
		return blogDao.selectUser(id);
	}
	
	//블로그 수정하기
	public int modify(BlogVo blogVo) {
		System.out.println("BlogService.Modify()");
		
		return blogDao.modify(blogVo);	
	}

}
