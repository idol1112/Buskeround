package com.javaex.vo;

public class MypageVo {
	
	//Field
	private String nickname;
	private String name;
	private int hp;
	private String gender;
	private String birthday;
	private int genre;
	private int genre_type;

	
	//Constructor
	public MypageVo() {
		super();
	}
	
	public MypageVo(String nickname, String name, int hp, String gender, String birthday, int genre, int genre_type) {
		super();
		this.nickname = nickname;
		this.name = name;
		this.hp = hp;
		this.gender = gender;
		this.birthday = birthday;
		this.genre = genre;
		this.genre_type = genre_type;
	}

	//Method G/S
	
	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getHp() {
		return hp;
	}

	public void setHp(int hp) {
		this.hp = hp;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public int getGenre() {
		return genre;
	}

	public void setGenre(int genre) {
		this.genre = genre;
	}

	public int getGenre_type() {
		return genre_type;
	}

	public void setGenre_type(int genre_type) {
		this.genre_type = genre_type;
	}

	//Method - Ordinary
	@Override
	public String toString() {
		return "MypageVo [nickname=" + nickname + ", name=" + name + ", hp=" + hp + ", gender=" + gender + ", birthday="
				+ birthday + ", genre=" + genre + ", genre_type=" + genre_type + "]";
	}
	

}
