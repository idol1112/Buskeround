package com.javaex.vo;

public class ApplyListVo {
	
	//필드
	private int user_no;
	private int apply_no;
	private String com_name;
	private String stage_name;
	private String bus_date;
	private String start_time;
	private String end_time;
	private String address;
	private String com_number;
	private String requirements;
	private String status;
	
	//생성자
	public ApplyListVo() {
		super();
	}
	public ApplyListVo(int user_no, int apply_no, String com_name, String stage_name, String bus_date,
			String start_time, String end_time, String address, String com_number, String requirements, String status) {
		super();
		this.user_no = user_no;
		this.apply_no = apply_no;
		this.com_name = com_name;
		this.stage_name = stage_name;
		this.bus_date = bus_date;
		this.start_time = start_time;
		this.end_time = end_time;
		this.address = address;
		this.com_number = com_number;
		this.requirements = requirements;
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

	public String getCom_name() {
		return com_name;
	}

	public void setCom_name(String com_name) {
		this.com_name = com_name;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCom_number() {
		return com_number;
	}

	public void setCom_number(String com_number) {
		this.com_number = com_number;
	}

	public String getRequirements() {
		return requirements;
	}

	public void setRequirements(String requirements) {
		this.requirements = requirements;
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
		return "ApplyListVo [user_no=" + user_no + ", apply_no=" + apply_no + ", com_name=" + com_name + ", stage_name="
				+ stage_name + ", bus_date=" + bus_date + ", start_time=" + start_time + ", end_time=" + end_time
				+ ", address=" + address + ", com_number=" + com_number + ", requirements=" + requirements + ", status="
				+ status + "]";
	}

}
