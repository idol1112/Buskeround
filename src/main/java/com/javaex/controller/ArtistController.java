package com.javaex.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.ArtistService;
import com.javaex.vo.UserVo;

@RequestMapping(value = "/Artist")
@Controller
public class ArtistController {

	@Autowired
	ArtistService artistService;

	// 아티스트 종합랭킹
	@RequestMapping(value = "/ArtistRenk", method = { RequestMethod.GET, RequestMethod.POST })
	public String artistrenk(Model model, HttpSession session) {

		System.out.println("[ArtistController.ArtistRenk()]");

		UserVo userVo = (UserVo) session.getAttribute("authUser");

		if (userVo != null) {
			int user_no = userVo.getUser_no();
			List<UserVo> aList = artistService.getArtistList(user_no);
			
			model.addAttribute("artistRenkList", aList);

		} else {
			model.addAttribute("artistRenkList", artistService.getArtistList());
		}


		model.addAttribute("artistLiveList", artistService.getArtistLive());

		System.out.println(artistService.getArtistList());

		return "/Artist/ArtistRenk";
	}

	// 아티스트 팬 많은 순
	@RequestMapping(value = "/ArtistFan", method = { RequestMethod.GET, RequestMethod.POST })
	public String artistfan(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			@RequestParam(value = "keyword", required = false, defaultValue = "") String keyword, Model model) {

		System.out.println("[ArtistController.ArtistFan()]");

		model.addAttribute("artistFan", artistService.getArtistFan(page, keyword));

		model.addAttribute("artistLiveList", artistService.getArtistLive());

		System.out.println(artistService.getArtistFan(page, keyword));

		return "/Artist/ArtistFan";
	}

	// 아티스트 뉴아티스트 목록
	@RequestMapping(value = "/ArtistNew", method = { RequestMethod.GET, RequestMethod.POST })
	public String artistnew(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			@RequestParam(value = "keyword", required = false, defaultValue = "") String keyword, Model model) {

		System.out.println("[ArtistController.ArtistNew()]");

		model.addAttribute("artistNew", artistService.getArtistNew(page, keyword));

		model.addAttribute("artistLiveList", artistService.getArtistLive());
		
		System.out.println(artistService.getArtistNew(page, keyword));

		return "/Artist/ArtistNew";
	}

	// 아티스트 장르 목록
	@RequestMapping(value = "/ArtistGenre/{no}", method = { RequestMethod.GET, RequestMethod.POST })
	public String artistgenre(@PathVariable("no") int no, Model model) {

		System.out.println("[ArtistController.ArtistGenre()]");

		model.addAttribute("ArtistGenre", artistService.getArtistGenre(no));

		model.addAttribute("artistLiveList", artistService.getArtistLive());

		return "/Artist/ArtistGenre";
	}

	// 아티스트 팬 등록 리스트
	@RequestMapping(value = "/ArtistFanList", method = { RequestMethod.GET, RequestMethod.POST })
	public String artistfanlist(Model model, HttpSession session) {

		System.out.println("[ArtistController.ArtistFanList()]");

		UserVo userVo = (UserVo) session.getAttribute("authUser");

		model.addAttribute("artistFanList", artistService.getFanList(userVo.getUser_no()));

		model.addAttribute("artistLiveList", artistService.getArtistLive());

		return "/Artist/ArtistFanList";
	}


	// 아티스트 검색 결과 뿌리기
	@RequestMapping(value = "/ArtistSearch", method = { RequestMethod.GET, RequestMethod.POST })
	public String artistsearch(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			@RequestParam(value = "keyword", required = false, defaultValue = "") String keyword, Model model) {

		System.out.println("[ArtistController.ArtistSearch()]");
		
		System.out.println(keyword);
		
		model.addAttribute("artistSearch", artistService.getArtistSearch(page, keyword));

		model.addAttribute("artistLiveList", artistService.getArtistLive());
		

		return "/Artist/ArtistSearch";
	}

	// 팬 등록
	@ResponseBody
	@RequestMapping(value = "/Fan", method = { RequestMethod.GET, RequestMethod.POST })
	public boolean fan(@ModelAttribute UserVo userVo) {

		System.out.println("[ArtistController.Fan()]");
		
		return artistService.getFan(userVo);

	}
	
	// 좋아요 등록
	@ResponseBody
	@RequestMapping(value = "/Likes", method = { RequestMethod.GET, RequestMethod.POST })
	public boolean likes(@ModelAttribute UserVo userVo) {
		
		System.out.println("[ArtistController.Fan()]");
		
		return artistService.getLikes(userVo);
		
	}


}
