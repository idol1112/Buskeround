package com.javaex.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.javaex.service.ArtistService;
import com.javaex.service.BlogService;
import com.javaex.service.BlogService2;
import com.javaex.vo.BlogVo;
import com.javaex.vo.NoticeVo;
import com.javaex.vo.ResumeVo;

@RequestMapping(value = "/blog/")
@Controller
public class BlogController {

  @Autowired
  BlogService blogService;

  @Autowired
  ArtistService artistService;

  @Autowired
  BlogService2 blogService2;

  ////////////////////////////////////////////////////////////////////////////////////////
  //블로그 메인
  ////////////////////////////////////////////////////////////////////////////////////////

  @RequestMapping(value = "blog_main/{id}", method = {RequestMethod.GET, RequestMethod.POST})
  public String blog_main(@PathVariable("id") String id, Model model,
						  @RequestParam(value = "keyword", required = false) String keyword,
					      @RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage) {
    System.out.println("[BlogController.blog_main()]");

    // 해더 정보 가져오기
    BlogVo blogVo = blogService.selectUser(id);
    model.addAttribute(blogVo);
    System.out.println("해더정보 가져오기 완료");

    // 블로그 hit
    blogService2.blog_hit(id);

    // 이력사항 가져오기
    List<ResumeVo> resumeList = blogService.getResumeList(id);
    model.addAttribute("resumeList", resumeList);
    System.out.println("이력사항 가져오기 완료");

    // Aside 리스트
    model.addAttribute("BlogLive", artistService.getBlogLive());
    System.out.println("아티스트 라이브 리스트: " + artistService.getBlogLive());
    System.out.println("어사이드");

    //공지사항 + 방명록 리스트
    // 서치 값 맵에 담기
    Map<String, Object> searchvalue = new HashMap<String, Object>();
    searchvalue.put("search", keyword); searchvalue.put("id", id); searchvalue.put("crtPage", crtPage);
    Map<String, Object> noticeMap = blogService.noticeList(searchvalue);
    model.addAttribute("noticeMap", noticeMap);

    searchvalue.put("search", keyword); searchvalue.put("id", id); searchvalue.put("crtPage", crtPage);
    Map<String, Object> boardMap = blogService.boardList(searchvalue);
    model.addAttribute("boardMap", boardMap);

    // 갤러리 리스트
    model.addAttribute("galleryList", blogService2.getGalleryMain(blogVo.getUser_no()));

    System.out.println("BlogVo: " + blogVo);

    return "Blog/blog_main";

  }

  ////////////////////////////////////////////////////////////////////////////////////////
  //블로그 수정
  ////////////////////////////////////////////////////////////////////////////////////////

  // ModifyForm
  @RequestMapping(value = "blog_modify/{id}", method = {RequestMethod.GET, RequestMethod.POST})
  public String blog_modifyform(@PathVariable("id") String id, Model model) {
    System.out.println("[BlogController.blog_modify()]");

    // 해더 정보 가져오기
    BlogVo blogVo = blogService.selectUser(id);
    model.addAttribute("blogVo", blogVo);

    // 이력사항 가져오기
    List<ResumeVo> resumeList = blogService.getResumeList(id);
    model.addAttribute("resumeList", resumeList);

    return "Blog/blogModifyForm";
  }

  // 수정
  @RequestMapping(value = "modify", method = {RequestMethod.GET, RequestMethod.POST})
  public String blog_modify(@ModelAttribute BlogVo blogVo,
      @RequestParam(value = "resume_content[]", required = false, defaultValue = "0") List<String> resumeContentList,
      @RequestParam(value = "file1", required = false, defaultValue = "0") MultipartFile file, @RequestParam("img_check") int img) {
    System.out.println("[BlogController.modify()]");

    // 확인
    System.out.println("modify.blogVo: " + blogVo);
    System.out.println("modify.file: " + file.getOriginalFilename());
    System.out.println("imgCheck: " + img);
    System.out.println("이력사항");
    // 이력사항
    for (String s : resumeContentList) {
      System.out.println(s);
    }

    List<ResumeVo> resumeList = new ArrayList<>();
    for (String s : resumeContentList) {

      resumeList.add(new ResumeVo(0, blogVo.getUser_no(), s));
    }
    System.out.println("리스트 출력" + resumeList);

    if (img == 2) {
      // 이미지 삭제
      int count = blogService.modifyDeleteImg(blogVo, resumeList);

      // 수정
      System.out.println("수정 완료 여부: " + count);
    } else {
      // 이미지 X
      if (file.isEmpty()) {
        int count = blogService.modify(blogVo, resumeList);
        // 수정
        System.out.println("수정 완료 여부: " + count);

      } else {
        // 이미지 수정
        int count = blogService.modifyImg(blogVo, file, resumeList);

        // 수정
        System.out.println("수정 완료 여부: " + count);
      }

    }

    // 수정 완료
    return "redirect:/blog/blog_main/" + blogVo.getId();
  }

