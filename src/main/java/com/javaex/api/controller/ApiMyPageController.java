package com.javaex.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.MyPageService;

@RequestMapping(value = "/api/mypage")
@Controller
public class ApiMyPageController {
	
	@Autowired
	MyPageService mypageService;
	
	//활동명 중복체크
	@ResponseBody
	@RequestMapping(value = "/nickCheck", method = {RequestMethod.GET, RequestMethod.POST})
	public boolean nickCheck(@RequestParam("nickname") String nickname,
							 @RequestParam("user_no") int user_no) {
		System.out.println("ApiUserController.nickCheck");
		
		boolean result = mypageService.nickCheck(nickname, user_no);
		System.out.println("Check Result: " + result);
		
		return result;
	}

}
