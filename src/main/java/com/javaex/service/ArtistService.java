package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.ArtistDao;
import com.javaex.vo.UserVo;

@Service
public class ArtistService {

	@Autowired
	private ArtistDao artistDao;

	// 아티스트 팬 =..
	public List<UserVo> getArtistList(int user_no) {

		List<UserVo> aList = artistDao.getArtistList();

		for (int i = 0; i < aList.size(); i++) {

			aList.get(i).setArtist_no(user_no);
			String check = artistDao.checkArtist(aList.get(i));
			
			if (check == null) {
				aList.get(i).setFanOk(false);
			} else {
				aList.get(i).setFanOk(true);
			}
			
		}
		
		return aList;
	}
	
	// 아티스트 리스트 가져오기
	public List<UserVo> getArtistList() {
		
		List<UserVo> aList = artistDao.getArtistList();
		
		return aList;
	}

	// 아티스트 라이브 리스트 가져오기
	public List<UserVo> getArtistLive() {

		return artistDao.getArtistLive();
	}

	// 아티스트 팬 많은 순 리스트 가져오기
	public Map<String, Object> getArtistFan(int page, String keyword) {

		// 페이징 리스트 변수
		int list_count;
		int start_num;
		int end_num;

		// 페이징 버튼 변수
		int total_count;
		int page_btn_count;
		int start_page_btn_no;
		int end_page_btn_no;
		boolean next = false;
		boolean prev = false;

		/////////////////////////////////////////////////////////////////////// )////////////////////
		////////// 리스트 출력
		//////////////////////////////////////////////////////////////////////////////////////////

		// 한 페이지에 출력할 게시글 숫자
		list_count = 10;

		// 현재 페이지 계산(삼항연산자)
		page = (page > 0) ? page : (page = 1);

		// 시작 번호 계산
		start_num = (page - 1) * list_count + 1;

		// 끝 번호 계산
		end_num = (start_num + list_count) - 1;

		// 시작 번호, 끝 번호를 보내야 한다.
		List<UserVo> ArtistList = artistDao.getArtistFan(start_num, end_num, keyword);

		///////////////////////////////////////////////////////////////////////////////////////////
		////////// 페이징 계산
		//////////////////////////////////////////////////////////////////////////////////////////

		// 전체 게시글 갯수
		total_count = artistDao.selectTotalCnt(keyword);

		// 페이지당 버튼 갯수
		page_btn_count = 5;

		// 마지막 버튼 번호
		end_page_btn_no = (int) Math.ceil((page / (double) page_btn_count)) * page_btn_count;

		// 시작 버튼 번호
		start_page_btn_no = end_page_btn_no - (page_btn_count - 1);

		// 다음 화살표 표현 유무
		if ((end_page_btn_no * list_count) < total_count) {
			next = true;

		} else {
			// 다음 화살표가 없을 때 (마지막 페이지)
			end_page_btn_no = (int) Math.ceil(total_count / (double) list_count);

		}

		// 이전 화살표 표현 유무
		if (start_page_btn_no != 1) {
			prev = true;

		}

		// Map으로 감싸 return
		Map<String, Object> listMap = new HashMap<String, Object>();
		listMap.put("ArtistList", ArtistList);
		listMap.put("prev", prev);
		listMap.put("start_page_btn_no", start_page_btn_no);
		listMap.put("end_page_btn_no", end_page_btn_no);
		listMap.put("next", next);

		// 시작 번호, 끝 번호를 보내야 한다.
		return listMap;
	}

