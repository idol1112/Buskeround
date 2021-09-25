package com.javaex.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.javaex.service.BlogService2;
import com.javaex.vo.PostVo;

@RequestMapping(value = "/api/blog/")
@Controller
public class ApiBlogController {

  @Autowired
  BlogService2 blogService2;

  /*** 공연 시작 ***/
  @ResponseBody
  @RequestMapping(value = "live_start", method = {RequestMethod.GET, RequestMethod.POST})
  public int live_start(@RequestBody PostVo postVo) {
    System.out.println("[현재 위치: ApiBlogController.live_start]");

    return blogService2.live_start(postVo);
  }

  /*** 공연 종료 ***/
  @RequestMapping(value = "live_end", method = {RequestMethod.GET, RequestMethod.POST})
  public String live_end(@RequestParam("user_no") int user_no) {
    System.out.println("[현재 위치: ApiBlogController.live_end]");

    blogService2.live_end(user_no);

    return "";
  }

  /*** 블로그 ID 받기 ***/
  @ResponseBody
  @RequestMapping(value = "blog_id/{id}", method = {RequestMethod.GET, RequestMethod.POST})
  public String blog_id(@PathVariable("id") String id) {
    System.out.println("[현재 위치: ApiBlogController.blog_id]");

    System.out.println(id);

    return id;
  }

}


