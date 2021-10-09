package com.javaex.vo;

public class NoticeVo {
	
	//Field
	private int post_no;
	private int category_type;
	private int category_no;
	private int user_no;
	private String title;
	private String nickname;
	private String regDate;
	private String hit;
	private String content;
	private String p_img;
	private int rownum;
	
	//Constructor
	public NoticeVo() {
		super();
	}
	
	public NoticeVo(int post_no, int category_type, int category_no, int user_no, String title, String nickname,
			String regDate, String hit, String content, String p_img, int rownum) {
		super();
		this.post_no = post_no;
		this.category_type = category_type;
		this.category_no = category_no;
		this.user_no = user_no;
		this.title = title;
		this.nickname = nickname;
		this.regDate = regDate;
		this.hit = hit;
		this.content = content;
		this.p_img = p_img;
		this.rownum = rownum;
	}

	//Method - G/S
	public int getPost_no() {
		return post_no;
	}

	public void setPost_no(int post_no) {
		this.post_no = post_no;
	}

	public int getCategory_type() {
		return category_type;
	}

	public void setCategory_type(int category_type) {
		this.category_type = category_type;
	}

	public int getCategory_no() {
		return category_no;
	}

	public void setCategory_no(int category_no) {
		this.category_no = category_no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getHit() {
		return hit;
	}

	public void setHit(String hit) {
		this.hit = hit;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getP_img() {
		return p_img;
	}

	public void setP_img(String p_img) {
		this.p_img = p_img;
	}

	public int getRownum() {
		return rownum;
	}

	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	
	//Method - Ordinary
	@Override
	public String toString() {
		return "NoticeVo [post_no=" + post_no + ", category_type=" + category_type + ", category_no=" + category_no
				+ ", user_no=" + user_no + ", title=" + title + ", nickname=" + nickname + ", regDate=" + regDate
				+ ", hit=" + hit + ", content=" + content + ", p_img=" + p_img + ", rownum=" + rownum + "]";
	}
}