  //타임라인
  @RequestMapping(value = "blog_timeline/{id}", method = {RequestMethod.GET, RequestMethod.POST})
  public String blog_timeline(@PathVariable("id") String id, Model model) {
    System.out.println("[TestingController.blog_timeline()]");

    // 해더 정보 가져오기
    BlogVo blogVo = blogService.selectUser(id);
    model.addAttribute(blogVo);

    // 이력사항 가져오기
    List<ResumeVo> resumeList = blogService.getResumeList(id);
    model.addAttribute("resumeList", resumeList);

    return "Blog/blog_timeline";
  }

  ////////////////////////////////////////////////////////////////////////////////////////
  //공지사항
  ////////////////////////////////////////////////////////////////////////////////////////

  //리스트 가져오기
  @RequestMapping(value = "blog_notice/{id}", method = {RequestMethod.GET, RequestMethod.POST})
  public String blog_noticeboard(@PathVariable("id") String id,
								 @RequestParam(value = "keyword", required = false) String keyword,
								 @RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage,
								 Model model) {
    System.out.println("[TestingController.blog_notice()]");

    // 해더 정보 가져오기
    BlogVo blogVo = blogService.selectUser(id);
    model.addAttribute(blogVo);

    // 이력사항 가져오기
    List<ResumeVo> resumeList = blogService.getResumeList(id);
    model.addAttribute("resumeList", resumeList);

    // 서치 값 맵에 담기
    Map<String, Object> searchvalue = new HashMap<String, Object>();
    searchvalue.put("search", keyword);
    searchvalue.put("id", id);
    searchvalue.put("crtPage", crtPage);

    // 리스트 가져오기
    Map<String, Object> listMap = blogService.noticeList(searchvalue);
    System.out.println(listMap);
    model.addAttribute("listMap", listMap);

    return "Blog/blogNoticeBoard";
  }

  // 공지사항 하나 가져오기.
  @RequestMapping(value = "blog_noticeDetail/{id}", method = {RequestMethod.GET, RequestMethod.POST})
  public String blog_noticeDetail(@PathVariable("id") String id, @RequestParam("no") int no,
							      @RequestParam(value = "keyword", required = false) String keyword,
							      @RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage,
							      Model model) {
    System.out.println("[TestingController.blog_notice()]");

    // 해더 정보 가져오기
    BlogVo blogVo = blogService.selectUser(id);
    model.addAttribute("blogVo", blogVo);

    // 이력사항 가져오기
    List<ResumeVo> resumeList = blogService.getResumeList(id);
    model.addAttribute("resumeList", resumeList);

    // 공지사항 정보
    NoticeVo noticeVo = blogService.getNotice(no);
    model.addAttribute("noticeVo", noticeVo);
    System.out.println(noticeVo);

    // 서치 값 맵에 담기(리스트)
    Map<String, Object> searchvalue = new HashMap<String, Object>();
    searchvalue.put("search", keyword);
    searchvalue.put("id", id);
    searchvalue.put("crtPage", crtPage);

    // 리스트 가져오기
    Map<String, Object> listMap = blogService.noticeList(searchvalue);
    System.out.println(listMap);
    model.addAttribute("listMap", listMap);

    return "Blog/blogNoticeDetail";
  }

