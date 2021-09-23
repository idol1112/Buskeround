package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.MyPageService;
import com.javaex.service.UserService;
import com.javaex.vo.MypageVo;
import com.javaex.vo.UserVo;

@RequestMapping(value = "/MyPage")
@Controller
public class MyPageController {
	
	@Autowired
	MyPageService mypageService;
	@Autowired
	UserService userService;
	
	//프로필 수정 폼
	@RequestMapping(value = "/profileModify", method = {RequestMethod.GET, RequestMethod.POST})
	public String profileModify(HttpSession session, Model model) {
	    System.out.println("[MyPageController.profileModify()]");
	    
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		
	    
	    return "/MyPage/mypageModify";
	}
	
	//아티스트 등록 폼
	@RequestMapping(value = "/mypageArtist", method = {RequestMethod.GET, RequestMethod.POST})
	public String mypageArtist(HttpSession session, Model model) {
		System.out.println("[MyPageController.mypageArtist()]");
		
		//유저 정보 가져오기
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		//아티스트인지 확인
		if(authUser.getUser_type() == 2) {
			
			 MypageVo mypageVo = mypageService.getArtistInfo(authUser.getId());
			 System.out.println("가져온 정보: " + mypageVo);
			 model.addAttribute("mypageVo", mypageVo);
			 
			return "/MyPage/mypageArtist";			
		} else {
			
			return "/MyPage/mypageArtist";
		}
	}
	
	//아티스트 등록/수정
	@RequestMapping(value = "/artistModify", method = {RequestMethod.GET, RequestMethod.POST})
	public String artistModify(HttpSession session, @ModelAttribute MypageVo mypageVo) {
		System.out.println("[MyPageController.artistModify]");
		System.out.println("ArtistData: " + mypageVo);
		
		//Artist 등록 혹은 수정하기
		mypageService.artistModify(mypageVo);
		
		//유저 정보 가져오기
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		
		//수정된 정보 AuthUser 덮어쓰기
		UserVo userVo = new UserVo(authUser.getId(), authUser.getPassword());
		authUser = userService.getPerson(userVo);
		session.setAttribute("authUser", authUser);
		
		return "redirect:/MyPage/profileModify";
	}
	
	
	

}
