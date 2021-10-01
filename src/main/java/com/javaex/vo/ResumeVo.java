package com.javaex.vo;

public class ResumeVo {
	
	//Field
	private int resume_no;
	private int user_no;
	private String resume_content;
	
	//Constructor
	public ResumeVo() {
		super();
	}
	
	public ResumeVo(int resume_no, int user_no, String resume_content) {
		super();
		this.resume_no = resume_no;
		this.user_no = user_no;
		this.resume_content = resume_content;
	}

	//Method-G/S
	public int getResume_no() {
		return resume_no;
	}

	public void setResume_no(int resume_no) {
		this.resume_no = resume_no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getResume_content() {
		return resume_content;
	}

	public void setResume_content(String resume_content) {
		this.resume_content = resume_content;
	}

	//Method-Ordinary
	@Override
	public String toString() {
		return "ResumeVo [resume_no=" + resume_no + ", user_no=" + user_no + ", resume_content=" + resume_content + "]";
	}

}
