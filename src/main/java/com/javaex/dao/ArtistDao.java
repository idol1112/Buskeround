package com.javaex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.UserVo;

@Repository
public class ArtistDao {

	@Autowired
	private SqlSession sqlsession;

	// 아티스트 리스트 가져오기
	public List<UserVo> getArtistList() {
		System.out.println("[ArtistDao.getArtistList()]");

		return sqlsession.selectList("artist.getArtist");
	}

	// 아티스트 라이브 리스트 가져오기
	public List<UserVo> getArtistLive() {
		System.out.println("[ArtistDao.getArtistLive()]");

		return sqlsession.selectList("artist.getArtistLive");
	}

	// 아티스트 팬 많은 순 리스트 가져오기
	public List<UserVo> getArtistFan(int start_num, int end_num, String keyword) {
		System.out.println("[ArtistDao.getArtistFan()]");

		System.out.println("start_num: " + start_num + "end_num: " + end_num + "keyword: " + keyword);

		Map<String, Object> artistMap = new HashMap<String, Object>();
		artistMap.put("start_num", start_num);
		artistMap.put("end_num", end_num);
		artistMap.put("search", keyword);

		return sqlsession.selectList("artist.getArtistFan", artistMap);
	}

	// new 아티스트 리스트 가져오기
	public List<UserVo> getArtistNew(int start_num, int end_num, String keyword) {
		System.out.println("[ArtistDao.getArtistNew()]");
		
		System.out.println("start_num: " + start_num + "end_num: " + end_num + "keyword: " + keyword);
		
		Map<String, Object> artistMap = new HashMap<String, Object>();
		artistMap.put("start_num", start_num);
		artistMap.put("end_num", end_num);
		artistMap.put("search", keyword);

		return sqlsession.selectList("artist.getArtistNew", artistMap);
	}

	
	
	// 아티스트 장르 리스트 가져오기
	public List<UserVo> getArtistGenre(int no) {
		System.out.println("[ArtistDao.getArtistGenre()]");

		return sqlsession.selectList("artist.getArtistGenre", no);
	}

	// 팬 되기 리스트 가져오기
	public List<UserVo> getFanList(int user_no) {
		System.out.println("[ArtistDao.getFanList()]");

		return sqlsession.selectList("artist.getFanList", user_no);
	}
	
	//아티스트 검색 리스트
	public List<UserVo> getArtistSearch(int start_num, int end_num, String keyword) {
		System.out.println("[ArtistDao.getArtistSearch()]");
		
		System.out.println("start_num: " + start_num + "end_num: " + end_num + "keyword: " + keyword);
		
		Map<String, Object> artistMap = new HashMap<String, Object>();
		artistMap.put("start_num", start_num);
		artistMap.put("end_num", end_num);
		artistMap.put("search", keyword);

		return sqlsession.selectList("artist.getArtistSearch", artistMap);
	}
	

	// 팬 등록
	public void getFan(UserVo userVo) {
		System.out.println("[ArtistDao.getFan()]");

		sqlsession.insert("artist.getFan", userVo);

	}

	// 팬 로딩
	public List<UserVo> getFanLoading(int user_no) {
		System.out.println("[artistDao.getFanLoading()]");

		return sqlsession.selectList("artist.getFanLoading", user_no);
	}

	// 팬 등록 여부
	public UserVo getFanOk(UserVo userVo) {
		System.out.println("[artistDao.getFanOk()]");

		return sqlsession.selectOne("artist.getFanOk", userVo);
	}



	// 블로그 라이브 리스트 가져오기
	public List<UserVo> getBlogLive() {
		System.out.println("[ArtistDao.getBlogLive()]");

		return sqlsession.selectList("artist.getBlogLive");
	}

	// 페이징 (전체 게시물 갯수 구하기)
	public int selectTotalCnt(String keyword) {
		System.out.println("[ArtistDao.selectTotalCnt()]");
		
		Map<String, Object> countMap = new HashMap<String, Object>();
		countMap.put("keyword", keyword);

		return sqlsession.selectOne("artist.pageCount", countMap);
	}
	
	//checkArtist
	public String checkArtist(UserVo userVo) {
		System.out.println("[ArtistDao.checkArtist()]");
		
		String check = sqlsession.selectOne("artistCheck", userVo);
		
		return check;
	}
	
	
	//팬되기 숫자 올리기
	public void artistFanUp(int no) {
		System.out.println("[ArtistDao.artistFanUp()]");
		
		sqlsession.update("artistFanUp", no);
	}
	
	//팬되기 숫자 내리기
	public void artistFanDown(int no) {
		System.out.println("[ArtistDao.artistFanDown()]");
		
		sqlsession.update("artistFanDown", no);
	}
	
	//팬되기 삭제
	public void deleteFan(UserVo userVo) {
		System.out.println("[ArtistDao.deleteFan()]");
		
		sqlsession.update("deleteFan", userVo);
	}
	

}
