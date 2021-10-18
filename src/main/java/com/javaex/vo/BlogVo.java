package com.javaex.vo;

public class BlogVo {

  // Field
  private int user_no;
  private String id;
  private String nickname;
  private String user_img;
  private int genre;
  private String intro;
  private String banner;
  private String y_url;
  private String f_url;
  private String i_url;
  private int likes;
  private boolean likeOk;
  private int fan;
  private boolean fanOk;
  private int artist_no;
  private int live;
  private int count;
  private int hit;

  // Constructor
  public BlogVo() {
    super();
  }

  public BlogVo(int user_no, String id, String nickname, String user_img, int genre, String intro, String banner, String y_url, String f_url,
      String i_url, int likes, boolean likeOk, int fan, boolean fanOk, int artist_no, int live, int count, int hit) {
    super();
    this.user_no = user_no;
    this.id = id;
    this.nickname = nickname;
    this.user_img = user_img;
    this.genre = genre;
    this.intro = intro;
    this.banner = banner;
    this.y_url = y_url;
    this.f_url = f_url;
    this.i_url = i_url;
    this.likes = likes;
    this.likeOk = likeOk;
    this.fan = fan;
    this.fanOk = fanOk;
    this.artist_no = artist_no;
    this.live = live;
    this.count = count;
    this.hit = hit;
  }



  // Method G/S
  public int getUser_no() {
    return user_no;
  }

  public int getHit() {
    return hit;
  }

  public void setHit(int hit) {
    this.hit = hit;
  }

  public int getCount() {
    return count;
  }

  public void setCount(int count) {
    this.count = count;
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

  public int getGenre() {
    return genre;
  }

  public void setGenre(int genre) {
    this.genre = genre;
  }

  public String getIntro() {
    return intro;
  }

  public void setIntro(String intro) {
    this.intro = intro;
  }

  public String getBanner() {
    return banner;
  }

  public void setBanner(String banner) {
    this.banner = banner;
  }

  public String getY_url() {
    return y_url;
  }

  public void setY_url(String y_url) {
    this.y_url = y_url;
  }

  public String getF_url() {
    return f_url;
  }

  public void setF_url(String f_url) {
    this.f_url = f_url;
  }

  public String getI_url() {
    return i_url;
  }

  public void setI_url(String i_url) {
    this.i_url = i_url;
  }

  public int getLikes() {
    return likes;
  }

  public void setLikes(int likes) {
    this.likes = likes;
  }

  public boolean isLikeOk() {
    return likeOk;
  }

  public void setLikeOk(boolean likeOk) {
    this.likeOk = likeOk;
  }

  public int getFan() {
    return fan;
  }

  public void setFan(int fan) {
    this.fan = fan;
  }

  public boolean isFanOk() {
    return fanOk;
  }

  public void setFanOk(boolean fanOk) {
    this.fanOk = fanOk;
  }

  public int getArtist_no() {
    return artist_no;
  }

  public void setArtist_no(int artist_no) {
    this.artist_no = artist_no;
  }

  public int getLive() {
    return live;
  }

  public void setLive(int live) {
    this.live = live;
  }


  // Method - Ordinary
  @Override
  public String toString() {
    return "BlogVo [user_no=" + user_no + ", id=" + id + ", nickname=" + nickname + ", user_img=" + user_img + ", genre=" + genre + ", intro=" + intro
        + ", banner=" + banner + ", y_url=" + y_url + ", f_url=" + f_url + ", i_url=" + i_url + ", likes=" + likes + ", likeOk=" + likeOk + ", fan="
        + fan + ", fanOk=" + fanOk + ", artist_no=" + artist_no + ", live=" + live + ", count=" + count + ", hit=" + hit + "]";
  }


}
