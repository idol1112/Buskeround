package com.javaex.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.BlogVo;
import com.javaex.vo.MypageVo;
import com.javaex.vo.NoticeVo;
import com.javaex.vo.PostVo;
import com.javaex.vo.ResumeVo;

@Repository
public class BlogDao {
	
	@Autowired
	SqlSession sqlSession;
	
	//블로그 등록
	public int createBlog(MypageVo mypageVo) {
		System.out.println("BlogDao.createBlog()");
	    
	    return sqlSession.insert("blog.createBlog", mypageVo);
	}
	
	//카테고리 가져오기
	public int createCategory(int user_no) {
		System.out.println("BlogDao.createCategory()");
		
		sqlSession.insert("blog.createCategoryNotice", user_no);
		sqlSession.insert("blog.createCategoryTimeline", user_no);
		sqlSession.insert("blog.createCategoryGallery", user_no);
		return sqlSession.insert("blog.createCategoryGuestbook", user_no);
	}
	
	//블로그 유저 정보 가져오기
	public BlogVo selectUser(String id) {
		System.out.println("BlogDao.SelectUser()");
		
		return sqlSession.selectOne("blog.selectBlog", id);
	}
	
	//블로그 이력사항 정보 가져오기
	public List<ResumeVo> selectResumeList(String id){
		int user_no = sqlSession.selectOne("blog.getUserNo", id);
		
		System.out.println("BlogDao.SelectUser() + UserNo : " + user_no);
		
		return sqlSession.selectList("blog.selectResume", user_no);
	}
	

	//정보 수정 (이미지)
	public int modifyImg(BlogVo blogVo) {
		System.out.println("BlogDao.ModifyImg()");
		
		//Users
		System.out.println("UsersModify");
		sqlSession.update("blog.usersModify", blogVo);
		
		//Blog
		System.out.println("BlogModify");
		return sqlSession.update("blog.blogModifyImg", blogVo);
	}
	
	//정보수정 (이미지 없음)
	public int modify(BlogVo blogVo) {
		System.out.println("BlogDao.Modify()");
		
		//Users
		System.out.println("UsersModify");
		sqlSession.update("blog.usersModify", blogVo);
		
		//Blog
		System.out.println("BlogModify");
		return sqlSession.update("blog.blogModify", blogVo);
	}
	
	//정보수정 (이미지 삭제)
	public int modifyDeleteImg(BlogVo blogVo) {
		System.out.println("BlogDao.Modify()");
		
		//Users
		System.out.println("UsersModify");
		sqlSession.update("blog.usersModify", blogVo);
		
		//Blog
		System.out.println("BlogModify");
		return sqlSession.update("blog.blogModifyDeleteImg", blogVo);
	}
	
	//이력서 등록
	public int resumeInsert(List<ResumeVo> resumeList, BlogVo blogVo) {
		System.out.println("BlogDao.Modify()");
		
		sqlSession.delete("blog.resumeDelete", blogVo.getUser_no());
		return sqlSession.insert("blog.resumeInsert", resumeList);
	}
	
	//공지/방명록 작성
	public int writePost(NoticeVo noticeVo, int user_no) {
		System.out.println("BlogDao.writePost()");
		
		int category = sqlSession.selectOne("blog.categoryNo", noticeVo);
		noticeVo.setCategory_no(category);
		noticeVo.setUser_no(user_no);
		System.out.println(noticeVo);
		
		return sqlSession.insert("blog.postInsert", noticeVo);
	}
	
	//Notice List (공지사항 리스트 가져오기)
	public List<NoticeVo> noticeList(Map<String, Object> searchvalue) {
		System.out.println("BlogDao.noticeList");
		
		//맵 땡겨오기
		String id = (String) searchvalue.get("id");
		
		//User_no 가져오기
		int user_no = sqlSession.selectOne("blog.getUserNo", id);
		
		NoticeVo noticeVo = new NoticeVo();
		noticeVo.setUser_no(user_no);
		noticeVo.setCategory_type(1);
		
		//Category번호 가져오기
		int category_no = sqlSession.selectOne("blog.categoryNo", noticeVo);
		
		//맵에 추가
		searchvalue.put("category_no", category_no);
		System.out.println("맵 마지막 출력: " + searchvalue);
		
		return sqlSession.selectList("blog.noticeList", searchvalue);
	}
	
