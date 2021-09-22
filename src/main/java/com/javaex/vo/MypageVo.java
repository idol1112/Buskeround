package com.javaex.vo;

public class MypageVo {
	
	//Field
	private String id;
	private String nickname;
	private String name;
	private int hp;
	private String gender;
	private String birthday;
	private int genre;
	private String genre_type;
	private int user_type;
	
	//Constructor
	public MypageVo() {
		super();
	}
	
	public MypageVo(String id, String nickname, String name, int hp, String gender, String birthday, int genre,
			String genre_type, int user_type) {
		super();
		this.id = id;
		this.nickname = nickname;
		this.name = name;
		this.hp = hp;
		this.gender = gender;
		this.birthday = birthday;
		this.genre = genre;
		this.genre_type = genre_type;
		this.user_type = user_type;
	}
	
	//Method G/S
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
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

	public String getGenre_type() {
		return genre_type;
	}

	public void setGenre_type(String genre_type) {
		this.genre_type = genre_type;
	}

	public int getUser_type() {
		return user_type;
	}

	public void setUser_type(int user_type) {
		this.user_type = user_type;
	}

	//Method - Ordinary
	@Override
	public String toString() {
		return "MypageVo [id=" + id + ", nickname=" + nickname + ", name=" + name + ", hp=" + hp + ", gender=" + gender
				+ ", birthday=" + birthday + ", genre=" + genre + ", genre_type=" + genre_type + ", user_type="
				+ user_type + "]";
	}

}
