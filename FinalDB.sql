ALTER TABLE blog
	DROP
		CONSTRAINT FK_users_TO_blog
		CASCADE;

ALTER TABLE company
	DROP
		CONSTRAINT FK_users_TO_company
		CASCADE;

ALTER TABLE buskingDate
	DROP
		CONSTRAINT FK_stage_TO_buskingDate
		CASCADE;

ALTER TABLE post
	DROP
		CONSTRAINT FK_category_TO_post
		CASCADE;

ALTER TABLE post
	DROP
		CONSTRAINT FK_users_TO_post
		CASCADE;

ALTER TABLE category
	DROP
		CONSTRAINT FK_blog_TO_category
		CASCADE;

ALTER TABLE stage
	DROP
		CONSTRAINT FK_company_TO_stage
		CASCADE;

ALTER TABLE fan
	DROP
		CONSTRAINT FK_users_TO_fan
		CASCADE;

ALTER TABLE buskingTime
	DROP
		CONSTRAINT FK_buskingDate_TO_buskingTime
		CASCADE;

ALTER TABLE buskingApp
	DROP
		CONSTRAINT FK_buskingTime_TO_buskingApp
		CASCADE;

ALTER TABLE likes
	DROP
		CONSTRAINT FK_users_TO_likes
		CASCADE;

ALTER TABLE likes
	DROP
		CONSTRAINT FK_users_TO_likes2
		CASCADE;

ALTER TABLE resume
	DROP
		CONSTRAINT FK_blog_TO_resume
		CASCADE;

ALTER TABLE ccnotice
	DROP
		CONSTRAINT FK_users_TO_ccnotice
		CASCADE;

ALTER TABLE users
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE blog
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE company
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE buskingDate
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE post
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE category
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE stage
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE fan
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE buskingTime
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE buskingApp
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE likes
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE resume
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE ccnotice
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

/* νμ */
DROP TABLE users
	CASCADE CONSTRAINTS;

/* λΈλ‘κ·Έ */
DROP TABLE blog
	CASCADE CONSTRAINTS;

/* μ ν΄μ¬ */
DROP TABLE company
	CASCADE CONSTRAINTS;

/* κ³΅μ°λ μ§ */
DROP TABLE buskingDate
	CASCADE CONSTRAINTS;

/* κ²μκΈ */
DROP TABLE post
	CASCADE CONSTRAINTS;

/* μΉ΄νκ³ λ¦¬ */
DROP TABLE category
	CASCADE CONSTRAINTS;

/* κ³΅μ°μ₯ */
DROP TABLE stage
	CASCADE CONSTRAINTS;

/* ν¬λκΈ° */
DROP TABLE fan
	CASCADE CONSTRAINTS;

/* κ³΅μ°μκ° */
DROP TABLE buskingTime
	CASCADE CONSTRAINTS;

/* λ²μ€νΉμ μ²­ */
DROP TABLE buskingApp
	CASCADE CONSTRAINTS;

/* μ’μμ */
DROP TABLE likes
	CASCADE CONSTRAINTS;

/* μ΄λ ₯μ¬ν­ */
DROP TABLE resume
	CASCADE CONSTRAINTS;

/* κ³΅μ§μ¬ν­ */
DROP TABLE ccnotice
	CASCADE CONSTRAINTS;

/** μνμ€ μ­μ  **/
/* νμ */
drop sequence seq_user_no;

/* κ³΅μ°λ μ§ */
drop sequence seq_date_no;

/* κ²μκΈ */
drop sequence seq_post_no;

/* μΉ΄νκ³ λ¦¬ */
drop sequence seq_cate_no;

/* κ³΅μ°μ₯ */
drop sequence seq_stage_no;

/* ν¬λκΈ° */
drop sequence seq_fan_no;

/* κ³΅μ°μκ° */
drop sequence seq_time_no;

/* λ²μ€νΉμ μ²­ */
drop sequence seq_app_no;

/* μ’μμ */
drop sequence seq_likes_no;

/* μ΄λ ₯μ¬ν­ */
drop sequence seq_resume_no;

/* κ³ κ°-κ³΅μ§ */
drop sequence seq_ccnotice_no;

/** μνμ€ μμ± **/
create sequence seq_user_no
increment by 1
start with 1
nocache;

create sequence seq_date_no
increment by 1
start with 1
nocache;

create sequence seq_post_no
increment by 1
start with 1
nocache;

create sequence seq_cate_no
increment by 1
start with 1
nocache;

create sequence seq_stage_no
increment by 1
start with 1
nocache;

create sequence seq_fan_no
increment by 1
start with 1
nocache;

create sequence seq_time_no
increment by 1
start with 1
nocache;

create sequence seq_app_no
increment by 1
start with 1
nocache;

create sequence seq_likes_no
increment by 1
start with 1
nocache;

create sequence seq_resume_no
increment by 1
start with 1
nocache;

create sequence seq_ccnotice_no
increment by 1
start with 1
nocache;

/* νμ */
CREATE TABLE users (
	user_no NUMBER NOT NULL, /* νμλ²νΈ */
	id VARCHAR2(20) NOT NULL, /* μμ΄λ */
	password VARCHAR2(50) NOT NULL, /* λΉλ°λ²νΈ */
	email VARCHAR2(50) NOT NULL, /* μ΄λ©μΌ */
	nickname VARCHAR2(50) NOT NULL, /* λλ€μ(νλλͺ) */
	user_img VARCHAR2(1000), /* νμμ΄λ―Έμ§ */
	name VARCHAR2(50), /* μ΄λ¦ */
	hp VARCHAR2(50), /* μ°λ½μ² */
	gender VARCHAR2(10), /* μ±λ³ */
	birthday VARCHAR2(20), /* μλμμΌ */
	genre CHAR(1), /* νΌν¬λ¨Όμ€_μ₯λ₯΄ */
	genre_type VARCHAR2(20), /* νλμ ν */
	live CHAR(1), /* λΌμ΄λΈ(λ°©μ‘μν) */
	fan NUMBER, /* ν¬λκΈ° */
	likes NUMBER, /* μ’μμ */
	artist_regdate DATE, /* μν°μ€νΈλ±λ‘μΌ */
	user_type CHAR(1), /* νμκ΅¬λΆ */
	company_type CHAR(1), /* μ ν΄μ¬μ¬λΆ */
	ranking_score NUMBER AS (fan * 0.3 + likes * 0.7) /* μν°μ€νΈ μ μ */
);

COMMENT ON TABLE users IS 'νμ';

COMMENT ON COLUMN users.user_no IS 'νμλ²νΈ';

COMMENT ON COLUMN users.id IS 'μμ΄λ';

COMMENT ON COLUMN users.password IS 'λΉλ°λ²νΈ';

COMMENT ON COLUMN users.email IS 'μ΄λ©μΌ';

COMMENT ON COLUMN users.nickname IS 'λλ€μ(νλλͺ)';

COMMENT ON COLUMN users.user_img IS 'νμμ΄λ―Έμ§';

COMMENT ON COLUMN users.name IS 'μ΄λ¦';

COMMENT ON COLUMN users.hp IS 'μ°λ½μ²';

COMMENT ON COLUMN users.gender IS 'μ±λ³';

COMMENT ON COLUMN users.birthday IS 'μλμμΌ';

COMMENT ON COLUMN users.genre IS 'νΌν¬λ¨Όμ€_μ₯λ₯΄';

COMMENT ON COLUMN users.genre_type IS 'νλμ ν';

COMMENT ON COLUMN users.live IS 'λΌμ΄λΈ(λ°©μ‘μν)';

COMMENT ON COLUMN users.fan IS 'ν¬λκΈ°';

COMMENT ON COLUMN users.likes IS 'μ’μμ';

COMMENT ON COLUMN users.artist_regdate IS 'μν°μ€νΈλ±λ‘μΌ';

COMMENT ON COLUMN users.user_type IS 'νμκ΅¬λΆ';

COMMENT ON COLUMN users.company_type IS 'μ ν΄μ¬μ¬λΆ';

COMMENT ON COLUMN users.ranking_score IS 'μν°μ€νΈ μ μ';

CREATE UNIQUE INDEX PK_users
	ON users (
		user_no ASC
	);

ALTER TABLE users
	ADD
		CONSTRAINT PK_users
		PRIMARY KEY (
			user_no
		);

/* λΈλ‘κ·Έ */
CREATE TABLE blog (
	user_no NUMBER NOT NULL, /* νμλ²νΈ */
	intro VARCHAR2(500), /* μκΈ°μκ° */
	banner VARCHAR2(1000), /* λλ¬Έμ΄λ―Έμ§ */
	y_url VARCHAR2(100), /* μ νλΈμ£Όμ */
	f_url VARCHAR2(100), /* νμ΄μ€λΆμ£Όμ */
	i_url VARCHAR2(100), /* μΈμ€νμ£Όμ */
	hit NUMBER /* λ°©λ¬Έμ */
);

COMMENT ON TABLE blog IS 'λΈλ‘κ·Έ';

COMMENT ON COLUMN blog.user_no IS 'νμλ²νΈ';

COMMENT ON COLUMN blog.intro IS 'μκΈ°μκ°';

COMMENT ON COLUMN blog.banner IS 'λλ¬Έμ΄λ―Έμ§';

COMMENT ON COLUMN blog.y_url IS 'μ νλΈμ£Όμ';

COMMENT ON COLUMN blog.f_url IS 'νμ΄μ€λΆμ£Όμ';

COMMENT ON COLUMN blog.i_url IS 'μΈμ€νμ£Όμ';

COMMENT ON COLUMN blog.hit IS 'λ°©λ¬Έμ';

CREATE UNIQUE INDEX PK_blog
	ON blog (
		user_no ASC
	);

ALTER TABLE blog
	ADD
		CONSTRAINT PK_blog
		PRIMARY KEY (
			user_no
		);

/* μ ν΄μ¬ */
CREATE TABLE company (
	user_no NUMBER NOT NULL, /* νμλ²νΈ */
	com_img VARCHAR2(1000), /* νμ¬μ΄λ―Έμ§ */
	com_name VARCHAR2(1000), /* νμ¬λͺ(κ±΄λ¬Ό) */
	address VARCHAR2(1000) NOT NULL, /* μ£Όμ */
	com_number VARCHAR2(50), /* μ°λ½μ² */
	ceo_name VARCHAR2(50), /* λνλͺ */
	business_number VARCHAR2(50), /* μ¬μμλ²νΈ */
	latitude NUMBER, /* μλ */
	longitude NUMBER /* κ²½λ */
);

COMMENT ON TABLE company IS 'μ ν΄μ¬';

COMMENT ON COLUMN company.user_no IS 'νμλ²νΈ';

COMMENT ON COLUMN company.com_img IS 'νμ¬μ΄λ―Έμ§';

COMMENT ON COLUMN company.com_name IS 'νμ¬λͺ(κ±΄λ¬Ό)';

COMMENT ON COLUMN company.address IS 'μ£Όμ';

COMMENT ON COLUMN company.com_number IS 'μ°λ½μ²';

COMMENT ON COLUMN company.ceo_name IS 'λνλͺ';

COMMENT ON COLUMN company.business_number IS 'μ¬μμλ²νΈ';

COMMENT ON COLUMN company.latitude IS 'μλ';

COMMENT ON COLUMN company.longitude IS 'κ²½λ';

CREATE UNIQUE INDEX PK_company
	ON company (
		user_no ASC
	);

ALTER TABLE company
	ADD
		CONSTRAINT PK_company
		PRIMARY KEY (
			user_no
		);

/* κ³΅μ°λ μ§ */
CREATE TABLE buskingDate (
	date_no NUMBER NOT NULL, /* λ μ§λ²νΈ */
	stage_no NUMBER, /* κ³΅μ°μ₯λ²νΈ */
	bus_date DATE, /* κ³΅μ°λ μ§ */
	requirements VARCHAR2(200) /* μκ΅¬μ¬ν­ */
);

COMMENT ON TABLE buskingDate IS 'κ³΅μ°λ μ§';

COMMENT ON COLUMN buskingDate.date_no IS 'λ μ§λ²νΈ';

