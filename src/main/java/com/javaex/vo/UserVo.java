package com.javaex.vo;

public class UserVo {

	// 필드
	private int user_no;
	private String id;
	private String password;
	private String email;
	private String nickname;
	private String user_img;
	private String name;
	private String hp;
	private String gender;
	private String birthday;
	private String genre;
	private String genre_type;
	private int fan;
	private int likes;
	private String live;
	private String artist_regdate;
	private String user_type;
	private String company_type;
	private int rn;
	private String ranking_score;
	private String intro;
	private String banner;
	private String y_url;
	private String f_url;
	private String i_url;
	private int artist_no;
	private boolean fanOk;
	private boolean likeOk;
	private String p_start;

	// 생성자
	public UserVo() {
		super();
	}

	public UserVo(String id, String password) {
		super();
		this.id = id;
		this.password = password;
	}

	public UserVo(int user_no, String company_type) {
		super();
		this.user_no = user_no;
		this.company_type = company_type;
	}
	
	public UserVo(int user_no, String id, String password, String email, String nickname, String user_img, String name,
			String hp, String gender, String birthday, String genre, String genre_type, int fan, int likes, String live,
			String artist_regdate, String user_type, String company_type, int rn, String ranking_score, String intro,
			String banner, String y_url, String f_url, String i_url, int artist_no, boolean fanOk, boolean likeOk,
			String p_start) {
		super();
		this.user_no = user_no;
		this.id = id;
		this.password = password;
		this.email = email;
		this.nickname = nickname;
		this.user_img = user_img;
		this.name = name;
		this.hp = hp;
		this.gender = gender;
		this.birthday = birthday;
		this.genre = genre;
		this.genre_type = genre_type;
		this.fan = fan;
		this.likes = likes;
		this.live = live;
		this.artist_regdate = artist_regdate;
		this.user_type = user_type;
		this.company_type = company_type;
		this.rn = rn;
		this.ranking_score = ranking_score;
		this.intro = intro;
		this.banner = banner;
		this.y_url = y_url;
		this.f_url = f_url;
		this.i_url = i_url;
		this.artist_no = artist_no;
		this.fanOk = fanOk;
		this.likeOk = likeOk;
		this.p_start = p_start;
	}

	// 메소드 - GS
	public int getUser_no() {
		return user_no;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getHp() {
		return hp;
	}

	public void setHp(String hp) {
		this.hp = hp;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getGenre_type() {
		return genre_type;
	}

	public void setGenre_type(String genre_type) {
		this.genre_type = genre_type;
	}

	public int getFan() {
		return fan;
	}

	public void setFan(int fan) {
		this.fan = fan;
	}

	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
	}

	public String getLive() {
		return live;
	}

	public void setLive(String live) {
		this.live = live;
	}

	public String getArtist_regdate() {
		return artist_regdate;
	}

	public void setArtist_regdate(String artist_regdate) {
		this.artist_regdate = artist_regdate;
	}

	public String getUser_type() {
		return user_type;
	}

	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}

	public String getCompany_type() {
		return company_type;
	}

	public void setCompany_type(String company_type) {
		this.company_type = company_type;
	}

	public int getRn() {
		return rn;
	}

	public void setRn(int rn) {
		this.rn = rn;
	}

	public String getRanking_score() {
		return ranking_score;
	}

	public void setRanking_score(String ranking_score) {
		this.ranking_score = ranking_score;
	}

	public int getArtist_no() {
		return artist_no;
	}

	public void setArtist_no(int artist_no) {
		this.artist_no = artist_no;
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

	public boolean isFanOk() {
		return fanOk;
	}

	public void setFanOk(boolean fanOk) {
		this.fanOk = fanOk;
	}

	public String getP_start() {
		return p_start;
	}

	public void setP_start(String p_start) {
		this.p_start = p_start;
	}
	
	public boolean isLikeOk() {
		return likeOk;
	}

	public void setLikeOk(boolean likeOk) {
		this.likeOk = likeOk;
	}

	// 메소드 - 일반
	@Override
	public String toString() {
		return "UserVo [user_no=" + user_no + ", id=" + id + ", password=" + password + ", email=" + email
				+ ", nickname=" + nickname + ", user_img=" + user_img + ", name=" + name + ", hp=" + hp + ", gender="
				+ gender + ", birthday=" + birthday + ", genre=" + genre + ", genre_type=" + genre_type + ", fan=" + fan
				+ ", likes=" + likes + ", live=" + live + ", artist_regdate=" + artist_regdate + ", user_type="
				+ user_type + ", company_type=" + company_type + ", rn=" + rn + ", ranking_score=" + ranking_score
				+ ", intro=" + intro + ", banner=" + banner + ", y_url=" + y_url + ", f_url=" + f_url + ", i_url="
				+ i_url + ", artist_no=" + artist_no + ", fanOk=" + fanOk + ", likeOk=" + likeOk + ", p_start="
				+ p_start + "]";
	}

	
	
	
}
