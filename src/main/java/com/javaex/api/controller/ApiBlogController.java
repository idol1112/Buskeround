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
import com.javaex.vo.NoticeVo;
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

    // 블로그 hit
    blogService2.blog_hit(userVo.getId());

    return blogService2.blog_android(userVo.getId());

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

  /*** 공지사항 가져오기(안드로이드) ***/
  @ResponseBody
  @RequestMapping(value = "noticeList/{user_no}", method = {RequestMethod.GET, RequestMethod.POST})
  public List<PostVo> noticeList(@PathVariable("user_no") int user_no) {
    System.out.println("[현재 위치: BlogController2.noticeList]");

    return blogService2.getNoticeList(user_no);

  }

  /*** 공지사항 1개 가져오기(안드로이드) ***/
  @ResponseBody
  @RequestMapping(value = "noticeRead/{post_no}", method = {RequestMethod.GET, RequestMethod.POST})
  public PostVo noticeRead(@PathVariable("post_no") int post_no) {
    System.out.println("[현재 위치: BlogController2.noticeRead]");

    return blogService2.selectNotice(post_no);

  }

  /*** 타임라인 가져오기(안드로이드) ***/
  @ResponseBody
  @RequestMapping(value = "timelineList/{user_no}", method = {RequestMethod.GET, RequestMethod.POST})
  public List<PostVo> timelineList(@PathVariable("user_no") int user_no) {
    System.out.println("[현재 위치: BlogController2.timelineList]");

    return blogService2.gettimelineList(user_no);

  }

  /*** 갤러리 가져오기(안드로이드) ***/
  @ResponseBody
  @RequestMapping(value = "galleryList/{user_no}", method = {RequestMethod.GET, RequestMethod.POST})
  public List<PostVo> galleryList(@PathVariable("user_no") int user_no) {
    System.out.println("[현재 위치: BlogController2.galleryList]");

    return blogService2.getGalleryList(user_no);

  }

  /*** 갤러리 1개 가져오기(안드로이드) ***/
  @ResponseBody
  @RequestMapping(value = "galleryRead/{post_no}", method = {RequestMethod.GET, RequestMethod.POST})
  public PostVo galleryRead(@PathVariable("post_no") int post_no) {
    System.out.println("[현재 위치: BlogController2.galleryRead]");

    return blogService2.selectGallery(post_no);

  }

  /*** 방명록 가져오기 ***/
  @ResponseBody
  @RequestMapping(value = "commentList/{user_no}", method = {RequestMethod.GET, RequestMethod.POST})
  public List<PostVo> commentList(@PathVariable("user_no") int user_no) {
    System.out.println("[현재 위치: BlogController2.commentList]");

    return blogService2.getCommentList(user_no);

  }

  /*** 글 삭제(안드로이드) ***/
  @RequestMapping(value = "deletePost/{post_no}", method = {RequestMethod.GET, RequestMethod.POST})
  public void blog_deleteGallery(@PathVariable("post_no") int post_no) {
    System.out.println("[현재 위치: BlogController2.blog_deleteGallery]");

    blogService.deletePost(post_no);

  }

  /*** 방명록/공지사항 등록(안드로이드) ***/
  @ResponseBody
  @RequestMapping(value = "writePost/{id}", method = {RequestMethod.GET, RequestMethod.POST})
  public void writePost(@RequestParam(value = "file1", required = false) MultipartFile file, @PathVariable("id") String id,
      @RequestBody NoticeVo noticeVo) {
    System.out.println("[현재 위치: BlogController2.profile]");

    if (file == null) {
      System.out.println("파일이 없습니다.");
      blogService.writePost(noticeVo, noticeVo.getUser_no());

    } else {
      System.out.println("파일이 있습니다.");

    }

  }

  // 라이브 중 확인
  @ResponseBody
  @RequestMapping(value = "blog_live", method = {RequestMethod.GET, RequestMethod.POST})
  public PostVo blog_live(@RequestParam("id") String id) {
    System.out.println("[현재 위치: ApiBlogController.blog_live]");
    PostVo postVo = blogService.checkLive(id);
    System.out.println(postVo);
    return postVo;
  }
}


