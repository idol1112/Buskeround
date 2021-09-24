package com.javaex.vo;

public class StageVo {
	
	//필드
	private int stage_no;
	private int user_no;
	private String stage_name;
	private String rain_progress;
	private String stage_light;
	private String parking;
	
	//생성자
	public StageVo() {
		super();
	}
	
	public StageVo(int stage_no, int user_no, String stage_name, String rain_progress, String stage_light,
			String parking) {
		super();
		this.stage_no = stage_no;
		this.user_no = user_no;
		this.stage_name = stage_name;
		this.rain_progress = rain_progress;
		this.stage_light = stage_light;
		this.parking = parking;
	}
	
	//메소드 g-s
	public int getStage_no() {
		return stage_no;
	}

	public void setStage_no(int stage_no) {
		this.stage_no = stage_no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getStage_name() {
		return stage_name;
	}

	public void setStage_name(String stage_name) {
		this.stage_name = stage_name;
	}

	public String getRain_progress() {
		return rain_progress;
	}

	public void setRain_progress(String rain_progress) {
		this.rain_progress = rain_progress;
	}

	public String getStage_light() {
		return stage_light;
	}

	public void setStage_light(String stage_light) {
		this.stage_light = stage_light;
	}

	public String getParking() {
		return parking;
	}

	public void setParking(String parking) {
		this.parking = parking;
	}
	
	//메소드
	@Override
	public String toString() {
		return "StageVo [stage_no=" + stage_no + ", user_no=" + user_no + ", stage_name=" + stage_name
				+ ", rain_progress=" + rain_progress + ", stage_light=" + stage_light + ", parking=" + parking + "]";
	}
	
}
