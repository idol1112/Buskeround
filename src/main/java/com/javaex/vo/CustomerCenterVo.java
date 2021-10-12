package com.javaex.vo;

public class CustomerCenterVo {
	
	//FIELD
	private int notice_no;
	private int user_no;
	private String title;
	private String content;
	private String reg_date;
	private int hit;
	private int rn;

	
	//CONSTRUCTOR
	public CustomerCenterVo() {
		super();
	}
	
	public CustomerCenterVo(int notice_no, int user_no, String title, String content, String reg_date, int hit,
			int rn) {
		super();
		this.notice_no = notice_no;
		this.user_no = user_no;
		this.title = title;
		this.content = content;
		this.reg_date = reg_date;
		this.hit = hit;
		this.rn = rn;
	}

	//METHOD G/S
	public int getNotice_no() {
		return notice_no;
	}

	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
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

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public int getRn() {
		return rn;
	}

	public void setRn(int rn) {
		this.rn = rn;
	}

	//METHOD - ORDINARY
	@Override
	public String toString() {
		return "CustomerCenterVo [notice_no=" + notice_no + ", user_no=" + user_no + ", title=" + title + ", content="
				+ content + ", reg_date=" + reg_date + ", hit=" + hit + ", rn=" + rn + "]";
	}
	

}
