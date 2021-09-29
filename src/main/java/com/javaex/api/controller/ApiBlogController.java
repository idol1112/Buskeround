package com.javaex.api.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
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
  @ResponseBody
  @RequestMapping(value = "live_end", method = {RequestMethod.GET, RequestMethod.POST})
  public int live_end(@RequestParam("user_no") int user_no) {
    System.out.println("[현재 위치: ApiBlogController.live_end]");

    return blogService2.live_end(user_no);

  }

  /*** 타임라인(메인) 조회 ***/
  @ResponseBody
  @RequestMapping(value = "timeline_main/{user_no}", method = {RequestMethod.GET, RequestMethod.POST})
  public List<PostVo> timeline_main(@PathVariable("user_no") int user_no) {
    System.out.println("[현재 위치: ApiBlogController.timeline_main]");

    return blogService2.timeline_main(user_no);

  }

  /*** 썸네일 업로드 ***/
  @ResponseBody
  @RequestMapping(value = "upload/{user_no}", method = {RequestMethod.GET, RequestMethod.POST})
  public String upload(@RequestParam(value = "file1", required = false) MultipartFile file, @PathVariable("user_no") int user_no,
      @ModelAttribute PostVo postVo) {
    System.out.println("[현재 위치: BlogController2.upload]");

    postVo.setUser_no(user_no);

    if (file == null) {
      System.out.println("파일이 없습니다.");

    } else {
      blogService2.restore(postVo, file);

    }

    return "filelist";

  }

}


