package com.javaex.api.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
import com.javaex.service.ArtistService;
import com.javaex.service.BlogService;
import com.javaex.service.BlogService2;
import com.javaex.vo.BlogVo;
import com.javaex.vo.PostVo;
import com.javaex.vo.UserVo;

@RequestMapping(value = "/api/blog/")
@Controller
public class ApiBlogController {

  @Autowired
  BlogService2 blogService2;

  @Autowired
  BlogService blogService;

  @Autowired
  ArtistService artistService;

  /*** 공연 시작 ***/
  @ResponseBody
  @RequestMapping(value = "live_start", method = {RequestMethod.GET, RequestMethod.POST})
  public int live_start(@RequestBody PostVo postVo) {
    System.out.println("[현재 위치: ApiBlogController.live_start]");

    System.out.println(postVo);

    return blogService2.live_start(postVo);

  }

  /*** 공연 종료 ***/
  @ResponseBody
  @RequestMapping(value = "live_end", method = {RequestMethod.GET, RequestMethod.POST})
  public int live_end(@RequestBody PostVo postVo) {
    System.out.println("[현재 위치: ApiBlogController.live_end]");

    return blogService2.live_end(postVo);

  }

  /*** 타임라인(메인) 조회 ***/
  @ResponseBody
  @RequestMapping(value = "timeline_main/{user_no}", method = {RequestMethod.GET, RequestMethod.POST})
  public List<PostVo> timeline_main(@PathVariable("user_no") int user_no) {
    System.out.println("[현재 위치: ApiBlogController.timeline_main]");

    return blogService2.timeline_main(user_no);

  }

  /*** 타임라인 ***/
  @ResponseBody
  @RequestMapping(value = "timeline", method = {RequestMethod.GET, RequestMethod.POST})
  public List<PostVo> timeline(@RequestParam("start_date") int start_date, @RequestParam("end_date") int end_date,
      @RequestParam("user_no") int user_no) {
    System.out.println("[현재 위치: ApiBlogController.timeline]");

    Map<String, Object> date_map = new HashMap<String, Object>();

    date_map.put("start_date", start_date);
    date_map.put("end_date", end_date);
    date_map.put("user_no", user_no);

    System.out.println(date_map);

    return blogService2.timeline(date_map);

  }

  /*** 썸네일 업로드 ***/
  @ResponseBody
  @RequestMapping(value = "upload/{user_no}", method = {RequestMethod.GET, RequestMethod.POST})
  public void upload(@RequestParam(value = "file1", required = false) MultipartFile file, @PathVariable("user_no") int user_no,
      @ModelAttribute PostVo postVo) {
    System.out.println("[현재 위치: BlogController2.upload]");

    postVo.setUser_no(user_no);

    if (file == null) {
      System.out.println("파일이 없습니다.");

    } else {
      System.out.println(user_no);

      blogService2.restore(postVo, file);
      System.out.println("파일이 있습니다.");

    }

  }

  /*** 블로그 aside live list ***/
  @ResponseBody
  @RequestMapping(value = "blog_aside", method = {RequestMethod.GET, RequestMethod.POST})
  public List<UserVo> blog_aside() {
    System.out.println("[현재 위치: ApiBlogController.blog_aside]");

    return artistService.getBlogLive();

  }

  /*** 갤러리 1개 조회 ***/
  @ResponseBody
  @RequestMapping(value = "gallery/{post_no}", method = {RequestMethod.GET, RequestMethod.POST})
  public PostVo gallery(@PathVariable("post_no") int post_no) {
    System.out.println("[현재 위치: ApiBlogController.blog_gallery]");

    return blogService2.getOneGallery(post_no);

  }

  /*** 블로그 메인(안드로이드) ***/
  @ResponseBody
  @RequestMapping(value = "blog_main", method = {RequestMethod.GET, RequestMethod.POST})
  public BlogVo blog_main(@RequestBody UserVo userVo) {
    System.out.println("[현재 위치: ApiBlogController.blog_main]");

    return blogService.selectUser(userVo.getId());

  }

  /*** 배너 업로드(안드로이드) ***/
  @ResponseBody
  @RequestMapping(value = "banner/{user_no}", method = {RequestMethod.GET, RequestMethod.POST})
  public int banner(@RequestParam(value = "file1", required = false) MultipartFile file, @PathVariable("user_no") int user_no) {
    System.out.println("[현재 위치: BlogController2.banner]");

    System.out.println(user_no);

    if (file == null) {
      System.out.println("파일이 없습니다.");
      return blogService2.setBanner(user_no, null);

    } else {
      System.out.println("파일이 있습니다.");

      return blogService2.setBanner(user_no, file);

    }

  }

  /*** 프로필 업로드(안드로이드) ***/
  @ResponseBody
  @RequestMapping(value = "profile/{user_no}", method = {RequestMethod.GET, RequestMethod.POST})
  public int profile(@RequestParam(value = "file1", required = false) MultipartFile file, @PathVariable("user_no") int user_no) {
    System.out.println("[현재 위치: BlogController2.profile]");

    System.out.println(user_no);

    if (file == null) {
      System.out.println("파일이 없습니다.");
      return blogService2.setProfile(user_no, null);

    } else {
      System.out.println("파일이 있습니다.");
      return blogService2.setProfile(user_no, file);

    }

  }
  
  //라이브 중 확인
  @ResponseBody
  @RequestMapping(value = "blog_live", method = {RequestMethod.GET, RequestMethod.POST})
  public PostVo blog_live(@RequestParam("id") String id) {
	    System.out.println("[현재 위치: ApiBlogController.blog_live]");
	    PostVo postVo = blogService.checkLive(id);
	    System.out.println(postVo);
	    return postVo;
	  }
}


