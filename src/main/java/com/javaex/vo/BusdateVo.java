package com.javaex.vo;

public class BusdateVo {

	//필드
	private int date_no;
	private int stage_no;
	private String bus_date;
	private String requirements;
	
	private int time_no;
	private String start_time;
	private String end_time;
	
	private String nickname;
	
	//생성자
	public BusdateVo() {
		super();
	}

	public BusdateVo(int stage_no, String bus_date) {
		super();
		this.stage_no = stage_no;
		this.bus_date = bus_date;
	}

	public BusdateVo(int stage_no, String bus_date, String requirements) {
		super();
		this.stage_no = stage_no;
		this.bus_date = bus_date;
		this.requirements = requirements;
	}

	public BusdateVo(int date_no, int stage_no, String bus_date, String requirements) {
		super();
		this.date_no = date_no;
		this.stage_no = stage_no;
		this.bus_date = bus_date;
		this.requirements = requirements;
	}
	
	
	public BusdateVo(int date_no, int stage_no, String bus_date, String requirements, int time_no, String start_time,
			String end_time) {
		super();
		this.date_no = date_no;
		this.stage_no = stage_no;
		this.bus_date = bus_date;
		this.requirements = requirements;
		this.time_no = time_no;
		this.start_time = start_time;
		this.end_time = end_time;
	}

	public BusdateVo(int date_no, int stage_no, String bus_date, String requirements, int time_no, String start_time,
			String end_time, String nickname) {
		super();
		this.date_no = date_no;
		this.stage_no = stage_no;
		this.bus_date = bus_date;
		this.requirements = requirements;
		this.time_no = time_no;
		this.start_time = start_time;
		this.end_time = end_time;
		this.nickname = nickname;
	}

	//메소드 g-s
	public int getDate_no() {
		return date_no;
	}

	public void setDate_no(int date_no) {
		this.date_no = date_no;
	}

	public int getStage_no() {
		return stage_no;
	}

	public void setStage_no(int stage_no) {
		this.stage_no = stage_no;
	}

	public String getBus_date() {
		return bus_date;
	}

	public void setBus_date(String bus_date) {
		this.bus_date = bus_date;
	}

	public String getRequirements() {
		return requirements;
	}

	public void setRequirements(String requirements) {
		this.requirements = requirements;
	}
	
	public int getTime_no() {
		return time_no;
	}

	public void setTime_no(int time_no) {
		this.time_no = time_no;
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


	//메소드
	@Override
	public String toString() {
		return "BusdateVo [date_no=" + date_no + ", stage_no=" + stage_no + ", bus_date=" + bus_date + ", requirements="
				+ requirements + ", time_no=" + time_no + ", start_time=" + start_time + ", end_time=" + end_time
				+ ", nickname=" + nickname + "]";
	}
	
}