COMMENT ON COLUMN buskingDate.stage_no IS 'κ³΅μ°μ₯λ²νΈ';

COMMENT ON COLUMN buskingDate.bus_date IS 'κ³΅μ°λ μ§';

COMMENT ON COLUMN buskingDate.requirements IS 'μκ΅¬μ¬ν­';

CREATE UNIQUE INDEX PK_buskingDate
	ON buskingDate (
		date_no ASC
	);

ALTER TABLE buskingDate
	ADD
		CONSTRAINT PK_buskingDate
		PRIMARY KEY (
			date_no
		);

/* κ²μκΈ */
CREATE TABLE post (
	post_no NUMBER NOT NULL, /* κ²μκΈλ²νΈ */
	category_no NUMBER, /* μΉ΄νκ³ λ¦¬(λ²νΈ) */
	user_no NUMBER, /* νμλ²νΈ */
	title VARCHAR2(1000), /* μ λͺ©(μ₯μλͺ) */
	content VARCHAR2(3000), /* λ΄μ© */
	reg_date DATE, /* μμ±μΌ */
	latitude NUMBER, /* μλ */
	longitude NUMBER, /* κ²½λ */
	p_start DATE, /* κ³΅μ°μμμΌ */
	p_end DATE, /* κ³΅μ°μ’λ£μΌ */
	p_img VARCHAR2(1000), /* κ³΅μ°μ΄λ―Έμ§ */
	live_url VARCHAR2(100), /* λΌμ΄λΈμ£Όμ */
	address VARCHAR2(1000), /* μ£Όμ */
	hit NUMBER /* μ‘°νμ */
);

COMMENT ON TABLE post IS 'κ²μκΈ';

COMMENT ON COLUMN post.post_no IS 'κ²μκΈλ²νΈ';

COMMENT ON COLUMN post.category_no IS 'μΉ΄νκ³ λ¦¬(λ²νΈ)';

COMMENT ON COLUMN post.user_no IS 'νμλ²νΈ';

COMMENT ON COLUMN post.title IS 'μ λͺ©(μ₯μλͺ)';

COMMENT ON COLUMN post.content IS 'λ΄μ©';

COMMENT ON COLUMN post.reg_date IS 'μμ±μΌ';

COMMENT ON COLUMN post.latitude IS 'μλ';

COMMENT ON COLUMN post.longitude IS 'κ²½λ';

COMMENT ON COLUMN post.p_start IS 'κ³΅μ°μμμΌ';

COMMENT ON COLUMN post.p_end IS 'κ³΅μ°μ’λ£μΌ';

COMMENT ON COLUMN post.p_img IS 'κ³΅μ°μ΄λ―Έμ§';

COMMENT ON COLUMN post.live_url IS 'λΌμ΄λΈμ£Όμ';

COMMENT ON COLUMN post.address IS 'μ£Όμ';

COMMENT ON COLUMN post.hit IS 'μ‘°νμ';

CREATE UNIQUE INDEX PK_post
	ON post (
		post_no ASC
	);

ALTER TABLE post
	ADD
		CONSTRAINT PK_post
		PRIMARY KEY (
			post_no
		);

/* μΉ΄νκ³ λ¦¬ */
CREATE TABLE category (
	category_no NUMBER NOT NULL, /* μΉ΄νκ³ λ¦¬(λ²νΈ) */
	user_no NUMBER, /* νμλ²νΈ */
	category_type CHAR(1), /* μΉ΄νκ³ λ¦¬(λΆλ₯) */
	category_name VARCHAR2(20) /* μΉ΄νκ³ λ¦¬λͺ */
);

COMMENT ON TABLE category IS 'μΉ΄νκ³ λ¦¬';

COMMENT ON COLUMN category.category_no IS 'μΉ΄νκ³ λ¦¬(λ²νΈ)';

COMMENT ON COLUMN category.user_no IS 'νμλ²νΈ';

COMMENT ON COLUMN category.category_type IS 'μΉ΄νκ³ λ¦¬(λΆλ₯)';

COMMENT ON COLUMN category.category_name IS 'μΉ΄νκ³ λ¦¬λͺ';

CREATE UNIQUE INDEX PK_category
	ON category (
		category_no ASC
	);

ALTER TABLE category
	ADD
		CONSTRAINT PK_category
		PRIMARY KEY (
			category_no
		);

/* κ³΅μ°μ₯ */
CREATE TABLE stage (
	stage_no NUMBER NOT NULL, /* κ³΅μ°μ₯λ²νΈ */
	user_no NUMBER, /* νμλ²νΈ */
	stage_name VARCHAR2(50), /* μ₯μλͺ */
	rain_progress CHAR(1), /* μ°μ²μ μ§ν */
	stage_light CHAR(1), /* λ¬΄λμ‘°λͺ */
	parking CHAR(1) /* μ£Όμ°¨ */
);

COMMENT ON TABLE stage IS 'κ³΅μ°μ₯';

COMMENT ON COLUMN stage.stage_no IS 'κ³΅μ°μ₯λ²νΈ';

COMMENT ON COLUMN stage.user_no IS 'νμλ²νΈ';

COMMENT ON COLUMN stage.stage_name IS 'μ₯μλͺ';

COMMENT ON COLUMN stage.rain_progress IS 'μ°μ²μ μ§ν';

COMMENT ON COLUMN stage.stage_light IS 'λ¬΄λμ‘°λͺ';

COMMENT ON COLUMN stage.parking IS 'μ£Όμ°¨';

CREATE UNIQUE INDEX PK_stage
	ON stage (
		stage_no ASC
	);

ALTER TABLE stage
	ADD
		CONSTRAINT PK_stage
		PRIMARY KEY (
			stage_no
		);

/* ν¬λκΈ° */
CREATE TABLE fan (
	fan_no NUMBER NOT NULL, /* ν¬λκΈ° μΌλ ¨λ²νΈ */
	user_no NUMBER NOT NULL, /* νμλ²νΈ */
	artist_no NUMBER /* μν°μ€νΈλ²νΈ */
);

COMMENT ON TABLE fan IS 'ν¬λκΈ°';

COMMENT ON COLUMN fan.fan_no IS 'ν¬λκΈ° μΌλ ¨λ²νΈ';

COMMENT ON COLUMN fan.user_no IS 'νμλ²νΈ';

COMMENT ON COLUMN fan.artist_no IS 'μν°μ€νΈλ²νΈ';

CREATE UNIQUE INDEX PK_fan
	ON fan (
		fan_no ASC
	);

ALTER TABLE fan
	ADD
		CONSTRAINT PK_fan
		PRIMARY KEY (
			fan_no
		);

/* κ³΅μ°μκ° */
CREATE TABLE buskingTime (
	time_no NUMBER NOT NULL, /* μκ°λ²νΈ */
	date_no NUMBER, /* λ μ§λ²νΈ */
	start_time VARCHAR2(50), /* μμμκ° */
	end_time VARCHAR2(50) /* μ’λ£μκ° */
);

COMMENT ON TABLE buskingTime IS 'κ³΅μ°μκ°';

COMMENT ON COLUMN buskingTime.time_no IS 'μκ°λ²νΈ';

COMMENT ON COLUMN buskingTime.date_no IS 'λ μ§λ²νΈ';

COMMENT ON COLUMN buskingTime.start_time IS 'μμμκ°';

COMMENT ON COLUMN buskingTime.end_time IS 'μ’λ£μκ°';

CREATE UNIQUE INDEX PK_buskingTime
	ON buskingTime (
		time_no ASC
	);

ALTER TABLE buskingTime
	ADD
		CONSTRAINT PK_buskingTime
		PRIMARY KEY (
			time_no
		);

/* λ²μ€νΉμ μ²­ */
CREATE TABLE buskingApp (
	apply_no NUMBER NOT NULL, /* μ μ²­λ²νΈ */
	user_no NUMBER, /* νμλ²νΈ */
	time_no NUMBER, /* μκ°λ²νΈ */
	user_info VARCHAR2(100), /* μμΈμ λ³΄ */
	apply_date DATE, /* μ μ²­μΌ */
	status CHAR(1) /* μν */
);

COMMENT ON TABLE buskingApp IS 'λ²μ€νΉμ μ²­';

COMMENT ON COLUMN buskingApp.apply_no IS 'μ μ²­λ²νΈ';

COMMENT ON COLUMN buskingApp.user_no IS 'νμλ²νΈ';

COMMENT ON COLUMN buskingApp.time_no IS 'μκ°λ²νΈ';

COMMENT ON COLUMN buskingApp.user_info IS 'μμΈμ λ³΄';

COMMENT ON COLUMN buskingApp.apply_date IS 'μ μ²­μΌ';

COMMENT ON COLUMN buskingApp.status IS 'μν';

CREATE UNIQUE INDEX PK_buskingApp
	ON buskingApp (
		apply_no ASC
	);

ALTER TABLE buskingApp
	ADD
		CONSTRAINT PK_buskingApp
		PRIMARY KEY (
			apply_no
		);

/* μ’μμ */
CREATE TABLE likes (
	likes_no NUMBER NOT NULL, /* μ’μ΄μλ²νΈ */
	user_no NUMBER, /* νμλ²νΈ */
	artist_no NUMBER, /* νμλ²νΈ(μν°μ€νΈ) */
	regdate DATE /* λ μ§ */
);

COMMENT ON TABLE likes IS 'μ’μμ';

COMMENT ON COLUMN likes.likes_no IS 'μ’μ΄μλ²νΈ';

COMMENT ON COLUMN likes.user_no IS 'νμλ²νΈ';

COMMENT ON COLUMN likes.artist_no IS 'νμλ²νΈ(μν°μ€νΈ)';

COMMENT ON COLUMN likes.regdate IS 'λ μ§';

CREATE UNIQUE INDEX PK_likes
	ON likes (
		likes_no ASC
	);

ALTER TABLE likes
	ADD
		CONSTRAINT PK_likes
		PRIMARY KEY (
			likes_no
		);

/* μ΄λ ₯μ¬ν­ */
CREATE TABLE resume (
	resume_no NUMBER NOT NULL, /* μ΄λ ₯λ²νΈ */
	user_no NUMBER NOT NULL, /* νμλ²νΈ */
	resume_content VARCHAR2(500) /* μ΄λ ₯μ¬ν­ */
);

COMMENT ON TABLE resume IS 'μ΄λ ₯μ¬ν­';

COMMENT ON COLUMN resume.resume_no IS 'μ΄λ ₯λ²νΈ';

COMMENT ON COLUMN resume.user_no IS 'νμλ²νΈ';

COMMENT ON COLUMN resume.resume_content IS 'μ΄λ ₯μ¬ν­';

CREATE UNIQUE INDEX PK_resume
	ON resume (
		resume_no ASC
	);

ALTER TABLE resume
	ADD
		CONSTRAINT PK_resume
		PRIMARY KEY (
			resume_no
		);

/* κ³΅μ§μ¬ν­ */
CREATE TABLE ccnotice (
	notice_no NUMBER NOT NULL, /* κ³΅μ§λ²νΈ */
	user_no NUMBER, /* νμλ²νΈ */
	title VARCHAR2(1000), /* μ λͺ© */
	content VARCHAR2(3000), /* λ΄μ© */
	reg_date DATE, /* μμ±μΌ */
	hit NUMBER /* μ‘°νμ */
);

COMMENT ON TABLE ccnotice IS 'κ³΅μ§μ¬ν­';

COMMENT ON COLUMN ccnotice.notice_no IS 'κ³΅μ§λ²νΈ';

COMMENT ON COLUMN ccnotice.user_no IS 'νμλ²νΈ';

COMMENT ON COLUMN ccnotice.title IS 'μ λͺ©';

COMMENT ON COLUMN ccnotice.content IS 'λ΄μ©';

COMMENT ON COLUMN ccnotice.reg_date IS 'μμ±μΌ';

COMMENT ON COLUMN ccnotice.hit IS 'μ‘°νμ';

CREATE UNIQUE INDEX PK_ccnotice
	ON ccnotice (
		notice_no ASC
	);

