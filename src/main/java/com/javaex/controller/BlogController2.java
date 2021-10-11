package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.javaex.service.BlogService;
import com.javaex.service.BlogService2;
import com.javaex.vo.BlogVo;

@RequestMapping(value = "/blog/")
@Controller
public class BlogController2 {

  @Autowired
  BlogService2 blogService2;

  @Autowired
  BlogService blogService;

  /*** 갤러리 ***/
  @RequestMapping(value = "blog_gallery/{id}", method = {RequestMethod.GET, RequestMethod.POST})
  public String blog_gallery(Model model, @PathVariable("id") String id, @RequestParam(value = "page", required = false, defaultValue = "1") int page,
      @RequestParam(value = "keyword", required = false, defaultValue = "") String keyword) {
    System.out.println("[현재 위치: BlogController2.blog_gallery]");
    // 해더 정보 가져오기
    BlogVo blogVo = blogService.selectUser(id);
    model.addAttribute(blogVo);

    // 갤러리 정보 전달

    System.out.println(page);

    model.addAttribute("listMap", blogService2.galleryPage(blogVo.getUser_no(), page, keyword));

    return "Blog/blog_gallery";

  }

  /*** 갤러리 삭제 ***/
  @RequestMapping(value = "deleteGallery/{id}", method = {RequestMethod.GET, RequestMethod.POST})
  public String blog_deleteGallery(@PathVariable("id") String id, @RequestParam("post_no") int post_no) {
    System.out.println("[현재 위치: BlogController2.blog_deleteGallery]");

    blogService.deletePost(post_no);

    return "redirect:/blog/blog_main/" + id;
  }

}
