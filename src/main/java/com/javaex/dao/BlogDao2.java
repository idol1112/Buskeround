package com.javaex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.javaex.vo.PostVo;

@Repository
public class BlogDao2 {

  @Autowired
  SqlSession sqlSession;

  /*** 공연 시작 ***/
  public int live_start(PostVo postVo) {
    System.out.println("[사용 메소드: BlogDao2.live_start()]");

    return sqlSession.insert("post.live_start", postVo);

  }

  /*** live_on ***/
  public void live_on(PostVo postVo) {
    System.out.println("[사용 메소드: BlogDao2.live_on()]");

    sqlSession.insert("post.live_on", postVo);

  }

  /*** 공연 종료 ***/
  public int live_end(int user_no) {
    System.out.println("[사용 메소드: BlogDao2.live_end()]");

    return sqlSession.insert("post.live_end", user_no);

  }

  /*** live_off ***/
  public void live_off(int user_no) {
    System.out.println("[사용 메소드: BlogDao2.live_off()]");

    sqlSession.insert("post.live_off", user_no);

  }

  /*** 타임라인(메인) 조회 ***/
  public List<PostVo> timeline_main(int user_no) {
    System.out.println("[사용 메소드: BlogDao2.timeline_main()]");

    return sqlSession.selectList("post.timeline_main", user_no);

  }

  /*** 타임라인 조회 ***/
  public List<PostVo> timeline(Map<String, Object> date_map) {
    System.out.println("[사용 메소드: BlogDao2.timeline()]");

    System.out.println(date_map);

    return sqlSession.selectList("post.timeline", date_map);

  }

  /*** 파일 업로드 ***/
  public void restore(PostVo postVo) {
    System.out.println("[사용 메소드: BlogDao2.restore()]");

    sqlSession.update("post.imgInsert", postVo);

  }

  /*** 갤러리 리스트 가져오기 ***/
  public List<PostVo> getGallery(int user_no, int start_num, int end_num, String keyword) {
    System.out.println("[사용 메소드: BlogDao2.getGallery()]");

    Map<String, Object> pageMap = new HashMap<String, Object>();

    pageMap.put("user_no", user_no);
    pageMap.put("start_num", start_num);
    pageMap.put("end_num", end_num);
    pageMap.put("keyword", keyword);

    return sqlSession.selectList("post.getGallery", pageMap);

  }

  /*** 페이징 (전체 게시물 갯수 구하기) ***/
  public int selectTotalCnt(String keyword) {
    System.out.println("[사용 메소드: BlogDao2.selectTotalCnt()]");

    return sqlSession.selectOne("post.selectTotalCnt", keyword);
  }

  /*** 갤러리 리스트 가져오기(Main) ***/
  public List<PostVo> getGalleryMain(int user_no) {
    System.out.println("[사용 메소드: BlogDao2.getGalleryMain()]");

    return sqlSession.selectList("post.getGalleryMain", user_no);

  }

  /*** 갤러리 1개 가져오기 ***/
  public PostVo getOneGallery(int post_no) {
    System.out.println("[사용 메소드: BlogDao2.getOneGallery()]");

    return sqlSession.selectOne("post.getOneGallery", post_no);

  }

  /*** 조회수 ***/
  public int updateHit(int post_no) {
    System.out.println("[사용 메소드: BlogDao2.updateHit()]");

    return sqlSession.update("post.updateHit", post_no);
  }

  /*** 배너 수정 ***/
  public int setBanner(Map<String, Object> bannerMap) {
    System.out.println("[사용 메소드: BlogDao2.setBanner()]");

    return sqlSession.update("post.setBanner", bannerMap);
  }

  /*** 프로필 수정 ***/
  public int setProfile(Map<String, Object> profileMap) {
    System.out.println("[사용 메소드: BlogDao2.setProfile()]");

    System.out.println(profileMap);

    return sqlSession.update("post.setProfile", profileMap);
  }

}
