package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.BlogVo;
import com.javaex.vo.MypageVo;
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
		
		//Resume
//		sqlSession.update("blog.resumeModify", blogVo);
		
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
		
		//Resume
//		sqlSession.update("blog.resumeModify", blogVo);
		
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
		
		//Resume
//		sqlSession.update("blog.resumeModify", blogVo);
		
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
	
}
