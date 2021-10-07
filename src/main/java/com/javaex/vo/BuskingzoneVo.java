package com.javaex.vo;

public class BuskingzoneVo {
	//company
	private int user_no;
	private String com_img;
	private String com_name;
	private String address;
	private String com_number;
	private String ceo_name;
	private String business_number;
	private int latitude;
	private int longitude;
	
	//buskingdate
	private int date_no;
	private int stage_no;
	private String bus_date;
	private String requirements;
	
	//buskingtime
	private int time_no;
	private String start_time;
	private String end_time;
	
	//stage
	private String stage_name;
	private String rain_progress;
	private String stage_light;
	private String parking;
	
	public BuskingzoneVo() {}
	
	public BuskingzoneVo(int user_no, String com_img, String com_name, String address, String com_number,
			String ceo_name, String business_number, int latitude, int longitude, int date_no, int stage_no,
			String bus_date, String requirements, int time_no, String start_time, String end_time, String stage_name,
			String rain_progress, String stage_light, String parking) {
		this.user_no = user_no;
		this.com_img = com_img;
		this.com_name = com_name;
		this.address = address;
		this.com_number = com_number;
		this.ceo_name = ceo_name;
		this.business_number = business_number;
		this.latitude = latitude;
		this.longitude = longitude;
		this.date_no = date_no;
		this.stage_no = stage_no;
		this.bus_date = bus_date;
		this.requirements = requirements;
		this.time_no = time_no;
		this.start_time = start_time;
		this.end_time = end_time;
		this.stage_name = stage_name;
		this.rain_progress = rain_progress;
		this.stage_light = stage_light;
		this.parking = parking;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getCom_img() {
		return com_img;
	}

	public void setCom_img(String com_img) {
		this.com_img = com_img;
	}

	public String getCom_name() {
		return com_name;
	}

	public void setCom_name(String com_name) {
		this.com_name = com_name;
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

	public String getCeo_name() {
		return ceo_name;
	}

	public void setCeo_name(String ceo_name) {
		this.ceo_name = ceo_name;
	}

	public String getBusiness_number() {
		return business_number;
	}

	public void setBusiness_number(String business_number) {
		this.business_number = business_number;
	}

	public int getLatitude() {
		return latitude;
	}

	public void setLatitude(int latitude) {
		this.latitude = latitude;
	}

	public int getLongitude() {
		return longitude;
	}

	public void setLongitude(int longitude) {
		this.longitude = longitude;
	}

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

	
	
	
	@Override
	public String toString() {
		return "BuskingzoneVo [user_no=" + user_no + ", com_img=" + com_img + ", com_name=" + com_name + ", address="
				+ address + ", com_number=" + com_number + ", ceo_name=" + ceo_name + ", business_number="
				+ business_number + ", latitude=" + latitude + ", longitude=" + longitude + ", date_no=" + date_no
				+ ", stage_no=" + stage_no + ", bus_date=" + bus_date + ", requirements=" + requirements + ", time_no="
				+ time_no + ", start_time=" + start_time + ", end_time=" + end_time + ", stage_name=" + stage_name
				+ ", rain_progress=" + rain_progress + ", stage_light=" + stage_light + ", parking=" + parking + "]";
	}
	
	
	
	
	
	
}
