package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.ArtistDao;
import com.javaex.vo.UserVo;

@Service
public class ArtistService {

	@Autowired
	private ArtistDao artistDao;

	// 아티스트 리스트 가져오기
	public List<UserVo> getArtistList() {

		return artistDao.getArtistList();
	}

	// 아티스트 라이브 리스트 가져오기
	public List<UserVo> getArtistLive() {

		return artistDao.getArtistLive();
	}

	// 아티스트 팬 많은 순 리스트 가져오기
	public List<UserVo> getArtistFan() {

		return artistDao.getArtistFan();
	}

	// new 아티스트 리스트 가져오기
	public List<UserVo> getArtistNew() {

		return artistDao.getArtistNew();
	}

	// 아티스트 장르 리스트 가져오기
	public List<UserVo> getArtistGenre(int no) {

		return artistDao.getArtistGenre(no);
	}

	// 팬되기 리스트 가져오기
	public List<UserVo> getFanList(int user_no) {

		return artistDao.getFanList(user_no);
	}

	// 팬 등록
	public boolean getFan(UserVo userVo) {

		if (artistDao.getFanOk(userVo) == null) {

			return false;
			
		} else {
			System.out.println("팬입니다.");
			artistDao.getFan(userVo);
			
			return true;

		}

	}

	// 팬 로딩
	public List<UserVo> getFanLoading(int user_no) {

		return artistDao.getFanLoading(user_no);
	}
	
	
	// 좋아요 등록
	public boolean getLikes(UserVo userVo) {

		if (artistDao.getLikesOk(userVo) == null) {

			return false;
			
		} else {
			System.out.println("좋아요를 눌렀습니다.");
			artistDao.getLikes(userVo);
			
			return true;

		}

	}
	
	// 좋아요 로딩
	public List<UserVo> getLikesLoading(int user_no) {

		return artistDao.getLikesLoading(user_no);
	}
	
	
	
	
	
	
	
	
	
	

	// 블로그 라이브 리스트 가져오기
	public List<UserVo> getBlogLive() {

		return artistDao.getBlogLive();
	}

}
