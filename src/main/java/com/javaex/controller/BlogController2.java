package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.javaex.service.BlogService2;

@RequestMapping(value = "/blog2/")
@Controller
public class BlogController2 {

  @Autowired
  BlogService2 blogService2;

  /*** 썸네일 업로드 ***/
  @RequestMapping(value = "upload", method = {RequestMethod.GET, RequestMethod.POST})
  public String upload(@RequestParam (value="file1", required=false, defaultValue="0") MultipartFile file) {
    System.out.println("[현재 위치: BlogController2.upload]");

    System.out.println(file);

    /*
     * if (file.getSize() != 0) { //blogService2.restore(file); System.out.println("파일이 있다"); } else { System.out.println("파일이 없다"); }
     */
    return "";

  }


}
