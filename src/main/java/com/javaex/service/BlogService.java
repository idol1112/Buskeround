package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.BlogDao;
import com.javaex.vo.BlogVo;
import com.javaex.vo.NoticeVo;
import com.javaex.vo.ResumeVo;

@Service
public class BlogService {

  @Autowired
  BlogDao blogDao;

  // 블로그 정보 가져오기
  public BlogVo selectUser(String id) {
    System.out.println("BlogService.SelectUser()");

    return blogDao.selectUser(id);
  }

  // 블로그 이력사항 가져오기
  public List<ResumeVo> getResumeList(String id) {
    System.out.println("BlogService.getResumeList()");

    return blogDao.selectResumeList(id);
  }

  // 블로그 수정하기(이미지)
  public int modifyImg(BlogVo blogVo, MultipartFile file, List<ResumeVo> resumeList) {
    System.out.println("BlogService.Modify()");

    String saveDir = "C:\\javaStudy\\upload";

    // 확장자
    String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
    System.out.println("exName:" + exName);

    // 저장파일이름(관리 떄문에 겹치지 않는 새이름 부여)
    String logoFile = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
    System.out.println("saveName:" + logoFile);

    // 파일패스
    String filePath = saveDir + "\\" + logoFile;
    System.out.println("filePath:" + filePath);

    // 파일 서버하드디스크에 저장
    try {

      byte[] fileData = file.getBytes();
      OutputStream out = new FileOutputStream(filePath);
      BufferedOutputStream bout = new BufferedOutputStream(out);

      bout.write(fileData);
      bout.close();

    } catch (Exception e) {
      // TODO: handle exception
    }

    blogVo.setBanner(logoFile);
    blogDao.resumeInsert(resumeList, blogVo);

    return blogDao.modifyImg(blogVo);
  }

  // 블로그 수정하기(노 이미지)
  public int modify(BlogVo blogVo, List<ResumeVo> resumeList) {
    System.out.println("BlogService.Modify()");

    blogDao.resumeInsert(resumeList, blogVo);
    return blogDao.modify(blogVo);
  }

  // 블로그 수정하기(이미지 삭제)
  public int modifyDeleteImg(BlogVo blogVo, List<ResumeVo> resumeList) {
    System.out.println("BlogService.Modify()");

    blogDao.resumeInsert(resumeList, blogVo);
    return blogDao.modifyDeleteImg(blogVo);
  }

  // Write Post (글 작성) (이미지 있음)
  public int writePostImg(NoticeVo noticeVo, MultipartFile file, int category) {
    System.out.println("BlogService.writePostImg()");
    
    String saveDir = "C:\\javaStudy\\upload";

    // 확장자
    String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
    System.out.println("exName:" + exName);

    // 저장파일이름(관리 떄문에 겹치지 않는 새이름 부여)
    String logoFile = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
    System.out.println("saveName:" + logoFile);

    // 파일패스
    String filePath = saveDir + "\\" + logoFile;
    System.out.println("filePath:" + filePath);

    // 파일 서버하드디스크에 저장
    try {

      byte[] fileData = file.getBytes();
      OutputStream out = new FileOutputStream(filePath);
      BufferedOutputStream bout = new BufferedOutputStream(out);

      bout.write(fileData);
      bout.close();

    } catch (Exception e) {
      // TODO: handle exception
    }
    
    noticeVo.setP_img(logoFile);

    return blogDao.writePost(noticeVo, category);
  }
  
  // Write Post (글 작성) (이미지 없음)
  public int writePost(NoticeVo noticeVo, int category) {
	    System.out.println("BlogService.writePost()");
	  
	  return blogDao.writePost(noticeVo, category);
  }
  
  // Modify Post (프로필 수정)
  public int modifyPost(NoticeVo noticeVo) {
	  System.out.println("BlogService.modifyPost()");
	  
	  return blogDao.modifyPost(noticeVo);
  }
  
  // Delete Post (글 삭제)
  public int deletePost(int no) {
	  System.out.println("BlogService.deletePost()");
	  
	  return blogDao.deletePost(no);
  }