	// new 아티스트 리스트 가져오기
	public Map<String, Object> getArtistNew(int page, String keyword) {

		// 페이징 리스트 변수
		int list_count;
		int start_num;
		int end_num;

		// 페이징 버튼 변수
		int total_count;
		int page_btn_count;
		int start_page_btn_no;
		int end_page_btn_no;
		boolean next = false;
		boolean prev = false;

		///////////////////////////////////////////////////////////////////////////////////////////
		////////// 리스트 출력
		//////////////////////////////////////////////////////////////////////////////////////////

		// 한 페이지에 출력할 게시글 숫자
		list_count = 10;

		// 현재 페이지 계산(삼항연산자)
		page = (page > 0) ? page : (page = 1);

		// 시작 번호 계산
		start_num = (page - 1) * list_count + 1;

		// 끝 번호 계산
		end_num = (start_num + list_count) - 1;

		// 시작 번호, 끝 번호를 보내야 한다.
		List<UserVo> ArtistList = artistDao.getArtistNew(start_num, end_num, keyword);

		///////////////////////////////////////////////////////////////////////////////////////////
		////////// 페이징 계산
		//////////////////////////////////////////////////////////////////////////////////////////

		// 전체 게시글 갯수
		total_count = artistDao.selectTotalCnt(keyword);

		// 페이지당 버튼 갯수
		page_btn_count = 5;

		// 마지막 버튼 번호
		end_page_btn_no = (int) Math.ceil((page / (double) page_btn_count)) * page_btn_count;

		// 시작 버튼 번호
		start_page_btn_no = end_page_btn_no - (page_btn_count - 1);

		// 다음 화살표 표현 유무
		if ((end_page_btn_no * list_count) < total_count) {
			next = true;

		} else {
			// 다음 화살표가 없을 때 (마지막 페이지)
			end_page_btn_no = (int) Math.ceil(total_count / (double) list_count);

		}

		// 이전 화살표 표현 유무
		if (start_page_btn_no != 1) {
			prev = true;

		}

		// Map으로 감싸 return
		Map<String, Object> listMap = new HashMap<String, Object>();
		listMap.put("ArtistList", ArtistList);
		listMap.put("prev", prev);
		listMap.put("start_page_btn_no", start_page_btn_no);
		listMap.put("end_page_btn_no", end_page_btn_no);
		listMap.put("next", next);

		// 시작 번호, 끝 번호를 보내야 한다.
		return listMap;
	}

	// 아티스트 장르 리스트 가져오기
	public List<UserVo> getArtistGenre(int no) {

		return artistDao.getArtistGenre(no);
	}

	// 팬되기 리스트 가져오기
	public List<UserVo> getFanList(int user_no) {

		return artistDao.getFanList(user_no);
	}

	// 아티스트 검색 리스트
	public Map<String, Object> getArtistSearch(int page, String keyword) {

		// 페이징 리스트 변수
		int list_count;
		int start_num;
		int end_num;

		// 페이징 버튼 변수
		int total_count;
		int page_btn_count;
		int start_page_btn_no;
		int end_page_btn_no;
		boolean next = false;
		boolean prev = false;

		///////////////////////////////////////////////////////////////////////////////////////////
		////////// 리스트 출력
		//////////////////////////////////////////////////////////////////////////////////////////

		// 한 페이지에 출력할 게시글 숫자
		list_count = 10;

		// 현재 페이지 계산(삼항연산자)
		page = (page > 0) ? page : (page = 1);

		// 시작 번호 계산
		start_num = (page - 1) * list_count + 1;

		// 끝 번호 계산
		end_num = (start_num + list_count) - 1;

		// 시작 번호, 끝 번호를 보내야 한다.
		List<UserVo> ArtistList = artistDao.getArtistSearch(start_num, end_num, keyword);

		///////////////////////////////////////////////////////////////////////////////////////////
		////////// 페이징 계산
		//////////////////////////////////////////////////////////////////////////////////////////

		// 전체 게시글 갯수
		total_count = artistDao.selectTotalCnt(keyword);

		// 페이지당 버튼 갯수
		page_btn_count = 5;

		// 마지막 버튼 번호
		end_page_btn_no = (int) Math.ceil((page / (double) page_btn_count)) * page_btn_count;

		// 시작 버튼 번호
		start_page_btn_no = end_page_btn_no - (page_btn_count - 1);

		// 다음 화살표 표현 유무
		if ((end_page_btn_no * list_count) < total_count) {
			next = true;

		} else {
			// 다음 화살표가 없을 때 (마지막 페이지)
			end_page_btn_no = (int) Math.ceil(total_count / (double) list_count);

		}

		// 이전 화살표 표현 유무
		if (start_page_btn_no != 1) {
			prev = true;

		}

		// Map으로 감싸 return
		Map<String, Object> listMap = new HashMap<String, Object>();
		listMap.put("ArtistList", ArtistList);
		listMap.put("prev", prev);
		listMap.put("start_page_btn_no", start_page_btn_no);
		listMap.put("end_page_btn_no", end_page_btn_no);
		listMap.put("next", next);

		// 시작 번호, 끝 번호를 보내야 한다.
		return listMap;
	}

	// 팬 등록
	public boolean getFan(UserVo userVo) {

		if (artistDao.getFanOk(userVo) == null) {

			System.out.println("팬이 아닙니다.");
			artistDao.getFan(userVo);
			artistDao.artistFanUp(userVo.getArtist_no());

			return false;

		} else {
			System.out.println("팬입니다.");
			artistDao.deleteFan(userVo);
		    artistDao.artistFanDown(userVo.getArtist_no());

			return true;

		}

	}


	// 블로그 라이브 리스트 가져오기
	public List<UserVo> getBlogLive() {

		return artistDao.getBlogLive();
	}

	

}
