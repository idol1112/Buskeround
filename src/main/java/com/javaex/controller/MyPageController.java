package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.MyPageService;
import com.javaex.service.UserService;
import com.javaex.vo.UserVo;

@RequestMapping(value = "/MyPage")
@Controller
public class MyPageController {
	
	@Autowired
	MyPageService mypageService;
	UserService userService;
	
	//프로필 수정 폼
	@RequestMapping(value = "/profileModify", method = {RequestMethod.GET, RequestMethod.POST})
	public String profileModify(HttpSession session, Model model) {
	    System.out.println("[MyPageController.profileModify()]");
	    
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		
		if(authUser != null) {
			UserVo userVo = userService.getPerson(authUser.getUser_no());
			model.addAttribute("userVo", userVo);
			
			return "/user/modifyForm";
		} else {
			
			return "/user/loginForm";
		}
		
		
	    
	    return "/MyPage/mypageModify";
	}

	
	
	//로그인된 사람 정보 가져오기
	
	
	
	
	//아티스트 등록 폼
	
	
	

}
