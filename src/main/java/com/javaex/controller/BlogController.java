package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.BlogService;
import com.javaex.vo.BlogVo;

@RequestMapping(value = "/blog/")
@Controller
public class BlogController {
	
	@Autowired
	BlogService blogService;

	@RequestMapping(value = "blog_main/{id}", method = { RequestMethod.GET, RequestMethod.POST })
	public String blog_main(@PathVariable ("id") String id, Model model) {
		System.out.println("[TestingController.blog_main()]");
		
		BlogVo blogVo = blogService.selectUser(id);
		System.out.println("BlogVo: " + blogVo);
		model.addAttribute(blogVo);
		
		return "Blog/blog_main";

	}

	@RequestMapping(value = "blog_timeline", method = { RequestMethod.GET, RequestMethod.POST })
	public String blog_timeline() {
		System.out.println("[TestingController.blog_timeline()]");

		return "Blog/blog_timeline";

	}

	@RequestMapping(value = "blog_gallery", method = { RequestMethod.GET, RequestMethod.POST })
	public String blog_gallery() {
		System.out.println("[TestingController.blog_gallery()]");

		return "Blog/blog_gallery";

	}

	@RequestMapping(value = "blog_guestbook", method = { RequestMethod.GET, RequestMethod.POST })
	public String blog_guestbook() {
		System.out.println("[TestingController.blog_guestbook()]");

		return "Blog/blogGuestbookBoard";

	}

}
