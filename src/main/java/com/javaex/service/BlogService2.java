package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.javaex.dao.BlogDao2;
import com.javaex.vo.PostVo;

@Service
public class BlogService2 {

  @Autowired
  BlogDao2 blogDao2;

  /*** 공연 시작 ***/
  public int live_start(PostVo postVo) {

    blogDao2.live_start(postVo);
    blogDao2.live_on(postVo);

    return postVo.getPost_no();

  }

  /*** 공연 종료 ***/
  public void live_end(int user_no) {

    blogDao2.live_end(user_no);
    blogDao2.live_off(user_no);

  }



}
