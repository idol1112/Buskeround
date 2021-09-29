package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.javaex.service.BlogService2;

@RequestMapping(value = "/blog2/")
@Controller
public class BlogController2 {

  @Autowired
  BlogService2 blogService2;

}
