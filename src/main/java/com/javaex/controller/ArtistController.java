package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.ArtistService;
import com.javaex.vo.UserVo;

@RequestMapping(value="/Artist")
@Controller
public class ArtistController {
	
	@Autowired
	ArtistService artistService;
	
	//아티스트 종합랭킹
	@RequestMapping(value = "/ArtistRenk", method= {RequestMethod.GET, RequestMethod.POST })
	public String artistrenk(Model model ) {
		
		System.out.println("[ArtistController.ArtistRenk()]");
		
		model.addAttribute("artistRenkList", artistService.getArtistList());
		
		model.addAttribute("artistLiveList", artistService.getArtistLive());
		
		System.out.println(artistService.getArtistList());
		
		return"/Artist/ArtistRenk";
	}
	
	
	//아티스트 팬 많은 순
	@RequestMapping(value = "/ArtistFan", method= {RequestMethod.GET, RequestMethod.POST })
	public String artistfan(Model model) {
		
		System.out.println("[ArtistController.ArtistFan()]");
		
		model.addAttribute("artistFan", artistService.getArtistFan());
		
		model.addAttribute("artistLiveList", artistService.getArtistLive());
		
		System.out.println(artistService.getArtistFan());
		
		return"/Artist/ArtistFan";
	}
	
	
	//아티스트 뉴아티스트 목록
	@RequestMapping(value = "/ArtistNew", method= {RequestMethod.GET, RequestMethod.POST })
	public String artistnew(Model model) {
		
		System.out.println("[ArtistController.ArtistNew()]");
		
		model.addAttribute("artistNew", artistService.getArtistNew());
		
		model.addAttribute("artistLiveList", artistService.getArtistLive());
		
		return"/Artist/ArtistNew";
	}
	
	
	
	//아티스트 장르 목록
	@RequestMapping(value = "/ArtistGenre/{no}", method= {RequestMethod.GET, RequestMethod.POST })
	public String artistgenre(@PathVariable("no") int no, Model model) {
		
		System.out.println("[ArtistController.ArtistGenre()]");
		
		model.addAttribute("ArtistGenre", artistService.getArtistGenre(no));
		
		model.addAttribute("artistLiveList", artistService.getArtistLive());
		
		return"/Artist/ArtistGenre";
	}
	
	
	//아티스트 팬 등록 리스트
	@RequestMapping(value = "/ArtistFanList", method= {RequestMethod.GET, RequestMethod.POST })
	public String artistfanlist(Model model, HttpSession session) {
		
		System.out.println("[ArtistController.ArtistFanList()]");
		
		UserVo userVo = (UserVo)session.getAttribute("authUser");
		
		model.addAttribute("artistFanList", artistService.getFanList(userVo.getUser_no()));
		
		model.addAttribute("artistLiveList", artistService.getArtistLive());
		
		return"/Artist/ArtistFanList";
	}
	


	
}
