package com.javaex.vo;

public class BusdateVo {

	//필드
	private int date_no;
	private int stage_no;
	private String bus_date;
	private String requirements;
	
	//생성자
	public BusdateVo() {
		super();
	}

	public BusdateVo(int date_no, int stage_no, String bus_date, String requirements) {
		super();
		this.date_no = date_no;
		this.stage_no = stage_no;
		this.bus_date = bus_date;
		this.requirements = requirements;
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
	
	//메소드
	@Override
	public String toString() {
		return "BusdateVo [date_no=" + date_no + ", stage_no=" + stage_no + ", bus_date=" + bus_date
				+ ", requirements=" + requirements + "]";
	}
	
}
