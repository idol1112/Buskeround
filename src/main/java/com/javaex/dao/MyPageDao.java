package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.MypageVo;
import com.javaex.vo.UserVo;

@Repository
public class MyPageDao {
	
	@Autowired
	SqlSession sqlSession;
	
	//유저 수정(이미지)
	public int modifyImg(UserVo userVo) {
		System.out.println("[MyPageDao.ModifyUser()]");
		
		return sqlSession.update("mypage.modifyImg", userVo);
	}
	
	//유저 수정(이미지 없음)
	public int modify(UserVo userVo) {
		System.out.println("[MyPageDao.ModifyUser()]");
		
		return sqlSession.update("mypage.modify", userVo);
	}
	
	//아티스트 정보 가져오기
	public MypageVo getArtistInfo(String id) {
	    System.out.println("[MyPageDao.getArtistInfo()]");
	    
	    return sqlSession.selectOne("mypage.getArtist", id);
	}
	
	//아티스트 등록/수정
	public int artistModify(MypageVo mypageVo) {
		System.out.println("[MyPageDao.artistModify()]");
		
		return sqlSession.update("mypage.artistModify", mypageVo);
	}

}
