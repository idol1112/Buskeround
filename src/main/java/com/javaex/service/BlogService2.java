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
import com.javaex.dao.BlogDao2;
import com.javaex.vo.BlogVo;
import com.javaex.vo.PostVo;

@Service
public class BlogService2 {

  @Autowired
  BlogDao2 blogDao2;

  @Autowired
  BlogDao blogDao;

  /*** 공연 시작 ***/
  public int live_start(PostVo postVo) {

    blogDao2.live_on(postVo);

    if (postVo.getP_img().equals("1")) {
      postVo.setP_img("noimg.png");
      return blogDao2.live_start(postVo);

    } else {
      return blogDao2.live_start(postVo);
    }

  }

  /*** 공연 종료 ***/
  public int live_end(PostVo postVo) {

    blogDao2.live_off(postVo.getUser_no());
    return blogDao2.live_end(postVo.getUser_no());

  }

  /*** 타임라인(메인) 조회 ***/
  public List<PostVo> timeline_main(int user_no) {

    return blogDao2.timeline_main(user_no);
  }

  /*** 타임라인 조회 ***/
  public List<PostVo> timeline(Map<String, Object> date_map) {

    return blogDao2.timeline(date_map);

  }

  /*** 썸네일 등록 ***/
  public void restore(PostVo postVo, MultipartFile file) {

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

    postVo.setP_img(logoFile);

    blogDao2.restore(postVo);

  }

  /*** 갤러리 리스트 가져오기(blog_Main) ***/
  public List<PostVo> getGalleryMain(int user_no) {

    return blogDao2.getGalleryMain(user_no);

  }

  /*** 갤러리 1개 가져오기 ***/
  public PostVo getOneGallery(int post_no) {

    // 조회수
    blogDao2.updateHit(post_no);

    // 갤러리 정보 가져오기
    return blogDao2.getOneGallery(post_no);

  }

  /*** 갤러리 가져오기 및 페이징 ***/
  public Map<String, Object> galleryPage(int user_no, int page, String keyword) {

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
    list_count = 6;

    // 현재 페이지 계산(삼항연산자)
    page = (page > 0) ? page : (page = 1);


    // 시작 번호 계산
    start_num = (page - 1) * list_count + 1;

    // 끝 번호 계산
    end_num = (start_num + list_count) - 1;

    // 시작 번호, 끝 번호를 보내야 한다.
    List<PostVo> galleryList = blogDao2.getGallery(user_no, start_num, end_num, keyword);

    ///////////////////////////////////////////////////////////////////////////////////////////
    ////////// 페이징 계산
    //////////////////////////////////////////////////////////////////////////////////////////

    // 전체 게시글 갯수
    total_count = blogDao2.selectTotalCnt(keyword);

    // 페이지당 버튼 갯수
    page_btn_count = 5;

    // 마지막 버튼 번호
    end_page_btn_no = (int) Math.ceil((page / (double) page_btn_count)) * page_btn_count;

    // 시작 버튼 번호
    start_page_btn_no = end_page_btn_no - (page_btn_count - 1);

    // 다음 화살표 표현 유무
    if ((end_page_btn_no * list_count) < total_count) {
      next = true;

    } else { // 다음 화살표가 없을 때 (마지막 페이지)
      end_page_btn_no = (int) Math.ceil(total_count / (double) list_count);

    }

    // 이전 화살표 표현 유무
    if (start_page_btn_no != 1) {
      prev = true;

    }

    // Map으로 감싸 return
    Map<String, Object> listMap = new HashMap<String, Object>();
    listMap.put("galleryList", galleryList);
    listMap.put("prev", prev);
    listMap.put("start_page_btn_no", start_page_btn_no);
    listMap.put("end_page_btn_no", end_page_btn_no);
    listMap.put("next", next);

    // 시작 번호, 끝 번호를 보내야 한다.
    return listMap;

  }

  /*** 프로필 사진 수정 ***/
  public int setProfile(int user_no, MultipartFile file) {

    String logoFile = null;

    if (file != null) {
      String saveDir = "C:\\javaStudy\\upload";

      // 확장자
      String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
      System.out.println("exName:" + exName);

      // 저장파일이름(관리 떄문에 겹치지 않는 새이름 부여)
      logoFile = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
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
    }

    Map<String, Object> profileMap = new HashMap<String, Object>();
    profileMap.put("user_no", user_no);
    profileMap.put("user_img", logoFile);

    return blogDao2.setProfile(profileMap);

  }

  /*** 갤러리 리스트 가져오기(Main) ***/
  public List<PostVo> getGalleryMainPage() {

    return blogDao2.getGalleryMainPage();

  }

  /*** 블로그 정보 가져오기(안드로이드) ***/
  public BlogVo blog_android(String id) {

    return blogDao2.blog_android(id);

  }

  /*** 블로그 hit ***/
  public int blog_hit(String id) {

    return blogDao2.blog_hit(id);
  }

  /*** 공지사항 최신순 가져오기(안드로이드) ***/
  public List<PostVo> getNoticeList(int user_no) {

    return blogDao2.getNoticeList(user_no);

  }

  /*** 공지사항 1개 가져오기(안드로이드) ***/
  public PostVo selectNotice(int post_no) {

    blogDao.updateHit(post_no);

    return blogDao2.selectNotice(post_no);

  }

  /*** 타임라인 최신순 가져오기(안드로이드) ***/
  public List<PostVo> gettimelineList(int user_no) {

    return blogDao2.getTimelineList(user_no);

  }

  /*** 갤러리 최신순 가져오기(안드로이드) ***/
  public List<PostVo> getGalleryList(int user_no) {

    return blogDao2.getGalleryList(user_no);

  }

  /*** 갤러리 1개 가져오기(안드로이드) ***/
  public PostVo selectGallery(int post_no) {

    blogDao.updateHit(post_no);

    return blogDao2.selectGallery(post_no);

  }

  /*** 방명록 최신순 가져오기(안드로이드) ***/
  public List<PostVo> getCommentList(int user_no) {



    return blogDao2.getCommentList(user_no);

  }

}
