package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping(value = "/blog/")
@Controller
public class BlogController {

  @RequestMapping(value = "blog_main", method = {RequestMethod.GET, RequestMethod.POST})
  public String blog_main() {
    System.out.println("[TestingController.blog_main()]");

    return "Blog/blog_main";

  }

  @RequestMapping(value = "blog_timeline", method = {RequestMethod.GET, RequestMethod.POST})
  public String blog_timeline() {
    System.out.println("[TestingController.blog_timeline()]");

    return "Blog/blog_timeline";

  }

  @RequestMapping(value = "blog_gallery", method = {RequestMethod.GET, RequestMethod.POST})
  public String blog_gallery() {
    System.out.println("[TestingController.blog_gallery()]");

    return "Blog/blog_gallery";

  }

  @RequestMapping(value = "blog_guestbook", method = {RequestMethod.GET, RequestMethod.POST})
  public String blog_guestbook() {
    System.out.println("[TestingController.blog_guestbook()]");

    return "Blog/blogGuestbookBoard";

  }

}


