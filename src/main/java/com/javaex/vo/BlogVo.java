package com.javaex.vo;

public class BlogVo {
	
	//Field
	private int user_no;
	private String id;
	private String intro;
	private String banner;
	private String y_url;
	private String f_url;
	private String i_url;

	//Constructor
	public BlogVo() {
		super();
	}
	
	public BlogVo(int user_no, String id, String intro, String banner, String y_url, String f_url, String i_url) {
		super();
		this.user_no = user_no;
		this.id = id;
		this.intro = intro;
		this.banner = banner;
		this.y_url = y_url;
		this.f_url = f_url;
		this.i_url = i_url;
	}

	//Method G/S
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

	
	//Method - Ordinary
	@Override
	public String toString() {
		return "BlogVo [user_no=" + user_no + ", id=" + id + ", intro=" + intro + ", banner=" + banner + ", y_url="
				+ y_url + ", f_url=" + f_url + ", i_url=" + i_url + "]";
	}

}
