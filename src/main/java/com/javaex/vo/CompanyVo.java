package com.javaex.vo;

public class CompanyVo {
	
	//필드
	private int user_no;
	private String com_img;
	private String com_name;
	private String address;
	private String com_number;
	private String ceo_name;
	private String business_number;
	private double latitude;
	private double longitude;
	
	
	//생성자
	public CompanyVo() {
		super();
	}
	
	public CompanyVo(int user_no, String com_img, String com_name, String address, String com_number,
			String ceo_name, String business_number, double latitude, double longitude) {
		super();
		this.user_no = user_no;
		this.com_img = com_img;
		this.com_name = com_name;
		this.address = address;
		this.com_number = com_number;
		this.ceo_name = ceo_name;
		this.business_number = business_number;
		this.latitude = latitude;
		this.longitude = longitude;
	}
	
	
	public CompanyVo(int user_no, String com_img, String com_name, String address, String com_number,
			String ceo_name, String business_number) {
		super();
		this.user_no = user_no;
		this.com_img = com_img;
		this.com_name = com_name;
		this.address = address;
		this.com_number = com_number;
		this.ceo_name = ceo_name;
		this.business_number = business_number;
	}


	//메소드 gs
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


	public double getLatitude() {
		return latitude;
	}


	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}


	public double getLongitude() {
		return longitude;
	}


	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	
	
	//메소드
	@Override
	public String toString() {
		return "CompanyVo [user_no=" + user_no + ", com_img=" + com_img + ", com_name="
				+ com_name + ", address=" + address + ", com_number=" + com_number + ", ceo_name=" + ceo_name
				+ ", business_number=" + business_number + ", latitude=" + latitude + ", longitude=" + longitude + "]";
	}

}
