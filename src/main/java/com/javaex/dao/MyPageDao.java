package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.MypageVo;

@Repository
public class MyPageDao {
	
	@Autowired
	SqlSession sqlSession;
	
	public MypageVo getArtistInfo(String id) {
	    System.out.println("[MyPageDao.getArtistInfo()]");
	    
	    return sqlSession.selectOne("mypage.getArtist", id);
	}

}
