package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.BlogVo;

@Repository
public class BlogDao {
	
	@Autowired
	SqlSession sqlSession;
	
	//블로그 등록
	public int createBlog(int user_no) {
		System.out.println("BlogDao.createBlog()");
	    
	    return sqlSession.insert("blog.createBlog", user_no);
	}
	
	//블로그 유저 정보 가져오기
	public BlogVo selectUser(String id) {
		System.out.println("BlogDao.SelectUser()");
		
		return sqlSession.selectOne("blog.selectBlog", id);
	}
}
