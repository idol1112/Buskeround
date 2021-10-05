package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.javaex.dao.UserDao;
import com.javaex.vo.UserVo;

@Service
public class UserService {

  @Autowired
  UserDao userDao;

  /*** 회원가입 ***/
  public void join(UserVo userVo) {
    userDao.join(userVo);
  }

  /*** 유저 정보 가져오기(로그인) ***/
  public UserVo getPerson(UserVo userVo) {

    return userDao.getPerson(userVo);
  }

  /*** 유저 정보 가져오기(모바일) ***/
  public UserVo loginMobile(UserVo userVo) {

    return userDao.loginMobile(userVo);
  }

  /*** 아이디 중복체크 ***/
  public boolean idCheck(String id) {

    if (userDao.idCheck(id) == null) {
      return true;

    } else {
      return false;

    }
  }

  /*** 닉네임 중복체크 ***/
  public boolean nickCheck(String nickname) {

    if (userDao.nickCheck(nickname) == null) {
      return true;

    } else {
      return false;

    }
  }

}