  //포스트 수정 폼
  @RequestMapping(value = "updatePostForm/{id}", method = {RequestMethod.GET, RequestMethod.POST})
  public String blog_updateForm(@PathVariable("id") String id,
		  						@RequestParam("no") int no,
		  						Model model) {
	  System.out.println("[TestingController.blog_updateForm()]");

	  // 해더 정보 가져오기
	  BlogVo blogVo = blogService.selectUser(id);
	  model.addAttribute("blogVo", blogVo);

	  // 이력사항 가져오기
	  List<ResumeVo> resumeList = blogService.getResumeList(id);
	  model.addAttribute("resumeList", resumeList);

	  NoticeVo noticeVo = blogService.getNotice(no);
	  model.addAttribute("noticeVo", noticeVo);

	  return "Blog/blogWriteModifyForm";
  }

  //포스트 수정
  @RequestMapping(value = "modifyPost/{id}", method = {RequestMethod.GET, RequestMethod.POST})
  public String blog_deletePost(@PathVariable("id") String id,
		  						@ModelAttribute NoticeVo noticeVo ) {
	  System.out.println("[TestingController.blog_modifyPost()]");

	  blogService.modifyPost(noticeVo);

	  return "redirect:/blog/blog_main/" + id;
  }


  //포스트 삭제
  @RequestMapping(value = "deletePost/{id}", method = {RequestMethod.GET, RequestMethod.POST})
  public String blog_deletePost(@PathVariable("id") String id,
		  						@RequestParam("no") int no) {
	  System.out.println("[TestingController.blog_deleteform()]");

	  blogService.deletePost(no);

	  return "redirect:/blog/blog_main/" + id;
  }


  //입력 폼
  @RequestMapping(value = "blog_write/{id}", method = {RequestMethod.GET, RequestMethod.POST})
  public String blog_writeform(@PathVariable("id") String id, Model model) {
    System.out.println("[TestingController.blog_writeForm()]");

    // 해더 정보 가져오기
    BlogVo blogVo = blogService.selectUser(id);
    model.addAttribute(blogVo);

    // 이력사항 가져오기
    List<ResumeVo> resumeList = blogService.getResumeList(id);
    model.addAttribute("resumeList", resumeList);

    return "Blog/blogWriteForm";
  }

  //입력 기능
  @RequestMapping(value = "writePost/{id}", method = {RequestMethod.GET, RequestMethod.POST})
  public String blog_writeform(@PathVariable("id") String id,
		  					   @ModelAttribute NoticeVo noticeVo,
		  					   @RequestParam ("category") int category,
		  					   @RequestParam(value = "file1", required = false, defaultValue = "0") MultipartFile file) {
    System.out.println("[TestingController.writePost()]");
    System.out.println("파일이 들어오는지: " + file.getOriginalFilename());
    System.out.println("들어온 정보: " + noticeVo);
    System.out.println("들어온 카테고리: " + category);

    if (file.isEmpty()) {
    	blogService.writePost(noticeVo, category);
    } else {
    	blogService.writePostImg(noticeVo, file, category);
    }

    return "redirect:/blog/blog_main/" + id;
  }

  ////////////////////////////////////////////////////////////////////////////////////////
  //방명록
  ////////////////////////////////////////////////////////////////////////////////////////

  //폼
  @RequestMapping(value = "blog_guestbook/{id}", method = {RequestMethod.GET, RequestMethod.POST})
  public String blog_guestbook(@PathVariable("id") String id,
						       @RequestParam(value = "keyword", required = false) String keyword,
						       @RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage,
						       Model model) {
    System.out.println("[TestingController.blog_guestbook()]");

    // 해더 정보 가져오기
    BlogVo blogVo = blogService.selectUser(id);
    model.addAttribute(blogVo);

    // 이력사항 가져오기
    List<ResumeVo> resumeList = blogService.getResumeList(id);
    model.addAttribute("resumeList", resumeList);

    // 서치 값 맵에 담기(리스트)
    Map<String, Object> searchvalue = new HashMap<String, Object>();
    searchvalue.put("search", keyword);
    searchvalue.put("id", id);
    searchvalue.put("crtPage", crtPage);

    // 리스트 가져오기
    Map<String, Object> listMap = blogService.boardList(searchvalue);
    System.out.println(listMap);
    model.addAttribute("listMap", listMap);

    return "Blog/blogGuestbookBoard";
  }


}
