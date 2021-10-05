package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.javaex.vo.UserVo;

@Controller
public class UserDao {

  @Autowired
  SqlSession sqlSession;

  /*** 회원가입 ***/
  public int join(UserVo userVo) {
    System.out.println("[사용 메소드: UserDao.join()]");

    System.out.println("[" + userVo.getNickname() + "] 님이 회원가입 했습니다.");

    return sqlSession.insert("user.join", userVo);

  }

  /*** 아이디 중복체크 ***/
  public UserVo idCheck(String id) {
    System.out.println("[사용 메소드: UserDao.idCheck()]");

    return sqlSession.selectOne("user.idCheck", id);
  }

  /*** 닉네임 중복체크 ***/
  public UserVo nickCheck(String nickname) {
    System.out.println("[사용 메소드: UserDao.nickCheck()]");

    return sqlSession.selectOne("user.nickCheck", nickname);
  }

  /*** 유저 정보 가져오기(로그인) ***/
  public UserVo getPerson(UserVo userVo) {
    System.out.println("[사용 메소드: UserDao.getPerson()]");

    return sqlSession.selectOne("user.getPerson", userVo);
  }

  /*** 유저 정보 가져오기(모바일) ***/
  public UserVo loginMobile(UserVo userVo) {
    System.out.println("[사용 메소드: UserDao.loginMobile()]");

    return sqlSession.selectOne("user.loginMobile", userVo);
  }

  //Get Nickname
  public String getNick(int user_no) {
	  System.out.println("[사용 메소드: UserDao.getNick()]");

	  String nick = sqlSession.selectOne("user.getNick", user_no);
	  System.out.println(nick);

	  return nick;
  }

  //companyType 바꾸기
  public void companyType(UserVo userVo) {
	  sqlSession.update("user.updateCompanyType",userVo);
  }
}

