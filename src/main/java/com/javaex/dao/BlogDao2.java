package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.javaex.vo.PostVo;

@Repository
public class BlogDao2 {

  @Autowired
  SqlSession sqlSession;

  /*** 공연 시작 ***/
  public void live_start(PostVo postVo) {
    System.out.println("[사용 메소드: BlogDao2.live_start()]");

    sqlSession.insert("post.live_start", postVo);
    sqlSession.insert("post.live_on", postVo);

  }

  /*** 공연 종료 ***/
  public void live_end(int user_no) {
    System.out.println("[사용 메소드: BlogDao2.live_end()]");

    sqlSession.insert("post.live_end", user_no);
    sqlSession.insert("post.live_off", user_no);

  }

}