  // Notice List (공지사항 리스트 가져오기)
  public Map<String, Object> noticeList(Map<String, Object> searchvalue) {
    System.out.println("BlogService.noticeList()");
    int crtPage = (int) searchvalue.get("crtPage");
    
    crtPage = (crtPage > 0) ? crtPage : (crtPage=1);
    
    int listCnt = 10;
    
    //시작번호 계산하기
  	int startRnum = ((crtPage-1)*listCnt+1);
  	
    //끝번 계산하기
  	int endRnum = (crtPage*listCnt);
  	searchvalue.put("startRnum", startRnum);
  	searchvalue.put("endRnum", endRnum);
  	
  	List<NoticeVo> noticeList = blogDao.noticeList(searchvalue);
  	System.out.println("리스트 가져오기 성공!: " + noticeList);
  	
	////////////////////////////////////////////////
	// 페이징 게산
	////////////////////////////////////////////////
  	
	//전체글 갯수
	int totalCount = blogDao.selectTotalCnt(searchvalue);
	System.out.println(totalCount);
	
	//페이지당 버튼 갯수
	int pageBtnCount = 5;
	
	//마지막 버튼 번호
	int endPageBtnNo = (int) (Math.ceil((crtPage/(double)pageBtnCount)) * pageBtnCount);
	
	//시작 버튼 번호
	int startPageBtnNo = endPageBtnNo - pageBtnCount + 1;
	
	//다음 화살표 표현 유무
	boolean next = false;
	if((endPageBtnNo * listCnt) < totalCount){
		next = true;
	} else {
		//다음 화살표 버튼이 없을때 endPageBtnNo를 다시 계산해야된다
		//전체글갯수 / 한폐이지의 글갯수
		
		endPageBtnNo = (int) Math.ceil(totalCount/(double)listCnt);
	}
	
	//이전 화살표 표현 유무
	boolean prev = false;
	if((startPageBtnNo) != 1) {
		prev = true;
	}
	
	Map<String, Object> listMap = new HashMap<String, Object>();
	listMap.put("noticeList", noticeList);
	listMap.put("prev", prev);
	listMap.put("startPageBtnNo", startPageBtnNo);
	listMap.put("endPageBtnNo", endPageBtnNo);
	listMap.put("next", next);

    return listMap;
  }

  // 공지사항 1개 가져오기
  public NoticeVo getNotice(int no) {
    System.out.println("BlogService.getBoard()");

    // Hit + 1
    blogDao.updateHit(no);

    // Get Board DB
    return blogDao.getNotice(no);
  }
  
  ////////////////////////////////////////////////////////////////////////////////////////
  //방명록
  ////////////////////////////////////////////////////////////////////////////////////////
  
  // Notice List (공지사항 리스트 가져오기)
  public Map<String, Object> boardList(Map<String, Object> searchvalue) {
    System.out.println("BlogService.noticeList()");
    int crtPage = (int) searchvalue.get("crtPage");
    
    crtPage = (crtPage > 0) ? crtPage : (crtPage=1);
    
    int listCnt = 10;
    
    //시작번호 계산하기
  	int startRnum = ((crtPage-1)*listCnt+1);
  	
    //끝번 계산하기
  	int endRnum = (crtPage*listCnt);
  	searchvalue.put("startRnum", startRnum);
  	searchvalue.put("endRnum", endRnum);
  	
  	List<NoticeVo> boardList = blogDao.boardList(searchvalue);
  	System.out.println("board리스트 가져오기 성공!: " + boardList);
  	
	////////////////////////////////////////////////
	// 페이징 게산
	////////////////////////////////////////////////
  	
	//전체글 갯수
	int totalCount = blogDao.selectTotalCntBoard(searchvalue);
	System.out.println(totalCount);
	
	//페이지당 버튼 갯수
	int pageBtnCount = 5;
	
	//마지막 버튼 번호
	int endPageBtnNo = (int) (Math.ceil((crtPage/(double)pageBtnCount)) * pageBtnCount);
	
	//시작 버튼 번호
	int startPageBtnNo = endPageBtnNo - pageBtnCount + 1;
	
	//다음 화살표 표현 유무
	boolean next = false;
	if((endPageBtnNo * listCnt) < totalCount){
		next = true;
	} else {
		//다음 화살표 버튼이 없을때 endPageBtnNo를 다시 계산해야된다
		//전체글갯수 / 한폐이지의 글갯수
		
		endPageBtnNo = (int) Math.ceil(totalCount/(double)listCnt);
	}
	
	//이전 화살표 표현 유무
	boolean prev = false;
	if((startPageBtnNo) != 1) {
		prev = true;
	}
	
	Map<String, Object> listMap = new HashMap<String, Object>();
	listMap.put("boardList", boardList);
	listMap.put("prev", prev);
	listMap.put("startPageBtnNo", startPageBtnNo);
	listMap.put("endPageBtnNo", endPageBtnNo);
	listMap.put("next", next);

    return listMap;
  }

}
