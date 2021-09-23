package com.javaex.vo;

public class UserVo {

  // 필드
  private int user_no;
  private String id;
  private String password;
  private String email;
  private String nickname;
  private String user_img;
  private int user_type;
  private int company_type;

  // 생성자
  public UserVo() {
    super();
  }

  public UserVo(String id, String password) {
    super();
    this.id = id;
    this.password = password;
  }

  public UserVo(int user_no, String id, String password, String email, String nickname, String user_img, int user_type, int company_type) {
    super();
    this.user_no = user_no;
    this.id = id;
    this.password = password;
    this.email = email;
    this.nickname = nickname;
    this.user_img = user_img;
    this.user_type = user_type;
    this.company_type = company_type;
  }

  // 메소드 - GS
  public int getUser_no() {
    return user_no;
  }

  public void setUser_no(int user_no) {
    this.user_no = user_no;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getNickname() {
    return nickname;
  }

  public void setNickname(String nickname) {
    this.nickname = nickname;
  }

  public String getUser_img() {
    return user_img;
  }

  public void setUser_img(String user_img) {
    this.user_img = user_img;
  }

  public int getUser_type() {
    return user_type;
  }

  public void setUser_type(int user_type) {
    this.user_type = user_type;
  }

  public int getCompany_type() {
    return company_type;
  }

  public void setCompany_type(int company_type) {
    this.company_type = company_type;
  }

  // 메소드 - 일반
  @Override
  public String toString() {
    return "UserVo [user_no=" + user_no + ", id=" + id + ", password=" + password + ", email=" + email + ", nickname=" + nickname + ", user_img="
        + user_img + ", user_type=" + user_type + ", company_type=" + company_type + "]";
  }

}


