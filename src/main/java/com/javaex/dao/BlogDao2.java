package com.javaex.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.javaex.vo.PostVo;
import com.javaex.vo.ThumbnailVo;

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
  public void live_end(int user_no) {
    System.out.println("[사용 메소드: BlogDao2.live_end()]");

    sqlSession.insert("post.live_end", user_no);

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

  /*** 파일 업로드 ***/
  public void restore(ThumbnailVo thumbnailVo) {
    System.out.println("[사용 메소드: BlogDao2.restore()]");

    sqlSession.insert("post.imgInsert", thumbnailVo);

  }

}
