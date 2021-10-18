package com.javaex.vo;

public class PostVo {

  // 필드
  private int user_no;
  private int live;
  private int post_no;
  private int category;
  private String nickname;
  private String user_img;
  private String title;
  private String content;
  private String reg_date;
  private double latitude;
  private double longitude;
  private String p_start;
  private String p_end;
  private String p_img;
  private String live_url;
  private int hit;
  private String address;
  private int rn;

  // 생성자
  public PostVo() {
    super();
  }

  public PostVo(int user_no, int live, int post_no, int category, String nickname, String user_img, String title, String content, String reg_date,
      double latitude, double longitude, String p_start, String p_end, String p_img, String live_url, int hit, String address, int rn) {
    super();
    this.user_no = user_no;
    this.live = live;
    this.post_no = post_no;
    this.category = category;
    this.nickname = nickname;
    this.user_img = user_img;
    this.title = title;
    this.content = content;
    this.reg_date = reg_date;
    this.latitude = latitude;
    this.longitude = longitude;
    this.p_start = p_start;
    this.p_end = p_end;
    this.p_img = p_img;
    this.live_url = live_url;
    this.hit = hit;
    this.address = address;
    this.rn = rn;
  }

  // 메소드 - GS
  public int getUser_no() {
    return user_no;
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

  public int getRn() {
    return rn;
  }

  public void setRn(int rn) {
    this.rn = rn;
  }

  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public void setUser_no(int user_no) {
    this.user_no = user_no;
  }

  public int getLive() {
    return live;
  }

  public void setLive(int live) {
    this.live = live;
  }

  public int getPost_no() {
    return post_no;
  }

  public void setPost_no(int post_no) {
    this.post_no = post_no;
  }

  public int getCategory() {
    return category;
  }

  public void setCategory(int category) {
    this.category = category;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }

  public String getReg_date() {
    return reg_date;
  }

  public void setReg_date(String reg_date) {
    this.reg_date = reg_date;
  }

  public double getLatitude() {
    return latitude;
  }

  public void setLatitude(double latitude) {
    this.latitude = latitude;
  }

  public double getLongitude() {
    return longitude;
  }

  public void setLongitude(double longitude) {
    this.longitude = longitude;
  }

  public String getP_start() {
    return p_start;
  }

  public void setP_start(String p_start) {
    this.p_start = p_start;
  }

  public String getP_end() {
    return p_end;
  }

  public void setP_end(String p_end) {
    this.p_end = p_end;
  }

  public String getP_img() {
    return p_img;
  }

  public void setP_img(String p_img) {
    this.p_img = p_img;
  }

  public String getLive_url() {
    return live_url;
  }

  public void setLive_url(String live_url) {
    this.live_url = live_url;
  }

  public int getHit() {
    return hit;
  }

  public void setHit(int hit) {
    this.hit = hit;
  }

  // 메소드 - 일반
  @Override
  public String toString() {
    return "PostVo [user_no=" + user_no + ", live=" + live + ", post_no=" + post_no + ", category=" + category + ", nickname=" + nickname
        + ", user_img=" + user_img + ", title=" + title + ", content=" + content + ", reg_date=" + reg_date + ", latitude=" + latitude
        + ", longitude=" + longitude + ", p_start=" + p_start + ", p_end=" + p_end + ", p_img=" + p_img + ", live_url=" + live_url + ", hit=" + hit
        + ", address=" + address + ", rn=" + rn + "]";
  }

}
