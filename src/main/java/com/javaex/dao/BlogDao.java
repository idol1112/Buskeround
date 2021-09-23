package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BlogDao {
	
	@Autowired
	SqlSession sqlSession;
	
	//블로그 등록
	public int createBlog(int user_no) {
		System.out.println("BlogDao.createBlog()");
	    
	    return sqlSession.insert("blog.createBlog", user_no);
	}
}