ALTER TABLE ccnotice
	ADD
		CONSTRAINT PK_ccnotice
		PRIMARY KEY (
			notice_no
		);

ALTER TABLE blog
	ADD
		CONSTRAINT FK_users_TO_blog
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE company
	ADD
		CONSTRAINT FK_users_TO_company
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		)ON DELETE CASCADE;

ALTER TABLE buskingDate
	ADD
		CONSTRAINT FK_stage_TO_buskingDate
		FOREIGN KEY (
			stage_no
		)
		REFERENCES stage (
			stage_no
		)ON DELETE CASCADE;

ALTER TABLE post
	ADD
		CONSTRAINT FK_category_TO_post
		FOREIGN KEY (
			category_no
		)
		REFERENCES category (
			category_no
		);

ALTER TABLE post
	ADD
		CONSTRAINT FK_users_TO_post
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE category
	ADD
		CONSTRAINT FK_blog_TO_category
		FOREIGN KEY (
			user_no
		)
		REFERENCES blog (
			user_no
		);

ALTER TABLE stage
	ADD
		CONSTRAINT FK_company_TO_stage
		FOREIGN KEY (
			user_no
		)
		REFERENCES company (
			user_no
		)ON DELETE CASCADE;

ALTER TABLE fan
	ADD
		CONSTRAINT FK_users_TO_fan
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE buskingTime
	ADD
		CONSTRAINT FK_buskingDate_TO_buskingTime
		FOREIGN KEY (
			date_no
		)
		REFERENCES buskingDate (
			date_no
		)ON DELETE CASCADE;

ALTER TABLE buskingApp
	ADD
		CONSTRAINT FK_buskingTime_TO_buskingApp
		FOREIGN KEY (
			time_no
		)
		REFERENCES buskingTime (
			time_no
		)ON DELETE CASCADE;

ALTER TABLE likes
	ADD
		CONSTRAINT FK_users_TO_likes
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE likes
	ADD
		CONSTRAINT FK_users_TO_likes2
		FOREIGN KEY (
			artist_no
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE resume
	ADD
		CONSTRAINT FK_blog_TO_resume
		FOREIGN KEY (
			user_no
		)
		REFERENCES blog (
			user_no
		);

ALTER TABLE ccnotice
	ADD
		CONSTRAINT FK_users_TO_ccnotice
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);

drop function get_seq;

CREATE FUNCTION get_seq RETURN NUMBER IS
BEGIN
  RETURN seq_resume_no.nextval;
END;

--///////////////////////////νμ΄λΈ μ΄κΈ°ν//////////////////////////////

--Users(μ΄ 26λͺ)
--κ΄λ¦¬μ
insert into users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) values(0,'admin','1234','admin@naver.com','κ΄λ¦¬μ',null,'κ΄λ¦¬μ','010-1111-1111','male','1998-11-12','1','νΈλ©','0',0,0,sysdate,'2','2');
--λ§λμμ¨ νμκ°μ(μ ν΄μ¬1)
insert into users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) values(seq_user_no.nextval,'1234','1234','1234@naver.com','λ§λμ','101.PNG','λ§λμ','010-1111-1111','male','1998-11-12','3','νΈλ©','0',0,0,sysdate,'2','2');
insert into users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) values(seq_user_no.nextval,'4321','4321','4321@naver.com','κΉμ°½μ','102.PNG',null,null,null,null,null,null,null,null,null,null,'1','2');
insert into users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) values(seq_user_no.nextval,'1111','1111','1111@naver.com','λ°μν','103.PNG',null,null,null,null,null,null,null,null,null,null,'1','2');
insert into users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) values(seq_user_no.nextval,'1112','1112','1112@naver.com','κ³ λΌνλ','104.PNG',null,null,null,null,null,null,null,null,null,null,'1','2');
insert into users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) values(seq_user_no.nextval,'1113','1113','1113@naver.com','λΉμκ³ ','105.PNG',null,null,null,null,null,null,null,null,null,null,'1','2');
insert into users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) values(seq_user_no.nextval,'1114','1114','1114@naver.com','μμΉΌλ¦¬','106.PNG',null,null,null,null,null,null,null,null,null,null,'1','2');

--μν°μ€νΈλ€ μμ±
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'busker', 'busker123', 'busker@naver.com', 'μ₯λ²μ€', '10.jpg', 'μ₯λ²μ€', '010-1204-0235', 'male', '1989-05-16', '1', 'μΈλλ°΄λ', '0', 457, 283, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'bbb', '1234', 'bbb@naver.com', 'μλλΉ', '1.PNG', 'νκΈΈλ', '010-0000-0000', 'male', '20000101', '1', 'μλ‘', '1', 10, 40, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'ccc', '1234', 'ccc@naver.com', 'λ°μμ€', '8.PNG', 'λ°μμ€', '010-1234-5000', 'male', '19970216', '1', 'μλ‘', '1', 1547, 567, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'ddd', '1234', 'ddd@naver.com', 'μ λ', '52.PNG', 'κΉμ λ', '010-9978-0345', 'female', '19960520', '2', 'μλ‘κ°μ', '1', 1243, 678, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'eee', '1234', 'eee@naver.com', 'μ΄μ¬λ¦', '53.PNG', 'μ΄μ¬λ¦', '010-6720-0080', 'female', '19981109', '5', 'μλ‘', '1', 1184, 672, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'fff', '1234', 'fff@naver.com', 'κΉλλ₯ ', '41.PNG', 'κΉλλ₯ ', '010-2998-0000', 'male', '20000101', '1', 'μλ‘', '1', 67, 15, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'ggg', '1234', 'ggg@naver.com', 'ROSE', '20.PNG', 'λ°μ±μ', '010-3212-1065', 'female', '19960211', '4', 'KPOP', '1', 1351, 567, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'hhh', '1234', 'hhh@naver.com', 'κΉνμ°', '13.PNG', 'κΉνμ°', '010-1343-6674', 'male', '19950616', '1', 'μλ‘', '1', 40, 18, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'iii', '1234', 'iii@naver.com', 'μ κ΅­', '9.PNG', 'μ μ κ΅­', '010-7756-3490', 'male', '19970905', '2', 'μλ‘', '0', 32, 30, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'jjj', '1234', 'jjj@naver.com', 'λ°νμ', '43.PNG', 'λ°νμ', '010-3662-7730', null, '20020320', '5', 'ν΅κΈ°νμλ‘', '0', 14, 10, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'kkk', '1234', 'kkk@naver.com', 'μμμ­', '48.PNG', 'μμμ­', '010-2723-4377', null, '19960129', '1', 'λ°λΌλκ°μ', '0', 1427, 789, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'lll', '1234', 'lll@naver.com', 'TWICE', '44.PNG', 'κΉλμ°', '010-5512-8530', 'female', '19961209', '3', 'μλ‘', '0', 1358, 985, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'mmm', '1234', 'mmm@naver.com', 'μ΄λ¬΄μ§', '17.PNG', 'μ΄λ¬΄μ§', '010-9096-1137', 'male', '19991020', '6', 'μΉ΄λλ§μ ', '0', 26, 20, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'nnn', '1234', 'nnn@naver.com', 'μ¬λ', '16.PNG', 'λ°μ¬λ', '010-3677-8989', 'female', '20020309', '2', 'μλ‘', '0', 15, 10, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'ooo', '1234', 'ooo@naver.com', 'κΉμ νΈ', '4.PNG', 'κΉμ νΈ', '010-3677-8989', 'male', '20010628', '4', 'μλ‘', '0', 1587, 875, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'zzz', '1234', 'zzz@naver.com', 'κΉλνΈ', '6.PNG', 'κΉλνΈ', '010-2998-0001', 'male', '20000101', '1', 'μλ‘', '0', 1622, 477, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'PPP', '1234', 'PPP@naver.com', 'ICON', '49.PNG', 'λ°μ μ§', '010-5656-3788', 'male', '19950326', '3', 'νν©', '0', 1466, 913, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'qqq', '1234', 'qqq@naver.com', 'μ΄μ ν', '38.PNG', 'μ΄μ ν', '010-7749-0881', 'male', '19980419', '5', 'λ² μ΄μ€', '0', 22, 26, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'rrr', '1234', 'rrr@naver.com', 'νλ¦¬λ±', '14.PNG', 'νλ¦¬λ±', '010-2280-1445', 'female', '19940513', '6', 'νμμμ ', '0', 1246, 570, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'sss', '1234', 'sss@naver.com', 'λ―ΈλΈμ΄', '11.PNG', 'μ΄λ―Όμ', '010-0007-7654', 'female', '19961124', '4', 'μμ€λΉ', '0', 33, 10, sysdate, '2', '1');

