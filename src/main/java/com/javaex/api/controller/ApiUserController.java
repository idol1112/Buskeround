package com.javaex.api.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.javaex.service.UserService;
import com.javaex.vo.UserVo;

@RequestMapping(value = "/api/user/")
@Controller
public class ApiUserController {

  @Autowired
  UserService userService;

  /*** 아이디 중복체크 ***/
  @ResponseBody
  @RequestMapping(value = "idCheck", method = {RequestMethod.GET, RequestMethod.POST})
  public boolean idCheck(@RequestParam("id") String id) {
    System.out.println("[현재 위치: ApiUserController.idCheck]");

    return userService.idCheck(id);
  }

  /*** 닉네임 중복체크 ***/
  @ResponseBody
  @RequestMapping(value = "nickCheck", method = {RequestMethod.GET, RequestMethod.POST})
  public boolean nickCheck(@RequestParam("nickname") String nickname) {
    System.out.println("[현재 위치: ApiUserController.idCheck]");

    return userService.nickCheck(nickname);
  }

  /*** 모바일 로그인 ***/
  @ResponseBody
  @RequestMapping(value = "login", method = {RequestMethod.GET, RequestMethod.POST})
  public UserVo login(@RequestBody UserVo userVo, HttpSession session) {
    System.out.println("[현재 위치: ApiUserController.login]");

    System.out.println(userVo);

    UserVo authUser = userService.loginMobile(userVo);

    System.out.println("로그인 후: " + authUser);


    if (authUser != null) {
      System.out.println("[" + authUser.getNickname() + "] 님이 로그인 하셨습니다.");

      session.setAttribute("authUser", authUser);
      UserVo userLsit = (UserVo) session.getAttribute("authUser");

      System.out.println("userLsit: " + userLsit);

      return userLsit;

    } else {
      System.out.println("로그인 실패");

      return null;

    }
  }

  /*** 이미지 전송 ***/
  @ResponseBody
  @RequestMapping(value = "image", method = {RequestMethod.GET, RequestMethod.POST})
  public void image(@RequestBody String image) {
    System.out.println("[현재 위치: ApiUserController.image]");

    System.out.println("안녕" + image);

  }


}

