package com.javaex.vo;

public class MapVo {
	//필드
	private double latitude;	//위도 		(table-post)
	private double longitude;	//경도 		(table-post)
	private String p_end;		//방송종료  (table-post)
	private String p_img;		//공연이미지(table-post)
	private String address;     //공연장소  (table-post)
	private String nickname;    //활동명    (table-users)
	private String genre;		//장르		(table-users)
	private int user_no;		//유저번호	(table-users)
	private String id;			//유저아이디(table-users)
	private String user_img;	//유저프로필(table-users)
	private String intro;		//블로그자기소개 (table-blog)
	
	
	public MapVo() {}
	
	public MapVo(double latitude, double longitude, String p_end, String p_img, String address, String nickname, String genre, int user_no, String id, String user_img, String intro) {
		this.latitude = latitude;
		this.longitude = longitude;
		this.p_end = p_end;
		this.p_img = p_img;
		this.address = address;
		this.nickname = nickname;
		this.genre = genre;
		this.user_no = user_no;
		this.id = id;
		this.user_img = user_img;
		this.intro = intro;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

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

	public String getUser_img() {
		return user_img;
	}

	public void setUser_img(String user_img) {
		this.user_img = user_img;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	@Override
	public String toString() {
		return "MapVo [latitude=" + latitude + ", longitude=" + longitude + ", p_end=" + p_end + ", p_img=" + p_img
				+ ", address=" + address + ", nickname=" + nickname + ", genre=" + genre + ", user_no=" + user_no
				+ ", id=" + id + ", user_img=" + user_img + ", intro=" + intro + "]";
	}
	
	

	
	
	
}