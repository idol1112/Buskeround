package com.javaex.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.javaex.service.UserService;

@RequestMapping(value = "/api/user/")
@Controller
public class ApiBlogController {

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

}