	//Notice List Count(공지사항 갯수 확인) SELECT TOTAL COUNT
	public int selectTotalCnt(Map<String, Object> searchvalue) {
		System.out.println("BlogDao.selectTotalCnt");
		
		//맵 땡겨오기
		String id = (String) searchvalue.get("id");
		
		//User_no 가져오기
		int user_no = sqlSession.selectOne("blog.getUserNo", id);
		
		NoticeVo noticeVo = new NoticeVo();
		noticeVo.setUser_no(user_no);
		noticeVo.setCategory_type(1);
		
		//Category번호 가져오기
		int category_no = sqlSession.selectOne("blog.categoryNo", noticeVo);
		
		//맵에 추가
		searchvalue.put("category_no", category_no);
		System.out.println("맵 마지막 출력: " + searchvalue);
		
		return sqlSession.selectOne("blog.selectTotalCnt", searchvalue);
	}
	
	// 조회수 Hit++
	public int updateHit(int no) {
		System.out.println("BlogDao.updateHit");

		return sqlSession.update("blog.updateHit", no);
	}
	
	// 공지사항 1개 가져오기
	public NoticeVo getNotice(int no) {
		System.out.println("BlogDao.getNotice");

		return sqlSession.selectOne("blog.selectNotice", no);
	}
	
	//포스트 수정
	public int modifyPost(NoticeVo noticeVo) { 
		System.out.println("BlogDao.modifyPost: " + noticeVo);
		
		return sqlSession.update("blog.modifyPost", noticeVo);
	}
	
	
	//포스트 삭제하기
	public int deletePost(int no) { 
		System.out.println("BlogDao.deletePost " + no);
		
		return sqlSession.delete("blog.deletePost", no);
	}
	
	////////////////////////////////////////////////////////////////////////////////////////
	//방명록
	////////////////////////////////////////////////////////////////////////////////////////
	
	//리스트 가져오기
	public List<NoticeVo> boardList(Map<String, Object> searchvalue) {
		System.out.println("BlogDao.noticeList");
		
		//맵 땡겨오기
		String id = (String) searchvalue.get("id");
		
		//User_no 가져오기
		int user_no = sqlSession.selectOne("blog.getUserNo", id);
		
		NoticeVo noticeVo = new NoticeVo();
		noticeVo.setUser_no(user_no);
		noticeVo.setCategory_type(4);
		
		//Category번호 가져오기
		int category_no = sqlSession.selectOne("blog.categoryNo", noticeVo);
		
		//맵에 추가
		searchvalue.put("category_no", category_no);
		System.out.println("맵 마지막 출력: " + searchvalue);
		
		return sqlSession.selectList("blog.noticeList", searchvalue);
	}
	
	//카운트
	public int selectTotalCntBoard(Map<String, Object> searchvalue) {
		System.out.println("BlogDao.selectTotalCnt");
		
		//맵 땡겨오기
		String id = (String) searchvalue.get("id");
		
		//User_no 가져오기
		int user_no = sqlSession.selectOne("blog.getUserNo", id);
		
		NoticeVo noticeVo = new NoticeVo();
		noticeVo.setUser_no(user_no);
		noticeVo.setCategory_type(4);
		
		//Category번호 가져오기
		int category_no = sqlSession.selectOne("blog.categoryNo", noticeVo);
		
		//맵에 추가
		searchvalue.put("category_no", category_no);
		System.out.println("맵 마지막 출력: " + searchvalue);
		
		return sqlSession.selectOne("blog.selectTotalCnt", searchvalue);
	}
	
	//포스트 수정
	public PostVo checkLive(String id) { 
		System.out.println("DAO");
		
		return sqlSession.selectOne("blog.checkLive", id);
	}
	
	//Check Fans
	public String checkFan(BlogVo blogVo) {
		System.out.println("[BlogDao.CheckFan()]");
		
		return sqlSession.selectOne("fanCheck", blogVo);
	}
	
	//Check Like
	public String checkLike(BlogVo blogVo) {
		System.out.println("[BlogDao.CheckLike()]");
		
		return sqlSession.selectOne("likesCheck", blogVo);
	}
}
