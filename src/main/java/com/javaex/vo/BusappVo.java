package com.javaex.vo;

public class BusappVo {
	
	//필드
	private int user_no;
	private int apply_no;
	private String stage_name;
	private String bus_date;
	private String start_time;
	private String end_time;
	private String nickname;
	private String genre;
	private String hp;
	private String user_info;
	private String status;
	
	//생성자
	public BusappVo() {
		super();
	}
	
	public BusappVo(int user_no, int apply_no, String stage_name, String bus_date, String start_time, String end_time,
			String nickname, String genre, String hp, String user_info, String status) {
		super();
		this.user_no = user_no;
		this.apply_no = apply_no;
		this.stage_name = stage_name;
		this.bus_date = bus_date;
		this.start_time = start_time;
		this.end_time = end_time;
		this.nickname = nickname;
		this.genre = genre;
		this.hp = hp;
		this.user_info = user_info;
		this.status = status;
	}

	//메소드 g-s
	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public int getApply_no() {
		return apply_no;
	}

	public void setApply_no(int apply_no) {
		this.apply_no = apply_no;
	}

	public String getStage_name() {
		return stage_name;
	}

	public void setStage_name(String stage_name) {
		this.stage_name = stage_name;
	}

	public String getBus_date() {
		return bus_date;
	}

	public void setBus_date(String bus_date) {
		this.bus_date = bus_date;
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

	public String getHp() {
		return hp;
	}

	public void setHp(String hp) {
		this.hp = hp;
	}

	public String getUser_info() {
		return user_info;
	}

	public void setUser_info(String user_info) {
		this.user_info = user_info;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	//메소드
	@Override
	public String toString() {
		return "BusappVo [user_no=" + user_no + ", apply_no=" + apply_no + ", stage_name=" + stage_name + ", bus_date="
				+ bus_date + ", start_time=" + start_time + ", end_time=" + end_time + ", nickname=" + nickname
				+ ", genre=" + genre + ", hp=" + hp + ", user_info=" + user_info + ", status=" + status + "]";
	}
}
