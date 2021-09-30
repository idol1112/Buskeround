package com.javaex.vo;

import java.util.List;

public class BustimeVo {

	//필드
	private int time_no;
	private int date_no;
	private String start_time;
	private String end_time;
	private List<BustimeVo> tList;
	
	//생성자
	public BustimeVo() {
		super();
	}
	
	public BustimeVo(String start_time, String end_time) {
		super();
		this.start_time = start_time;
		this.end_time = end_time;
	}

	public BustimeVo(int date_no, String start_time, String end_time) {
		super();
		this.date_no = date_no;
		this.start_time = start_time;
		this.end_time = end_time;
	}

	public BustimeVo(int time_no, int date_no, String start_time, String end_time) {
		super();
		this.time_no = time_no;
		this.date_no = date_no;
		this.start_time = start_time;
		this.end_time = end_time;
	}
	
	//메소드 g-s
	public int getTime_no() {
		return time_no;
	}

	public void setTime_no(int time_no) {
		this.time_no = time_no;
	}

	public int getDate_no() {
		return date_no;
	}

	public void setDate_no(int date_no) {
		this.date_no = date_no;
	}

	public String getStart_time() {
		return start_time;
	}

	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}

	public String getEnd_time() {
		return end_time;
	}

	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	
	public List<BustimeVo> gettList() {
		return tList;
	}

	public void settList(List<BustimeVo> tList) {
		this.tList = tList;
	}

	//메소드
	@Override
	public String toString() {
		return "BustimeVo [time_no=" + time_no + ", date_no=" + date_no + ", start_time=" + start_time + ", end_time="
				+ end_time + "]";
	}
	
}
