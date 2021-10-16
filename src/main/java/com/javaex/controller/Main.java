package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.ArtistService;
import com.javaex.service.BlogService2;
import com.javaex.service.MapService;

@Controller
public class Main {

  @Autowired
  BlogService2 blogService2;
  @Autowired
  ArtistService artistService;
  @Autowired
  MapService mapService;

  @RequestMapping(value = "/Main", method = {RequestMethod.GET, RequestMethod.POST})
  public String mainPage(Model model) {
    System.out.println("[TestingController.Main()]");
    
    model.addAttribute("artistLiveList", artistService.getArtistLive());
    model.addAttribute("galleryList", blogService2.getGalleryMainPage());
    model.addAttribute("artistRankingList", artistService.getArtistList());
    model.addAttribute("mapList", mapService.mapList());
    
    return "Main/Main";

  }

}
