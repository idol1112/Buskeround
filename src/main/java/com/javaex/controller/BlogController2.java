package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
  
	@RequestMapping(value = "blog_gallery/{id}", method = { RequestMethod.GET, RequestMethod.POST })
	public String blog_gallery(@PathVariable("id") String id, Model model) {
		System.out.println("[TestingController.blog_gallery()]");

		// 해더 정보 가져오기
		BlogVo blogVo = blogService.selectUser(id);
		model.addAttribute(blogVo);

		return "Blog/blog_gallery";

	}

}
