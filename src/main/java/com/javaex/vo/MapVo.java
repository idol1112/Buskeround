package com.javaex.vo;

public class MapVo {
	//필드
	private int no;				//위치 고유번호
	private double latitude;	//위도
	private double longitude;	//경도
	
	
	//생성자
	public MapVo() {}
	
	public MapVo(int no, double latitude, double longitude) {
		this.no = no;
		this.latitude = latitude;
		this.longitude = longitude;
	}

	
	//게터세터
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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

	
	//메소드일반
	@Override
	public String toString() {
		return "MapVo [no=" + no + ", latitude=" + latitude + ", longitude=" + longitude + "]";
	}
	
	
	
	
	
}