--λΈλ‘κ·Έ μμ±
insert into blog values(1, 'μλνμΈμ λ§λμμ λΈλ‘κ·Έμ μ€μ κ²μ νμν©λλ€.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(7, 'μλνμΈμ. μ₯λ²μ€μ λΈλ‘κ·Έμ μ€μ  κ²μ νμν©λλ€.', null, 'https://www.youtube.com/channel/UCxd9m2kFCFN1nIWB8ZOscqg', 'https://www.facebook.com/', 'https://www.instagram.com/', 3945);
insert into blog values(8, 'μλνμΈμ μλλΉμ λΈλ‘κ·Έμ μ€μ κ²μ νμν©λλ€.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(9, 'μλνμΈμ λ°μμ€μ λΈλ‘κ·Έμ μ€μ κ²μ νμν©λλ€.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(10, 'μλνμΈμ μ¬λμ λΈλ‘κ·Έμ μ€μ κ²μ νμν©λλ€.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(11, 'μλνμΈμ μ΄μ¬λ¦μ λΈλ‘κ·Έμ μ€μ κ²μ νμν©λλ€.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(12, 'μλνμΈμ κΉλλ₯ μ λΈλ‘κ·Έμ μ€μ κ²μ νμν©λλ€.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(13, 'μλνμΈμ ROSEμ λΈλ‘κ·Έμ μ€μ κ²μ νμν©λλ€.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(14, 'μλνμΈμ κΉνμ°μ λΈλ‘κ·Έμ μ€μ κ²μ νμν©λλ€.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(15, 'μλνμΈμ μ κ΅­μ λΈλ‘κ·Έμ μ€μ κ²μ νμν©λλ€.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(16, 'μλνμΈμ λ°νμμ λΈλ‘κ·Έμ μ€μ κ²μ νμν©λλ€.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(17, 'μλνμΈμ μμμ­μ λΈλ‘κ·Έμ μ€μ κ²μ νμν©λλ€.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(18, 'μλνμΈμ TWICEμ λΈλ‘κ·Έμ μ€μ κ²μ νμν©λλ€.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(19, 'μλνμΈμ μ΄λ¬΄μ§μ λΈλ‘κ·Έμ μ€μ κ²μ νμν©λλ€.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(20, 'μλνμΈμ μ¬λμ λΈλ‘κ·Έμ μ€μ κ²μ νμν©λλ€.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(21, 'μλνμΈμ κΉμ νΈμ λΈλ‘κ·Έμ μ€μ κ²μ νμν©λλ€.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(22, 'μλνμΈμ κΉλνΈμ λΈλ‘κ·Έμ μ€μ κ²μ νμν©λλ€.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(23, 'μλνμΈμ ICONμ λΈλ‘κ·Έμ μ€μ κ²μ νμν©λλ€.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(24, 'μλνμΈμ μ΄μ νμ λΈλ‘κ·Έμ μ€μ κ²μ νμν©λλ€.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(25, 'μλνμΈμ νλ¦¬λ±(HOLLYBANG)μ λΈλ‘κ·Έμ μ€μ κ²μ νμν©λλ€.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(26, 'μλνμΈμ λ―ΈλΈμ΄(MENOI)μ λΈλ‘κ·Έμ μ€μ κ²μ νμν©λλ€.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);


--μΉ΄νκ³ λ¦¬
insert into category values(seq_cate_no.nextval, 1, 1, 'κ³΅μ§μ¬ν­');
insert into category values(seq_cate_no.nextval, 1, 2, 'νμλΌμΈ');
insert into category values(seq_cate_no.nextval, 1, 3, 'κ°€λ¬λ¦¬');
insert into category values(seq_cate_no.nextval, 1, 4, 'λ°©λͺλ‘');
insert into category values(seq_cate_no.nextval, 7, 1, 'κ³΅μ§μ¬ν­');
insert into category values(seq_cate_no.nextval, 7, 2, 'νμλΌμΈ');
insert into category values(seq_cate_no.nextval, 7, 3, 'κ°€λ¬λ¦¬');
insert into category values(seq_cate_no.nextval, 7, 4, 'λ°©λͺλ‘');
insert into category values(seq_cate_no.nextval, 8, 1, 'κ³΅μ§μ¬ν­');
insert into category values(seq_cate_no.nextval, 8, 2, 'νμλΌμΈ');
insert into category values(seq_cate_no.nextval, 8, 3, 'κ°€λ¬λ¦¬');
insert into category values(seq_cate_no.nextval, 8, 4, 'λ°©λͺλ‘');
insert into category values(seq_cate_no.nextval, 9, 1, 'κ³΅μ§μ¬ν­');
insert into category values(seq_cate_no.nextval, 9, 2, 'νμλΌμΈ');
insert into category values(seq_cate_no.nextval, 9, 3, 'κ°€λ¬λ¦¬');
insert into category values(seq_cate_no.nextval, 9, 4, 'λ°©λͺλ‘');
insert into category values(seq_cate_no.nextval, 10, 1, 'κ³΅μ§μ¬ν­');
insert into category values(seq_cate_no.nextval, 10, 2, 'νμλΌμΈ');
insert into category values(seq_cate_no.nextval, 10, 3, 'κ°€λ¬λ¦¬');
insert into category values(seq_cate_no.nextval, 10, 4, 'λ°©λͺλ‘');
insert into category values(seq_cate_no.nextval, 11, 1, 'κ³΅μ§μ¬ν­');
insert into category values(seq_cate_no.nextval, 11, 2, 'νμλΌμΈ');
insert into category values(seq_cate_no.nextval, 11, 3, 'κ°€λ¬λ¦¬');
insert into category values(seq_cate_no.nextval, 11, 4, 'λ°©λͺλ‘');
insert into category values(seq_cate_no.nextval, 12, 1, 'κ³΅μ§μ¬ν­');
insert into category values(seq_cate_no.nextval, 12, 2, 'νμλΌμΈ');
insert into category values(seq_cate_no.nextval, 12, 3, 'κ°€λ¬λ¦¬');
insert into category values(seq_cate_no.nextval, 12, 4, 'λ°©λͺλ‘');
insert into category values(seq_cate_no.nextval, 13, 1, 'κ³΅μ§μ¬ν­');
insert into category values(seq_cate_no.nextval, 13, 2, 'νμλΌμΈ');
insert into category values(seq_cate_no.nextval, 13, 3, 'κ°€λ¬λ¦¬');
insert into category values(seq_cate_no.nextval, 13, 4, 'λ°©λͺλ‘');
insert into category values(seq_cate_no.nextval, 14, 1, 'κ³΅μ§μ¬ν­');
insert into category values(seq_cate_no.nextval, 14, 2, 'νμλΌμΈ');
insert into category values(seq_cate_no.nextval, 14, 3, 'κ°€λ¬λ¦¬');
insert into category values(seq_cate_no.nextval, 14, 4, 'λ°©λͺλ‘');
insert into category values(seq_cate_no.nextval, 15, 1, 'κ³΅μ§μ¬ν­');
insert into category values(seq_cate_no.nextval, 15, 2, 'νμλΌμΈ');
insert into category values(seq_cate_no.nextval, 15, 3, 'κ°€λ¬λ¦¬');
insert into category values(seq_cate_no.nextval, 15, 4, 'λ°©λͺλ‘');
insert into category values(seq_cate_no.nextval, 16, 1, 'κ³΅μ§μ¬ν­');
insert into category values(seq_cate_no.nextval, 16, 2, 'νμλΌμΈ');
insert into category values(seq_cate_no.nextval, 16, 3, 'κ°€λ¬λ¦¬');
insert into category values(seq_cate_no.nextval, 16, 4, 'λ°©λͺλ‘');
insert into category values(seq_cate_no.nextval, 17, 1, 'κ³΅μ§μ¬ν­');
insert into category values(seq_cate_no.nextval, 17, 2, 'νμλΌμΈ');
insert into category values(seq_cate_no.nextval, 17, 3, 'κ°€λ¬λ¦¬');
insert into category values(seq_cate_no.nextval, 17, 4, 'λ°©λͺλ‘');
insert into category values(seq_cate_no.nextval, 18, 1, 'κ³΅μ§μ¬ν­');
insert into category values(seq_cate_no.nextval, 18, 2, 'νμλΌμΈ');
insert into category values(seq_cate_no.nextval, 18, 3, 'κ°€λ¬λ¦¬');
insert into category values(seq_cate_no.nextval, 18, 4, 'λ°©λͺλ‘');
insert into category values(seq_cate_no.nextval, 19, 1, 'κ³΅μ§μ¬ν­');
insert into category values(seq_cate_no.nextval, 19, 2, 'νμλΌμΈ');
insert into category values(seq_cate_no.nextval, 19, 3, 'κ°€λ¬λ¦¬');
insert into category values(seq_cate_no.nextval, 19, 4, 'λ°©λͺλ‘');
insert into category values(seq_cate_no.nextval, 20, 1, 'κ³΅μ§μ¬ν­');
insert into category values(seq_cate_no.nextval, 20, 2, 'νμλΌμΈ');
insert into category values(seq_cate_no.nextval, 20, 3, 'κ°€λ¬λ¦¬');
insert into category values(seq_cate_no.nextval, 20, 4, 'λ°©λͺλ‘');
insert into category values(seq_cate_no.nextval, 21, 1, 'κ³΅μ§μ¬ν­');
insert into category values(seq_cate_no.nextval, 21, 2, 'νμλΌμΈ');
insert into category values(seq_cate_no.nextval, 21, 3, 'κ°€λ¬λ¦¬');
insert into category values(seq_cate_no.nextval, 21, 4, 'λ°©λͺλ‘');
insert into category values(seq_cate_no.nextval, 22, 1, 'κ³΅μ§μ¬ν­');
insert into category values(seq_cate_no.nextval, 22, 2, 'νμλΌμΈ');
insert into category values(seq_cate_no.nextval, 22, 3, 'κ°€λ¬λ¦¬');
insert into category values(seq_cate_no.nextval, 22, 4, 'λ°©λͺλ‘');
insert into category values(seq_cate_no.nextval, 23, 1, 'κ³΅μ§μ¬ν­');
insert into category values(seq_cate_no.nextval, 23, 2, 'νμλΌμΈ');
insert into category values(seq_cate_no.nextval, 23, 3, 'κ°€λ¬λ¦¬');
insert into category values(seq_cate_no.nextval, 23, 4, 'λ°©λͺλ‘');
insert into category values(seq_cate_no.nextval, 24, 1, 'κ³΅μ§μ¬ν­');
insert into category values(seq_cate_no.nextval, 24, 2, 'νμλΌμΈ');
insert into category values(seq_cate_no.nextval, 24, 3, 'κ°€λ¬λ¦¬');
insert into category values(seq_cate_no.nextval, 24, 4, 'λ°©λͺλ‘');
insert into category values(seq_cate_no.nextval, 25, 1, 'κ³΅μ§μ¬ν­');
insert into category values(seq_cate_no.nextval, 25, 2, 'νμλΌμΈ');
insert into category values(seq_cate_no.nextval, 25, 3, 'κ°€λ¬λ¦¬');
insert into category values(seq_cate_no.nextval, 25, 4, 'λ°©λͺλ‘');
insert into category values(seq_cate_no.nextval, 26, 1, 'κ³΅μ§μ¬ν­');
insert into category values(seq_cate_no.nextval, 26, 2, 'νμλΌμΈ');
insert into category values(seq_cate_no.nextval, 26, 3, 'κ°€λ¬λ¦¬');
insert into category values(seq_cate_no.nextval, 26, 4, 'λ°©λͺλ‘');

--μ΄λ ₯μ¬ν­
insert into resume values(seq_resume_no.nextval, 7, '2000λ κ·Έλλ―Έ μ΄μμ¦ μμ');
insert into resume values(seq_resume_no.nextval, 7, '2014 λνλ―Όκ΅­ μ°μμμ μ');
insert into resume values(seq_resume_no.nextval, 7, '2015 κ³¨λ λμ€ν¬ μ΄μμ¦');
insert into resume values(seq_resume_no.nextval, 7, '2015 λνλ―Όκ΅­ μ°μλμ');

--κ³΅μ§μ¬ν­
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, 'μλ₯΄μ½μμ κ·Ήμ₯ κ°κ΄ 40μ£Όλ κΈ°λ μμΉ΄μ΄λΈ νλ‘μ νΈ <λ°€μ νλ«νΌ>', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);

--Post (timeline)
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 6, 7, 'μ€λλ§μ λ³΄λ€μ!!', NULL, NULL, 33.451486, 126.571199, TO_DATE('2021-10-14 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'w9JE8b-84UI', 'νμ΄λ―Έλμ΄', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 6, 7, 'μ§κΈ λ°©μ‘ μ€μλλ€.', NULL, NULL, 33.451549, 126.569021, TO_DATE('2021-10-15 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'L9AkhIvINKc', 'νμ΄λ―Έλμ΄', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 6, 7, 'λΆμ΄λΉ΅μ΄ λ¨Ήκ³ μΆλ€μ', NULL, NULL, 33.453160, 126.569815, TO_DATE('2021-10-16 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'RRwfLIvyspw', 'νμ΄λ―Έλμ΄', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 6, 7, 'λ°κ°μ΅λλ€.', NULL, NULL, 33.454189, 126.571843, TO_DATE('2021-10-17 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'Dz5NUfDE5zQ', 'νμ΄λ―Έλμ΄', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 6, 7, 'μλνμΈμ. μ₯λ²μ€μλλ€.', NULL, NULL, 33.454977, 126.569000, TO_DATE('2021-10-18 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'IBOGW1kuYC0', 'νμ΄λ―Έλμ΄', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 6, 7, 'μ κ³‘μ΄ λμμ΅λλ€.', NULL, NULL, 33.453187, 126.566779, TO_DATE('2021-10-19 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'EBTpCCu2_yw', 'νμ΄λ―Έλμ΄', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 6, 7, 'μνΈλ°μ€ μμμ λ΄μ!', NULL, NULL, 33.449633, 126.570597, TO_DATE('2021-10-20 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'pnaQ9CbE6P0', 'νμ΄λ―Έλμ΄', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 6, 7, 'νλμ μ₯λ²μ€μ΄ λ΄λ€!', NULL, NULL, 33.448344, 126.573828, TO_DATE('2021-10-21 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'yj69PMgnF64', 'νμ΄λ―Έλμ΄', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 6, 7, 'μ· λ°λ»νκ² μμ΄μ!', NULL, NULL, 33.451486, 126.571199, TO_DATE('2021-10-22 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'oAS7kmob78s', 'νμ΄λ―Έλμ΄', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 6, 7, 'λ μ¨κ° λ§μ΄ μΆμμ‘μ£ ?', NULL, NULL, 33.451549, 126.569021, TO_DATE('2021-10-23 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'eCyDlclVFSw', 'νμ΄λ―Έλμ΄', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 10, 8, 'μλνμΈμ', NULL, NULL, 37.49809780929831, 127.02651378673552, TO_DATE('2021-09-01 11:06:11','YYYY-MM-DD HH24:MI:SS'), NULL, '10001.png', 'nQoRw_5ning', 'κ°λ¨μ­ 10λ² μΆκ΅¬', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 14, 9, 'μλνμΈμ', NULL, NULL, 37.49730915211319, 127.02778535605314, TO_DATE('2021-09-01 12:00:11','YYYY-MM-DD HH24:MI:SS'), NULL, '10008.jpg', 'nQoRw_5ning', 'μ€νλ²μ€ μ', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 18, 10, 'μλνμΈμ', NULL, NULL, 37.49630705835774, 127.02798383651613, TO_DATE('2021-09-01 13:31:11','YYYY-MM-DD HH24:MI:SS'), NULL, '10002.jpg', 'nQoRw_5ning', 'ABCλ§νΈ μ', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 22, 11, 'μλνμΈμ', NULL, NULL, 37.49792471732428, 127.02933711240016, TO_DATE('2021-09-01 14:58:11','YYYY-MM-DD HH24:MI:SS'), NULL, '10003.jpg', 'nQoRw_5ning', 'μ§μ°λΉλ©', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 26, 12, 'μλνμΈμ', NULL, NULL, 37.49874069129444, 127.02991451011066, TO_DATE('2021-09-01 16:41:11','YYYY-MM-DD HH24:MI:SS'), NULL, '10004.jpg', 'nQoRw_5ning', 'νκ³ λ€νμ 13μΈ΅', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 30, 13, 'μλνμΈμ', NULL, NULL, 37.499026995837525, 127.02958972389848, TO_DATE('2021-09-01 17:45:11','YYYY-MM-DD HH24:MI:SS'), NULL, '10005.jpg', 'nQoRw_5ning', 'μμ€ κ°λ¨μ ', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 34, 14, 'μλνμΈμ', NULL, NULL, 37.49892678937231, 127.02847101583437, TO_DATE('2021-09-01 21:29:11','YYYY-MM-DD HH24:MI:SS'), NULL, '10006.jpg', 'nQoRw_5ning', 'λΌμΈνλ μ¦', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 38, 15, 'μλνμΈμ', NULL, NULL, 37.49938487497267, 127.02747861351945, TO_DATE('2021-09-01 23:05:11','YYYY-MM-DD HH24:MI:SS'), NULL, '10007.jpg', 'nQoRw_5ning', 'λ©κ°λ°μ€ 7μΈ΅', NULL);

--κ°€λ¬λ¦¬
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title μ λͺ© κ°€λ¬λ¦¬ νμ€ν: 2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 7, 7, '2021-10-11 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', TO_DATE('2021-10-21 10:26:11','YYYY-MM-DD HH24:MI:SS'), '1000.png', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 7, 7, '2021-10-12 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', TO_DATE('2021-10-22 10:26:11','YYYY-MM-DD HH24:MI:SS'), '1001.png', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 7, 7, '2021-10-13 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', TO_DATE('2021-10-23 10:26:11','YYYY-MM-DD HH24:MI:SS'), '1002.png', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 7, 7, '2021-10-14 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', TO_DATE('2021-10-24 10:26:11','YYYY-MM-DD HH24:MI:SS'), '1003.png', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 7, 7, '2021-10-15 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', TO_DATE('2021-10-25 10:26:11','YYYY-MM-DD HH24:MI:SS'), '1004.png', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 7, 7, '2021-10-16 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', TO_DATE('2021-10-26 10:26:11','YYYY-MM-DD HH24:MI:SS'), '1005.png', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 7, 7, '2021-10-17 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', TO_DATE('2021-10-27 10:26:11','YYYY-MM-DD HH24:MI:SS'), '1006.png', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 7, 7, '2021-10-18 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', TO_DATE('2021-10-28 10:26:11','YYYY-MM-DD HH24:MI:SS'), '1007.png', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 7, 7, '2021-10-19 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', TO_DATE('2021-10-29 10:26:11','YYYY-MM-DD HH24:MI:SS'), '1000.png', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 7, 7, '2021-10-20 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', TO_DATE('2021-10-30 10:26:11','YYYY-MM-DD HH24:MI:SS'), '1001.png', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 7, 7, '2021-10-21 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', TO_DATE('2021-10-31 10:26:11','YYYY-MM-DD HH24:MI:SS'), '1002.png', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 7, 7, '2021-10-22 κ³΅μ° μ¬μ§.', 'Content Testing 123 λ΄μ© νμ€ν 123', TO_DATE('2021-11-01 10:26:11','YYYY-MM-DD HH24:MI:SS'), '1003.png', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'μλνμΈμ~~', 'Content Testing 123 λ΄μ© νμ€ν 123', TO_DATE('2021-11-05 10:26:11','YYYY-MM-DD HH24:MI:SS'), '2000.jpg', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'μ€λ μ λ§ μΆ₯μ£ ?', 'Content Testing 123 λ΄μ© νμ€ν 123', TO_DATE('2021-11-06 10:26:11','YYYY-MM-DD HH24:MI:SS'), '2001.jpg', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'μ· λ°λ»νκ² μκ³  μ€μΈμ!', 'Content Testing 123 λ΄μ© νμ€ν 123', TO_DATE('2021-11-07 10:26:11','YYYY-MM-DD HH24:MI:SS'), '2002.jpg', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'μ λ λ¨Ήμμ΄μ?', 'Content Testing 123 λ΄μ© νμ€ν 123', TO_DATE('2021-11-08 10:26:11','YYYY-MM-DD HH24:MI:SS'), '2003.jpg', 0);

--λ°©λͺλ‘
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 1, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 2, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 3, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 4, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 5, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 6, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 8, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 9, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 10, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 11, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 12, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 13, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 14, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 15, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 16, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 1, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 2, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 3, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 4, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 5, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 6, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 8, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 9, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 10, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 11, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 12, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 13, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 14, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 15, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 16, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 1, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 2, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 3, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 4, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 5, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 6, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 8, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 9, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 10, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 11, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 12, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 13, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 14, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 15, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 16, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 1, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 2, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 3, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 4, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 5, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 6, 'μλνμΈμ, μ₯λ²μ€μ¨ μνΌμ€νK μ μμ§μλλ€.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 8, 'Hello, Nr.Jang!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 9, 'λ€λ€ μ’μμλ ν¬λκΈ° λλ¬μ£ΌκΈ°?!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 10, 'λ²μ€μ΄ μ€λΉ !! μ¬λν΄μ!!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 11, 'λ²μ€μ΄ ν λλ¬΄ μμκ²Όμ΄μ!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 12, 'μ μ²­κ³‘μΌλ‘ "λμΌλ" λΆλ¬μ£ΌμΈμ!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 13, 'λ§μ§λ§μ λΆλ₯Έ λΈλ μλ €μ£ΌμΈμ!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 14, 'λ€μ κ³΅μ°μ μ΄λμ νλμ?', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 15, 'μ₯λ²μ€λ κ³΅μ° μ¬λ°κ² λ΄€μ΅λλ€.', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 16, 'μ₯λ²μ€λ μμν©λλ€!!!', 'Content Testing 123 λ΄μ© νμ€ν 123', sysdate, 0);



-- μ ν΄μ¬ λ±λ‘
insert into company values(1,'101.PNG','μ μ΄ CGV','μμΈ μλλ¬Έκ΅¬ μ μ΄λ‘ 129 μνΈλ μ¨','1544-1122','λ§λμ','104-81-45690',37.49879182639053, 127.02664971809797);
insert into company values(2,'102.PNG','μ λΌνΈν','μμΈνΉλ³μ μ€κ΅¬ λνΈλ‘ 249','02-2233-3131','κΉμ°½λ','101-11-37840',37.497960743833886,127.0285145402949);
insert into company values(3,'103.PNG','μ€νλ²μ€','μμΈνΉλ³μ κ°λ¨κ΅¬ κ°λ¨λλ‘ 390','02-1111-1111','λ°μν','104-52-37620',37.5577797894265,127.00762909337426);
insert into company values(4,'104.PNG','μκ·Έλμ','μμΈνΉλ³μ μ‘νκ΅¬ μ¬λ¦Όν½λ‘ 300 λ‘―λ°μλνμ','02-2222-2222','κ³ λΌνλ','137-98-32340',37.51319142112977,127.10195564589539);
insert into company values(5,'105.PNG','μλ²λλ','κ²½κΈ°λ μ©μΈμ μ²μΈκ΅¬ ν¬κ³‘μ μλ²λλλ‘ 199','02-3333-3333','λΉμκ³ ','199-99-99999',37.29355565476383,127.19979467916205);
insert into company values(6,'106.PNG','νμ΄λ―Έλμ΄','μμΈνΉλ³μ μμ΄κ΅¬ κ°λ¨λλ‘ 405 ν΅μλΉλ©','02-4444-4444','μμΉΌλ¦¬','127-445-30293',37.55649812100385,126.94032867686857);

--κ³΅μ°μ₯ λ±λ‘
insert into stage values(SEQ_STAGE_NO.nextval,1,'7μΈ΅ μ€νμ΄μ§','1','1','1');
insert into stage values(SEQ_STAGE_NO.nextval,1,'8μΈ΅ μΉ΄ν','0','0','1');
insert into stage values(SEQ_STAGE_NO.nextval,1,'9μΈ΅ μ₯μ','1','0','0');
----------------------------------------------------
insert into stage values(SEQ_STAGE_NO.nextval,2,'B1μΈ΅ μνΈν','1','1','1');
insert into stage values(SEQ_STAGE_NO.nextval,2,'B2μΈ΅ λ¬΄κΆνν','0','0','1');
insert into stage values(SEQ_STAGE_NO.nextval,2,'B3μΈ΅ νλΌμ€','1','0','1');

--κ³΅μ° λ μ§
insert into buskingdate values(SEQ_DATE_NO.nextval,1,'2021-10-24','μ§λ¦¬λ μν°μ€νΈ κ΅¬ν΄μ');
insert into buskingdate values(SEQ_DATE_NO.nextval,1,'2021-10-28','μ€μ§λ μν°μ€νΈ κ΅¬ν΄μ');
insert into buskingdate values(SEQ_DATE_NO.nextval,1,'2021-10-30','μν°μ€νΈ μ§λ¦¬λ κ΅¬ν΄μ');
insert into buskingdate values(SEQ_DATE_NO.nextval,2,'2021-10-25','μ§λ¦¬λ μν°μ€νΈ κ΅¬ν΄μ');
insert into buskingdate values(SEQ_DATE_NO.nextval,2,'2021-10-27','μ€μ§λ μν°μ€νΈ κ΅¬ν΄μ');
insert into buskingdate values(SEQ_DATE_NO.nextval,2,'2021-10-29','μν°μ€νΈ μ§λ¦¬λ κ΅¬ν΄μ');
insert into buskingdate values(SEQ_DATE_NO.nextval,3,'2021-10-23','μ§λ¦¬λ μν°μ€νΈ κ΅¬ν΄μ');
insert into buskingdate values(SEQ_DATE_NO.nextval,3,'2021-10-25','μ€μ§λ μν°μ€νΈ κ΅¬ν΄μ');
insert into buskingdate values(SEQ_DATE_NO.nextval,3,'2021-10-26','μν°μ€νΈ μ§λ¦¬λ κ΅¬ν΄μ');
insert into buskingdate values(SEQ_DATE_NO.nextval,4,'2021-10-24','μμ΄μ  λ?μ κ°μ κ΅¬ν¨');
insert into buskingdate values(SEQ_DATE_NO.nextval,4,'2021-10-28','μΌλ―Έλλ¨Έλ 2μ°¨ ν©κ²© μ΄μλ§');
insert into buskingdate values(SEQ_DATE_NO.nextval,4,'2021-10-30','κ³΅μ° κ²½λ ₯μλ κ°μ μ°λ');
insert into buskingdate values(SEQ_DATE_NO.nextval,5,'2021-10-25','μ½λΈ νκ· 97μ  μ΄μλ§');
insert into buskingdate values(SEQ_DATE_NO.nextval,5,'2021-10-27','μ΅μ 4μ₯ λ  μ¬λ¦¬μλλΆλ§');
insert into buskingdate values(SEQ_DATE_NO.nextval,5,'2021-10-29','λΉλ³΄λμ°¨νΈ λ€μ΄λ³΄μ λΆ');
insert into buskingdate values(SEQ_DATE_NO.nextval,6,'2021-10-23','λͺΈλ§μ€μλ©΄ λ©λλ€');
insert into buskingdate values(SEQ_DATE_NO.nextval,6,'2021-10-25','μμ΄λ λμ€ν κ΅¬ν΄μ');
insert into buskingdate values(SEQ_DATE_NO.nextval,6,'2021-10-26','λ―Έμ€ν° νΈλ‘― μ μ²­μλ§');

--κ³΅μ° μκ°
insert into buskingtime values(SEQ_TIME_NO.nextval,1,'2021-10-24 18:00','2021-10-24 20:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,1,'2021-10-24 20:00','2021-10-24 22:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,2,'2021-10-28 16:00','2021-10-28 18:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,2,'2021-10-28 18:00','2021-10-28 20:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,3,'2021-10-30 22:00','2021-10-30 23:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,3,'2021-10-30 23:00','2021-10-30 24:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,4,'2021-10-25 01:00','2021-10-25 02:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,4,'2021-10-25 04:00','2021-10-25 05:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,5,'2021-10-27 12:00','2021-10-27 13:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,5,'2021-10-27 14:00','2021-10-27 15:30');
insert into buskingtime values(SEQ_TIME_NO.nextval,6,'2021-10-29 18:00','2021-10-29 20:30');
insert into buskingtime values(SEQ_TIME_NO.nextval,6,'2021-10-29 21:00','2021-10-29 23:30');
insert into buskingtime values(SEQ_TIME_NO.nextval,7,'2021-10-23 18:00','2021-10-23 20:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,7,'2021-10-23 20:00','2021-10-23 22:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,8,'2021-10-25 16:00','2021-10-25 17:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,8,'2021-10-25 17:00','2021-10-25 19:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,9,'2021-10-26 18:00','2021-10-26 20:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,9,'2021-10-26 20:00','2021-10-26 22:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,10,'2021-10-24 14:00','2021-10-24 15:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,10,'2021-10-24 16:00','2021-10-24 17:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,11,'2021-10-28 22:00','2021-10-28 23:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,11,'2021-10-28 23:00','2021-10-28 24:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,12,'2021-10-30 18:00','2021-10-30 20:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,12,'2021-10-30 20:00','2021-10-30 22:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,13,'2021-10-25 21:00','2021-10-25 22:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,13,'2021-10-25 22:30','2021-10-25 24:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,14,'2021-10-27 15:00','2021-10-27 16:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,14,'2021-10-27 16:00','2021-10-27 17:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,15,'2021-10-29 18:00','2021-10-29 20:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,15,'2021-10-29 20:00','2021-10-29 22:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,16,'2021-10-23 08:00','2021-10-23 09:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,16,'2021-10-23 11:00','2021-10-23 13:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,17,'2021-10-25 14:00','2021-10-25 15:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,17,'2021-10-25 16:00','2021-10-25 17:30');
insert into buskingtime values(SEQ_TIME_NO.nextval,18,'2021-10-26 15:00','2021-10-26 20:00');
insert into buskingtime values(SEQ_TIME_NO.nextval,18,'2021-10-26 20:00','2021-10-26 24:00');

--λ²μ€νΉ μ μ²­
insert into buskingapp values(SEQ_APP_NO.nextval,1,19,'μλΆνλλ¦½λλ€ μ€λ€κ°μ΄μλ§μ€',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,1,20,'κ°μλμ 3νμμμμλλ€ λ°λ €κ°μΈμ',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,1,23,'μ κ΅­λΈλμλ 100νμ΄μ μμ²­',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,1,26,'μμ΄μ λ μ΄λ¦μ΄ λΉμ·ν©λλ€',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,1,29,'μ΄μ¬λμ λ¬΄λ£λ‘ λΈλν΄λλ¦½λλ€',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,1,32,'λ―Έμ€ν° νΈλ‘― μ€λμ 3μ°μ νλ½',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,7,1,'κ°μλμ 3νμμμμλλ€ λ°λ €κ°μΈμ',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,8,1,'μ κ΅­λΈλμλ 100νμ΄μ μμ²­',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,9,2,'μμ΄μ λ μ΄λ¦μ΄ λΉμ·ν©λλ€',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,10,3,'μ΄μ¬λμ λ¬΄λ£λ‘ λΈλν΄λλ¦½λλ€',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,11,4,'λΈλ κΈ°λ₯μ°¨κ² μν©λλ€ λΆλ¬λ§μ£Όμ­μΌ',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,12,4,'λ―Έμ€ν° νΈλ‘― μ€λμ 3μ°μ νλ½',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,13,6,'μλΆνλλ¦½λλ€ μ€λ€κ°μ΄μλ§μ€',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,14,7,'κ°μλμ 3νμμμμλλ€ λ°λ €κ°μΈμ',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,15,8,'μ κ΅­λΈλμλ 100νμ΄μ μμ²­',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,16,9,'μμ΄μ λ μ΄λ¦μ΄ λΉμ·ν©λλ€',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,17,9,'μ΄μ¬λμ λ¬΄λ£λ‘ λΈλν΄λλ¦½λλ€',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,18,11,'λΈλ κΈ°λ₯μ°¨κ² μν©λλ€ λΆλ¬λ§μ£Όμ­μΌ',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,19,12,'λ―Έμ€ν° νΈλ‘― μ€λμ 3μ°μ νλ½',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,20,12,'μλ½μΌλ©΄ 3λλμ μΌλκ° μ¬μμμ',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,21,12,'μ΄μ¬λμ λ¬΄λ£λ‘ λΈλν΄λλ¦½λλ€',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,22,13,'μμ΄μ λ μ΄λ¦μ΄ λΉμ·ν©λλ€',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,23,14,'μ κ΅­λΈλμλ 100νμ΄μ μμ²­',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,24,15,'λΈλ κΈ°λ₯μ°¨κ² μν©λλ€ λΆλ¬λ§μ£Όμ­μΌ',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,25,16,'λ―Έμ€ν° νΈλ‘― μ€λμ 3μ°μ νλ½',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,26,17,'μλΆνλλ¦½λλ€ μ€λ€κ°μ΄μλ§μ€',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,13,18,'λ§₯λλ λ BTSμΈνΈ λ¨Ήμ΄λ΄',sysdate,'3');

--κ³ κ°μΌν° κ³΅μ§μ¬ν­
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[λ²μ€μ»€λΌμ΄λ] κ³΅μ§μ¬ν­ νμ€ν: μλ² μ€λ₯.', '<p>μλνμΈμ <strong>λ²μ€μ»€λΌμ΄λ</strong>μλλ€.</p><br><p></p><p>μ΅κ·Ό λ©μΌμ ν΅ν΄ βλ²μ€μ»€λΌμ΄λ μ΄μ©κΆ κ΅¬λ§€ μλ΄β μ λͺ©μΌλ‘ βλ©λ‘ μνμ΄μ©κΆβμ΄ κ²°μ λμλ€λ λ΄μ©κ³Ό ν¨κ» κ²°μ νμ§ μμΌμ¨λ€λ©΄ μλ΄μ±λλ‘ μλ΄μμ²­ ν΄λ¬λΌλ λ©μΌμ΄ λ°μ‘λκ³  μμ΄ μ΄μ κ°λ³ν μ£Όμλ₯Ό λΆνλλ¦½λλ€.<br><br></p><p>λν λ²μ€μ»€λΌμ΄λλ μλ μλ΄μ±λ μΈμ λ€λ₯Έ μλ΄μ±λμ λ³λ μ΄μνμ§ μκ³  μμΌλ νμΈλμ§ μμ URL ν΄λ¦­, μλ΄ μ§νμΌλ‘ νΌν΄κ° λ°μνμ§ μλλ‘ μ μνμκΈ° λ°λλλ€.<br><br></p><p></p><p>- κ³ κ°μΌν° : 1566-7777(μ λ£/νμΌ 09:00~18:00)<br><br></p><p>- λͺ¨λ°μΌ μ± : λ©λ΄; κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p>- PC μΉ : www.buskeround.com κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p></p><p>κ°μ¬ν©λλ€.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[λ²μ€μ»€λΌμ΄λ] κ³΅μ§μ¬ν­ νμ€ν: μλ² μ€λ₯.', '<p>μλνμΈμ <strong>λ²μ€μ»€λΌμ΄λ</strong>μλλ€.</p><br><p></p><p>μ΅κ·Ό λ©μΌμ ν΅ν΄ βλ²μ€μ»€λΌμ΄λ μ΄μ©κΆ κ΅¬λ§€ μλ΄β μ λͺ©μΌλ‘ βλ©λ‘ μνμ΄μ©κΆβμ΄ κ²°μ λμλ€λ λ΄μ©κ³Ό ν¨κ» κ²°μ νμ§ μμΌμ¨λ€λ©΄ μλ΄μ±λλ‘ μλ΄μμ²­ ν΄λ¬λΌλ λ©μΌμ΄ λ°μ‘λκ³  μμ΄ μ΄μ κ°λ³ν μ£Όμλ₯Ό λΆνλλ¦½λλ€.<br><br></p><p>λν λ²μ€μ»€λΌμ΄λλ μλ μλ΄μ±λ μΈμ λ€λ₯Έ μλ΄μ±λμ λ³λ μ΄μνμ§ μκ³  μμΌλ νμΈλμ§ μμ URL ν΄λ¦­, μλ΄ μ§νμΌλ‘ νΌν΄κ° λ°μνμ§ μλλ‘ μ μνμκΈ° λ°λλλ€.<br><br></p><p></p><p>- κ³ κ°μΌν° : 1566-7777(μ λ£/νμΌ 09:00~18:00)<br><br></p><p>- λͺ¨λ°μΌ μ± : λ©λ΄; κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p>- PC μΉ : www.buskeround.com κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p></p><p>κ°μ¬ν©λλ€.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[λ²μ€μ»€λΌμ΄λ] κ³΅μ§μ¬ν­ νμ€ν: μλ² μ€λ₯.', '<p>μλνμΈμ <strong>λ²μ€μ»€λΌμ΄λ</strong>μλλ€.</p><br><p></p><p>μ΅κ·Ό λ©μΌμ ν΅ν΄ βλ²μ€μ»€λΌμ΄λ μ΄μ©κΆ κ΅¬λ§€ μλ΄β μ λͺ©μΌλ‘ βλ©λ‘ μνμ΄μ©κΆβμ΄ κ²°μ λμλ€λ λ΄μ©κ³Ό ν¨κ» κ²°μ νμ§ μμΌμ¨λ€λ©΄ μλ΄μ±λλ‘ μλ΄μμ²­ ν΄λ¬λΌλ λ©μΌμ΄ λ°μ‘λκ³  μμ΄ μ΄μ κ°λ³ν μ£Όμλ₯Ό λΆνλλ¦½λλ€.<br><br></p><p>λν λ²μ€μ»€λΌμ΄λλ μλ μλ΄μ±λ μΈμ λ€λ₯Έ μλ΄μ±λμ λ³λ μ΄μνμ§ μκ³  μμΌλ νμΈλμ§ μμ URL ν΄λ¦­, μλ΄ μ§νμΌλ‘ νΌν΄κ° λ°μνμ§ μλλ‘ μ μνμκΈ° λ°λλλ€.<br><br></p><p></p><p>- κ³ κ°μΌν° : 1566-7777(μ λ£/νμΌ 09:00~18:00)<br><br></p><p>- λͺ¨λ°μΌ μ± : λ©λ΄; κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p>- PC μΉ : www.buskeround.com κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p></p><p>κ°μ¬ν©λλ€.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[λ²μ€μ»€λΌμ΄λ] κ³΅μ§μ¬ν­ νμ€ν: μλ² μ€λ₯.', '<p>μλνμΈμ <strong>λ²μ€μ»€λΌμ΄λ</strong>μλλ€.</p><br><p></p><p>μ΅κ·Ό λ©μΌμ ν΅ν΄ βλ²μ€μ»€λΌμ΄λ μ΄μ©κΆ κ΅¬λ§€ μλ΄β μ λͺ©μΌλ‘ βλ©λ‘ μνμ΄μ©κΆβμ΄ κ²°μ λμλ€λ λ΄μ©κ³Ό ν¨κ» κ²°μ νμ§ μμΌμ¨λ€λ©΄ μλ΄μ±λλ‘ μλ΄μμ²­ ν΄λ¬λΌλ λ©μΌμ΄ λ°μ‘λκ³  μμ΄ μ΄μ κ°λ³ν μ£Όμλ₯Ό λΆνλλ¦½λλ€.<br><br></p><p>λν λ²μ€μ»€λΌμ΄λλ μλ μλ΄μ±λ μΈμ λ€λ₯Έ μλ΄μ±λμ λ³λ μ΄μνμ§ μκ³  μμΌλ νμΈλμ§ μμ URL ν΄λ¦­, μλ΄ μ§νμΌλ‘ νΌν΄κ° λ°μνμ§ μλλ‘ μ μνμκΈ° λ°λλλ€.<br><br></p><p></p><p>- κ³ κ°μΌν° : 1566-7777(μ λ£/νμΌ 09:00~18:00)<br><br></p><p>- λͺ¨λ°μΌ μ± : λ©λ΄; κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p>- PC μΉ : www.buskeround.com κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p></p><p>κ°μ¬ν©λλ€.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[λ²μ€μ»€λΌμ΄λ] κ³΅μ§μ¬ν­ νμ€ν: μλ² μ€λ₯.', '<p>μλνμΈμ <strong>λ²μ€μ»€λΌμ΄λ</strong>μλλ€.</p><br><p></p><p>μ΅κ·Ό λ©μΌμ ν΅ν΄ βλ²μ€μ»€λΌμ΄λ μ΄μ©κΆ κ΅¬λ§€ μλ΄β μ λͺ©μΌλ‘ βλ©λ‘ μνμ΄μ©κΆβμ΄ κ²°μ λμλ€λ λ΄μ©κ³Ό ν¨κ» κ²°μ νμ§ μμΌμ¨λ€λ©΄ μλ΄μ±λλ‘ μλ΄μμ²­ ν΄λ¬λΌλ λ©μΌμ΄ λ°μ‘λκ³  μμ΄ μ΄μ κ°λ³ν μ£Όμλ₯Ό λΆνλλ¦½λλ€.<br><br></p><p>λν λ²μ€μ»€λΌμ΄λλ μλ μλ΄μ±λ μΈμ λ€λ₯Έ μλ΄μ±λμ λ³λ μ΄μνμ§ μκ³  μμΌλ νμΈλμ§ μμ URL ν΄λ¦­, μλ΄ μ§νμΌλ‘ νΌν΄κ° λ°μνμ§ μλλ‘ μ μνμκΈ° λ°λλλ€.<br><br></p><p></p><p>- κ³ κ°μΌν° : 1566-7777(μ λ£/νμΌ 09:00~18:00)<br><br></p><p>- λͺ¨λ°μΌ μ± : λ©λ΄; κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p>- PC μΉ : www.buskeround.com κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p></p><p>κ°μ¬ν©λλ€.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[λ²μ€μ»€λΌμ΄λ] κ³΅μ§μ¬ν­ νμ€ν: μλ² μ€λ₯.', '<p>μλνμΈμ <strong>λ²μ€μ»€λΌμ΄λ</strong>μλλ€.</p><br><p></p><p>μ΅κ·Ό λ©μΌμ ν΅ν΄ βλ²μ€μ»€λΌμ΄λ μ΄μ©κΆ κ΅¬λ§€ μλ΄β μ λͺ©μΌλ‘ βλ©λ‘ μνμ΄μ©κΆβμ΄ κ²°μ λμλ€λ λ΄μ©κ³Ό ν¨κ» κ²°μ νμ§ μμΌμ¨λ€λ©΄ μλ΄μ±λλ‘ μλ΄μμ²­ ν΄λ¬λΌλ λ©μΌμ΄ λ°μ‘λκ³  μμ΄ μ΄μ κ°λ³ν μ£Όμλ₯Ό λΆνλλ¦½λλ€.<br><br></p><p>λν λ²μ€μ»€λΌμ΄λλ μλ μλ΄μ±λ μΈμ λ€λ₯Έ μλ΄μ±λμ λ³λ μ΄μνμ§ μκ³  μμΌλ νμΈλμ§ μμ URL ν΄λ¦­, μλ΄ μ§νμΌλ‘ νΌν΄κ° λ°μνμ§ μλλ‘ μ μνμκΈ° λ°λλλ€.<br><br></p><p></p><p>- κ³ κ°μΌν° : 1566-7777(μ λ£/νμΌ 09:00~18:00)<br><br></p><p>- λͺ¨λ°μΌ μ± : λ©λ΄; κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p>- PC μΉ : www.buskeround.com κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p></p><p>κ°μ¬ν©λλ€.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[λ²μ€μ»€λΌμ΄λ] κ³΅μ§μ¬ν­ νμ€ν: μλ² μ€λ₯.', '<p>μλνμΈμ <strong>λ²μ€μ»€λΌμ΄λ</strong>μλλ€.</p><br><p></p><p>μ΅κ·Ό λ©μΌμ ν΅ν΄ βλ²μ€μ»€λΌμ΄λ μ΄μ©κΆ κ΅¬λ§€ μλ΄β μ λͺ©μΌλ‘ βλ©λ‘ μνμ΄μ©κΆβμ΄ κ²°μ λμλ€λ λ΄μ©κ³Ό ν¨κ» κ²°μ νμ§ μμΌμ¨λ€λ©΄ μλ΄μ±λλ‘ μλ΄μμ²­ ν΄λ¬λΌλ λ©μΌμ΄ λ°μ‘λκ³  μμ΄ μ΄μ κ°λ³ν μ£Όμλ₯Ό λΆνλλ¦½λλ€.<br><br></p><p>λν λ²μ€μ»€λΌμ΄λλ μλ μλ΄μ±λ μΈμ λ€λ₯Έ μλ΄μ±λμ λ³λ μ΄μνμ§ μκ³  μμΌλ νμΈλμ§ μμ URL ν΄λ¦­, μλ΄ μ§νμΌλ‘ νΌν΄κ° λ°μνμ§ μλλ‘ μ μνμκΈ° λ°λλλ€.<br><br></p><p></p><p>- κ³ κ°μΌν° : 1566-7777(μ λ£/νμΌ 09:00~18:00)<br><br></p><p>- λͺ¨λ°μΌ μ± : λ©λ΄; κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p>- PC μΉ : www.buskeround.com κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p></p><p>κ°μ¬ν©λλ€.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[λ²μ€μ»€λΌμ΄λ] κ³΅μ§μ¬ν­ νμ€ν: μλ² μ€λ₯.', '<p>μλνμΈμ <strong>λ²μ€μ»€λΌμ΄λ</strong>μλλ€.</p><br><p></p><p>μ΅κ·Ό λ©μΌμ ν΅ν΄ βλ²μ€μ»€λΌμ΄λ μ΄μ©κΆ κ΅¬λ§€ μλ΄β μ λͺ©μΌλ‘ βλ©λ‘ μνμ΄μ©κΆβμ΄ κ²°μ λμλ€λ λ΄μ©κ³Ό ν¨κ» κ²°μ νμ§ μμΌμ¨λ€λ©΄ μλ΄μ±λλ‘ μλ΄μμ²­ ν΄λ¬λΌλ λ©μΌμ΄ λ°μ‘λκ³  μμ΄ μ΄μ κ°λ³ν μ£Όμλ₯Ό λΆνλλ¦½λλ€.<br><br></p><p>λν λ²μ€μ»€λΌμ΄λλ μλ μλ΄μ±λ μΈμ λ€λ₯Έ μλ΄μ±λμ λ³λ μ΄μνμ§ μκ³  μμΌλ νμΈλμ§ μμ URL ν΄λ¦­, μλ΄ μ§νμΌλ‘ νΌν΄κ° λ°μνμ§ μλλ‘ μ μνμκΈ° λ°λλλ€.<br><br></p><p></p><p>- κ³ κ°μΌν° : 1566-7777(μ λ£/νμΌ 09:00~18:00)<br><br></p><p>- λͺ¨λ°μΌ μ± : λ©λ΄; κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p>- PC μΉ : www.buskeround.com κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p></p><p>κ°μ¬ν©λλ€.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[λ²μ€μ»€λΌμ΄λ] κ³΅μ§μ¬ν­ νμ€ν: μλ² μ€λ₯.', '<p>μλνμΈμ <strong>λ²μ€μ»€λΌμ΄λ</strong>μλλ€.</p><br><p></p><p>μ΅κ·Ό λ©μΌμ ν΅ν΄ βλ²μ€μ»€λΌμ΄λ μ΄μ©κΆ κ΅¬λ§€ μλ΄β μ λͺ©μΌλ‘ βλ©λ‘ μνμ΄μ©κΆβμ΄ κ²°μ λμλ€λ λ΄μ©κ³Ό ν¨κ» κ²°μ νμ§ μμΌμ¨λ€λ©΄ μλ΄μ±λλ‘ μλ΄μμ²­ ν΄λ¬λΌλ λ©μΌμ΄ λ°μ‘λκ³  μμ΄ μ΄μ κ°λ³ν μ£Όμλ₯Ό λΆνλλ¦½λλ€.<br><br></p><p>λν λ²μ€μ»€λΌμ΄λλ μλ μλ΄μ±λ μΈμ λ€λ₯Έ μλ΄μ±λμ λ³λ μ΄μνμ§ μκ³  μμΌλ νμΈλμ§ μμ URL ν΄λ¦­, μλ΄ μ§νμΌλ‘ νΌν΄κ° λ°μνμ§ μλλ‘ μ μνμκΈ° λ°λλλ€.<br><br></p><p></p><p>- κ³ κ°μΌν° : 1566-7777(μ λ£/νμΌ 09:00~18:00)<br><br></p><p>- λͺ¨λ°μΌ μ± : λ©λ΄; κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p>- PC μΉ : www.buskeround.com κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p></p><p>κ°μ¬ν©λλ€.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[λ²μ€μ»€λΌμ΄λ] κ³΅μ§μ¬ν­ νμ€ν: μλ² μ€λ₯.', '<p>μλνμΈμ <strong>λ²μ€μ»€λΌμ΄λ</strong>μλλ€.</p><br><p></p><p>μ΅κ·Ό λ©μΌμ ν΅ν΄ βλ²μ€μ»€λΌμ΄λ μ΄μ©κΆ κ΅¬λ§€ μλ΄β μ λͺ©μΌλ‘ βλ©λ‘ μνμ΄μ©κΆβμ΄ κ²°μ λμλ€λ λ΄μ©κ³Ό ν¨κ» κ²°μ νμ§ μμΌμ¨λ€λ©΄ μλ΄μ±λλ‘ μλ΄μμ²­ ν΄λ¬λΌλ λ©μΌμ΄ λ°μ‘λκ³  μμ΄ μ΄μ κ°λ³ν μ£Όμλ₯Ό λΆνλλ¦½λλ€.<br><br></p><p>λν λ²μ€μ»€λΌμ΄λλ μλ μλ΄μ±λ μΈμ λ€λ₯Έ μλ΄μ±λμ λ³λ μ΄μνμ§ μκ³  μμΌλ νμΈλμ§ μμ URL ν΄λ¦­, μλ΄ μ§νμΌλ‘ νΌν΄κ° λ°μνμ§ μλλ‘ μ μνμκΈ° λ°λλλ€.<br><br></p><p></p><p>- κ³ κ°μΌν° : 1566-7777(μ λ£/νμΌ 09:00~18:00)<br><br></p><p>- λͺ¨λ°μΌ μ± : λ©λ΄; κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p>- PC μΉ : www.buskeround.com κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p></p><p>κ°μ¬ν©λλ€.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[λ²μ€μ»€λΌμ΄λ] κ³΅μ§μ¬ν­ νμ€ν: μλ² μ€λ₯.', '<p>μλνμΈμ <strong>λ²μ€μ»€λΌμ΄λ</strong>μλλ€.</p><br><p></p><p>μ΅κ·Ό λ©μΌμ ν΅ν΄ βλ²μ€μ»€λΌμ΄λ μ΄μ©κΆ κ΅¬λ§€ μλ΄β μ λͺ©μΌλ‘ βλ©λ‘ μνμ΄μ©κΆβμ΄ κ²°μ λμλ€λ λ΄μ©κ³Ό ν¨κ» κ²°μ νμ§ μμΌμ¨λ€λ©΄ μλ΄μ±λλ‘ μλ΄μμ²­ ν΄λ¬λΌλ λ©μΌμ΄ λ°μ‘λκ³  μμ΄ μ΄μ κ°λ³ν μ£Όμλ₯Ό λΆνλλ¦½λλ€.<br><br></p><p>λν λ²μ€μ»€λΌμ΄λλ μλ μλ΄μ±λ μΈμ λ€λ₯Έ μλ΄μ±λμ λ³λ μ΄μνμ§ μκ³  μμΌλ νμΈλμ§ μμ URL ν΄λ¦­, μλ΄ μ§νμΌλ‘ νΌν΄κ° λ°μνμ§ μλλ‘ μ μνμκΈ° λ°λλλ€.<br><br></p><p></p><p>- κ³ κ°μΌν° : 1566-7777(μ λ£/νμΌ 09:00~18:00)<br><br></p><p>- λͺ¨λ°μΌ μ± : λ©λ΄; κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p>- PC μΉ : www.buskeround.com κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p></p><p>κ°μ¬ν©λλ€.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[λ²μ€μ»€λΌμ΄λ] κ³΅μ§μ¬ν­ νμ€ν: μλ² μ€λ₯.', '<p>μλνμΈμ <strong>λ²μ€μ»€λΌμ΄λ</strong>μλλ€.</p><br><p></p><p>μ΅κ·Ό λ©μΌμ ν΅ν΄ βλ²μ€μ»€λΌμ΄λ μ΄μ©κΆ κ΅¬λ§€ μλ΄β μ λͺ©μΌλ‘ βλ©λ‘ μνμ΄μ©κΆβμ΄ κ²°μ λμλ€λ λ΄μ©κ³Ό ν¨κ» κ²°μ νμ§ μμΌμ¨λ€λ©΄ μλ΄μ±λλ‘ μλ΄μμ²­ ν΄λ¬λΌλ λ©μΌμ΄ λ°μ‘λκ³  μμ΄ μ΄μ κ°λ³ν μ£Όμλ₯Ό λΆνλλ¦½λλ€.<br><br></p><p>λν λ²μ€μ»€λΌμ΄λλ μλ μλ΄μ±λ μΈμ λ€λ₯Έ μλ΄μ±λμ λ³λ μ΄μνμ§ μκ³  μμΌλ νμΈλμ§ μμ URL ν΄λ¦­, μλ΄ μ§νμΌλ‘ νΌν΄κ° λ°μνμ§ μλλ‘ μ μνμκΈ° λ°λλλ€.<br><br></p><p></p><p>- κ³ κ°μΌν° : 1566-7777(μ λ£/νμΌ 09:00~18:00)<br><br></p><p>- λͺ¨λ°μΌ μ± : λ©λ΄; κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p>- PC μΉ : www.buskeround.com κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p></p><p>κ°μ¬ν©λλ€.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[λ²μ€μ»€λΌμ΄λ] κ³΅μ§μ¬ν­ νμ€ν: μλ² μ€λ₯.', '<p>μλνμΈμ <strong>λ²μ€μ»€λΌμ΄λ</strong>μλλ€.</p><br><p></p><p>μ΅κ·Ό λ©μΌμ ν΅ν΄ βλ²μ€μ»€λΌμ΄λ μ΄μ©κΆ κ΅¬λ§€ μλ΄β μ λͺ©μΌλ‘ βλ©λ‘ μνμ΄μ©κΆβμ΄ κ²°μ λμλ€λ λ΄μ©κ³Ό ν¨κ» κ²°μ νμ§ μμΌμ¨λ€λ©΄ μλ΄μ±λλ‘ μλ΄μμ²­ ν΄λ¬λΌλ λ©μΌμ΄ λ°μ‘λκ³  μμ΄ μ΄μ κ°λ³ν μ£Όμλ₯Ό λΆνλλ¦½λλ€.<br><br></p><p>λν λ²μ€μ»€λΌμ΄λλ μλ μλ΄μ±λ μΈμ λ€λ₯Έ μλ΄μ±λμ λ³λ μ΄μνμ§ μκ³  μμΌλ νμΈλμ§ μμ URL ν΄λ¦­, μλ΄ μ§νμΌλ‘ νΌν΄κ° λ°μνμ§ μλλ‘ μ μνμκΈ° λ°λλλ€.<br><br></p><p></p><p>- κ³ κ°μΌν° : 1566-7777(μ λ£/νμΌ 09:00~18:00)<br><br></p><p>- λͺ¨λ°μΌ μ± : λ©λ΄; κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p>- PC μΉ : www.buskeround.com κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p></p><p>κ°μ¬ν©λλ€.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[λ²μ€μ»€λΌμ΄λ] κ³΅μ§μ¬ν­ νμ€ν: μλ² μ€λ₯.', '<p>μλνμΈμ <strong>λ²μ€μ»€λΌμ΄λ</strong>μλλ€.</p><br><p></p><p>μ΅κ·Ό λ©μΌμ ν΅ν΄ βλ²μ€μ»€λΌμ΄λ μ΄μ©κΆ κ΅¬λ§€ μλ΄β μ λͺ©μΌλ‘ βλ©λ‘ μνμ΄μ©κΆβμ΄ κ²°μ λμλ€λ λ΄μ©κ³Ό ν¨κ» κ²°μ νμ§ μμΌμ¨λ€λ©΄ μλ΄μ±λλ‘ μλ΄μμ²­ ν΄λ¬λΌλ λ©μΌμ΄ λ°μ‘λκ³  μμ΄ μ΄μ κ°λ³ν μ£Όμλ₯Ό λΆνλλ¦½λλ€.<br><br></p><p>λν λ²μ€μ»€λΌμ΄λλ μλ μλ΄μ±λ μΈμ λ€λ₯Έ μλ΄μ±λμ λ³λ μ΄μνμ§ μκ³  μμΌλ νμΈλμ§ μμ URL ν΄λ¦­, μλ΄ μ§νμΌλ‘ νΌν΄κ° λ°μνμ§ μλλ‘ μ μνμκΈ° λ°λλλ€.<br><br></p><p></p><p>- κ³ κ°μΌν° : 1566-7777(μ λ£/νμΌ 09:00~18:00)<br><br></p><p>- λͺ¨λ°μΌ μ± : λ©λ΄; κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p>- PC μΉ : www.buskeround.com κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p></p><p>κ°μ¬ν©λλ€.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[λ²μ€μ»€λΌμ΄λ] κ³΅μ§μ¬ν­ νμ€ν: μλ² μ€λ₯.', '<p>μλνμΈμ <strong>λ²μ€μ»€λΌμ΄λ</strong>μλλ€.</p><br><p></p><p>μ΅κ·Ό λ©μΌμ ν΅ν΄ βλ²μ€μ»€λΌμ΄λ μ΄μ©κΆ κ΅¬λ§€ μλ΄β μ λͺ©μΌλ‘ βλ©λ‘ μνμ΄μ©κΆβμ΄ κ²°μ λμλ€λ λ΄μ©κ³Ό ν¨κ» κ²°μ νμ§ μμΌμ¨λ€λ©΄ μλ΄μ±λλ‘ μλ΄μμ²­ ν΄λ¬λΌλ λ©μΌμ΄ λ°μ‘λκ³  μμ΄ μ΄μ κ°λ³ν μ£Όμλ₯Ό λΆνλλ¦½λλ€.<br><br></p><p>λν λ²μ€μ»€λΌμ΄λλ μλ μλ΄μ±λ μΈμ λ€λ₯Έ μλ΄μ±λμ λ³λ μ΄μνμ§ μκ³  μμΌλ νμΈλμ§ μμ URL ν΄λ¦­, μλ΄ μ§νμΌλ‘ νΌν΄κ° λ°μνμ§ μλλ‘ μ μνμκΈ° λ°λλλ€.<br><br></p><p></p><p>- κ³ κ°μΌν° : 1566-7777(μ λ£/νμΌ 09:00~18:00)<br><br></p><p>- λͺ¨λ°μΌ μ± : λ©λ΄; κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p>- PC μΉ : www.buskeround.com κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p></p><p>κ°μ¬ν©λλ€.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[λ²μ€μ»€λΌμ΄λ] κ³΅μ§μ¬ν­ νμ€ν: μλ² μ€λ₯.', '<p>μλνμΈμ <strong>λ²μ€μ»€λΌμ΄λ</strong>μλλ€.</p><br><p></p><p>μ΅κ·Ό λ©μΌμ ν΅ν΄ βλ²μ€μ»€λΌμ΄λ μ΄μ©κΆ κ΅¬λ§€ μλ΄β μ λͺ©μΌλ‘ βλ©λ‘ μνμ΄μ©κΆβμ΄ κ²°μ λμλ€λ λ΄μ©κ³Ό ν¨κ» κ²°μ νμ§ μμΌμ¨λ€λ©΄ μλ΄μ±λλ‘ μλ΄μμ²­ ν΄λ¬λΌλ λ©μΌμ΄ λ°μ‘λκ³  μμ΄ μ΄μ κ°λ³ν μ£Όμλ₯Ό λΆνλλ¦½λλ€.<br><br></p><p>λν λ²μ€μ»€λΌμ΄λλ μλ μλ΄μ±λ μΈμ λ€λ₯Έ μλ΄μ±λμ λ³λ μ΄μνμ§ μκ³  μμΌλ νμΈλμ§ μμ URL ν΄λ¦­, μλ΄ μ§νμΌλ‘ νΌν΄κ° λ°μνμ§ μλλ‘ μ μνμκΈ° λ°λλλ€.<br><br></p><p></p><p>- κ³ κ°μΌν° : 1566-7777(μ λ£/νμΌ 09:00~18:00)<br><br></p><p>- λͺ¨λ°μΌ μ± : λ©λ΄; κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p>- PC μΉ : www.buskeround.com κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p></p><p>κ°μ¬ν©λλ€.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[λ²μ€μ»€λΌμ΄λ] κ³΅μ§μ¬ν­ νμ€ν: μλ² μ€λ₯.', '<p>μλνμΈμ <strong>λ²μ€μ»€λΌμ΄λ</strong>μλλ€.</p><br><p></p><p>μ΅κ·Ό λ©μΌμ ν΅ν΄ βλ²μ€μ»€λΌμ΄λ μ΄μ©κΆ κ΅¬λ§€ μλ΄β μ λͺ©μΌλ‘ βλ©λ‘ μνμ΄μ©κΆβμ΄ κ²°μ λμλ€λ λ΄μ©κ³Ό ν¨κ» κ²°μ νμ§ μμΌμ¨λ€λ©΄ μλ΄μ±λλ‘ μλ΄μμ²­ ν΄λ¬λΌλ λ©μΌμ΄ λ°μ‘λκ³  μμ΄ μ΄μ κ°λ³ν μ£Όμλ₯Ό λΆνλλ¦½λλ€.<br><br></p><p>λν λ²μ€μ»€λΌμ΄λλ μλ μλ΄μ±λ μΈμ λ€λ₯Έ μλ΄μ±λμ λ³λ μ΄μνμ§ μκ³  μμΌλ νμΈλμ§ μμ URL ν΄λ¦­, μλ΄ μ§νμΌλ‘ νΌν΄κ° λ°μνμ§ μλλ‘ μ μνμκΈ° λ°λλλ€.<br><br></p><p></p><p>- κ³ κ°μΌν° : 1566-7777(μ λ£/νμΌ 09:00~18:00)<br><br></p><p>- λͺ¨λ°μΌ μ± : λ©λ΄; κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p>- PC μΉ : www.buskeround.com κ³ κ°μΌν°; λμ λ¬Έμ λ΄μ­; 1:1λ¬Έμ<br><br></p><p></p><p>κ°μ¬ν©λλ€.</p>', sysdate, 0);

commit;