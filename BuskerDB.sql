/* 회원 */
DROP TABLE users
	CASCADE CONSTRAINTS;

/* 블로그 */
DROP TABLE blog
	CASCADE CONSTRAINTS;

/* 제휴사 */
DROP TABLE company
	CASCADE CONSTRAINTS;

/* 공연날짜 */
DROP TABLE buskingDate
	CASCADE CONSTRAINTS;

/* 게시글 */
DROP TABLE post
	CASCADE CONSTRAINTS;

/* 카테고리 */
DROP TABLE category
	CASCADE CONSTRAINTS;

/* 공연장 */
DROP TABLE stage
	CASCADE CONSTRAINTS;

/* 팬되기 */
DROP TABLE fan
	CASCADE CONSTRAINTS;

/* 공연시간 */
DROP TABLE buskingTime
	CASCADE CONSTRAINTS;

/* 버스킹신청 */
DROP TABLE buskingApp
	CASCADE CONSTRAINTS;

/* 좋아요 */
DROP TABLE likes
	CASCADE CONSTRAINTS;

/* 이력사항 */
DROP TABLE resume
	CASCADE CONSTRAINTS;

/** 시퀀스 삭제 **/
/* 회원 */
drop sequence seq_user_no;

/* 공연날짜 */
drop sequence seq_date_no;

/* 게시글 */
drop sequence seq_post_no;

/* 카테고리 */
drop sequence seq_cate_no;

/* 공연장 */
drop sequence seq_stage_no;

/* 팬되기 */
drop sequence seq_fan_no;

/* 공연시간 */
drop sequence seq_time_no;

/* 버스킹신청 */
drop sequence seq_app_no;

/* 좋아요 */
drop sequence seq_likes_no;

/* 이력사항 */
drop sequence seq_resume_no;

/** 시퀀스 생성 **/
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



/* 회원 */
CREATE TABLE users (
	user_no NUMBER NOT NULL, /* 회원번호 */
	id VARCHAR2(20) NOT NULL, /* 아이디 */
	password VARCHAR2(50) NOT NULL, /* 비밀번호 */
	email VARCHAR2(50) NOT NULL, /* 이메일 */
	nickname VARCHAR2(50) NOT NULL, /* 닉네임(활동명) */
	user_img VARCHAR2(1000), /* 회원이미지 */
	name VARCHAR2(50), /* 이름 */
	hp VARCHAR2(50), /* 연락처 */
	gender VARCHAR2(10), /* 성별 */
	birthday VARCHAR2(20), /* 생년월일 */
	genre CHAR(1), /* 퍼포먼스_장르 */
	genre_type VARCHAR2(20), /* 활동유형 */
	live CHAR(1), /* 라이브(방송상태) */
	fan NUMBER, /* 팬되기 */
	likes NUMBER, /* 좋아요 */
	artist_regdate DATE, /* 아티스트등록일 */
	user_type CHAR(1), /* 회원구분 */
	company_type CHAR(1), /* 제휴사여부 */
	ranking_score NUMBER /* 아티스트 점수 */
);

COMMENT ON TABLE users IS '회원';

COMMENT ON COLUMN users.user_no IS '회원번호';

COMMENT ON COLUMN users.id IS '아이디';

COMMENT ON COLUMN users.password IS '비밀번호';

COMMENT ON COLUMN users.email IS '이메일';

COMMENT ON COLUMN users.nickname IS '닉네임(활동명)';

COMMENT ON COLUMN users.user_img IS '회원이미지';

COMMENT ON COLUMN users.name IS '이름';

COMMENT ON COLUMN users.hp IS '연락처';

COMMENT ON COLUMN users.gender IS '성별';

COMMENT ON COLUMN users.birthday IS '생년월일';

COMMENT ON COLUMN users.genre IS '퍼포먼스_장르';

COMMENT ON COLUMN users.genre_type IS '활동유형';

COMMENT ON COLUMN users.live IS '라이브(방송상태)';

COMMENT ON COLUMN users.fan IS '팬되기';

COMMENT ON COLUMN users.likes IS '좋아요';

COMMENT ON COLUMN users.artist_regdate IS '아티스트등록일';

COMMENT ON COLUMN users.user_type IS '회원구분';

COMMENT ON COLUMN users.company_type IS '제휴사여부';

COMMENT ON COLUMN users.ranking_score IS '아티스트 점수';

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

/* 블로그 */
CREATE TABLE blog (
	user_no NUMBER NOT NULL, /* 회원번호 */
	intro VARCHAR2(500), /* 자기소개 */
	banner VARCHAR2(1000), /* 대문이미지 */
	y_url VARCHAR2(100), /* 유튜브주소 */
	f_url VARCHAR2(100), /* 페이스북주소 */
	i_url VARCHAR2(100) /* 인스타주소 */
);

COMMENT ON TABLE blog IS '블로그';

COMMENT ON COLUMN blog.user_no IS '회원번호';

COMMENT ON COLUMN blog.intro IS '자기소개';

COMMENT ON COLUMN blog.banner IS '대문이미지';

COMMENT ON COLUMN blog.y_url IS '유튜브주소';

COMMENT ON COLUMN blog.f_url IS '페이스북주소';

COMMENT ON COLUMN blog.i_url IS '인스타주소';

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

/* 제휴사 */
CREATE TABLE company (
	user_no NUMBER NOT NULL, /* 회원번호 */
	com_img VARCHAR2(1000), /* 회사이미지 */
	com_name VARCHAR2(1000), /* 회사명(건물) */
	address VARCHAR2(1000) NOT NULL, /* 주소 */
	com_number VARCHAR2(50), /* 연락처 */
	ceo_name VARCHAR2(50), /* 대표명 */
	business_number VARCHAR2(50), /* 사업자번호 */
	latitude NUMBER, /* 위도 */
	longitude NUMBER /* 경도 */
);

COMMENT ON TABLE company IS '제휴사';

COMMENT ON COLUMN company.user_no IS '회원번호';

COMMENT ON COLUMN company.com_img IS '회사이미지';

COMMENT ON COLUMN company.com_name IS '회사명(건물)';

COMMENT ON COLUMN company.address IS '주소';

COMMENT ON COLUMN company.com_number IS '연락처';

COMMENT ON COLUMN company.ceo_name IS '대표명';

COMMENT ON COLUMN company.business_number IS '사업자번호';

COMMENT ON COLUMN company.latitude IS '위도';

COMMENT ON COLUMN company.longitude IS '경도';

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

/* 공연날짜 */
CREATE TABLE buskingDate (
	date_no NUMBER NOT NULL, /* 날짜번호 */
	stage_no NUMBER, /* 공연장번호 */
	bus_date DATE, /* 공연날짜 */
	requirements VARCHAR2(200) /* 요구사항 */
);

COMMENT ON TABLE buskingDate IS '공연날짜';

COMMENT ON COLUMN buskingDate.date_no IS '날짜번호';

COMMENT ON COLUMN buskingDate.stage_no IS '공연장번호';

COMMENT ON COLUMN buskingDate.bus_date IS '공연날짜';

COMMENT ON COLUMN buskingDate.requirements IS '요구사항';

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

/* 게시글 */
CREATE TABLE post (
	post_no NUMBER NOT NULL, /* 게시글번호 */
	category_no NUMBER, /* 카테고리(번호) */
	user_no NUMBER, /* 회원번호 */
	title VARCHAR2(1000), /* 제목(장소명) */
	content VARCHAR2(3000), /* 내용 */
	reg_date DATE, /* 작성일 */
	latitude NUMBER, /* 위도 */
	longitude NUMBER, /* 경도 */
	p_start DATE, /* 공연시작일 */
	p_end DATE, /* 공연종료일 */
	p_img VARCHAR2(1000), /* 공연이미지 */
	live_url VARCHAR2(100), /* 라이브주소 */
	address VARCHAR2(1000), /* 주소 */
	hit NUMBER /* 조회수 */
);

COMMENT ON TABLE post IS '게시글';

COMMENT ON COLUMN post.post_no IS '게시글번호';

COMMENT ON COLUMN post.category_no IS '카테고리(번호)';

COMMENT ON COLUMN post.user_no IS '회원번호';

COMMENT ON COLUMN post.title IS '제목(장소명)';

COMMENT ON COLUMN post.content IS '내용';

COMMENT ON COLUMN post.reg_date IS '작성일';

COMMENT ON COLUMN post.latitude IS '위도';

COMMENT ON COLUMN post.longitude IS '경도';

COMMENT ON COLUMN post.p_start IS '공연시작일';

COMMENT ON COLUMN post.p_end IS '공연종료일';

COMMENT ON COLUMN post.p_img IS '공연이미지';

COMMENT ON COLUMN post.live_url IS '라이브주소';

COMMENT ON COLUMN post.address IS '주소';

COMMENT ON COLUMN post.hit IS '조회수';

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

/* 카테고리 */
CREATE TABLE category (
	category_no NUMBER NOT NULL, /* 카테고리(번호) */
	user_no NUMBER, /* 회원번호 */
	category_type CHAR(1), /* 카테고리(분류) */
	category_name VARCHAR2(20) /* 카테고리명 */
);

COMMENT ON TABLE category IS '카테고리';

COMMENT ON COLUMN category.category_no IS '카테고리(번호)';

COMMENT ON COLUMN category.user_no IS '회원번호';

COMMENT ON COLUMN category.category_type IS '카테고리(분류)';

COMMENT ON COLUMN category.category_name IS '카테고리명';

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

/* 공연장 */
CREATE TABLE stage (
	stage_no NUMBER NOT NULL, /* 공연장번호 */
	user_no NUMBER, /* 회원번호 */
	stage_name VARCHAR2(50), /* 장소명 */
	rain_progress CHAR(1), /* 우천시 진행 */
	stage_light CHAR(1), /* 무대조명 */
	parking CHAR(1) /* 주차 */
);

COMMENT ON TABLE stage IS '공연장';

COMMENT ON COLUMN stage.stage_no IS '공연장번호';

COMMENT ON COLUMN stage.user_no IS '회원번호';

COMMENT ON COLUMN stage.stage_name IS '장소명';

COMMENT ON COLUMN stage.rain_progress IS '우천시 진행';

COMMENT ON COLUMN stage.stage_light IS '무대조명';

COMMENT ON COLUMN stage.parking IS '주차';

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

/* 팬되기 */
CREATE TABLE fan (
	fan_no NUMBER NOT NULL, /* 팬되기 일련번호 */
	user_no NUMBER NOT NULL, /* 회원번호 */
	artist_no NUMBER /* 아티스트번호 */
);

COMMENT ON TABLE fan IS '팬되기';

COMMENT ON COLUMN fan.fan_no IS '팬되기 일련번호';

COMMENT ON COLUMN fan.user_no IS '회원번호';

COMMENT ON COLUMN fan.artist_no IS '아티스트번호';

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

/* 공연시간 */
CREATE TABLE buskingTime (
	time_no NUMBER NOT NULL, /* 시간번호 */
	date_no NUMBER, /* 날짜번호 */
	start_time varchar2(50), /* 시작시간 */
	end_time varchar2(50) /* 종료시간 */
);

COMMENT ON TABLE buskingTime IS '공연시간';

COMMENT ON COLUMN buskingTime.time_no IS '시간번호';

COMMENT ON COLUMN buskingTime.date_no IS '날짜번호';

COMMENT ON COLUMN buskingTime.start_time IS '시작시간';

COMMENT ON COLUMN buskingTime.end_time IS '종료시간';

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

/* 버스킹신청 */
CREATE TABLE buskingApp (
	apply_no NUMBER NOT NULL, /* 신청번호 */
	user_no NUMBER, /* 회원번호 */
	time_no NUMBER, /* 시간번호 */
	user_info VARCHAR2(100), /* 상세정보 */
	apply_date DATE, /* 신청일 */
	status CHAR(1) /* 상태 */
);

COMMENT ON TABLE buskingApp IS '버스킹신청';

COMMENT ON COLUMN buskingApp.apply_no IS '신청번호';

COMMENT ON COLUMN buskingApp.user_no IS '회원번호';

COMMENT ON COLUMN buskingApp.time_no IS '시간번호';

COMMENT ON COLUMN buskingApp.user_info IS '상세정보';

COMMENT ON COLUMN buskingApp.apply_date IS '신청일';

COMMENT ON COLUMN buskingApp.status IS '상태';

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

/* 좋아요 */
CREATE TABLE likes (
	likes_no NUMBER NOT NULL, /* 좋어요번호 */
	user_no NUMBER, /* 회원번호 */
	artist_no NUMBER, /* 회원번호(아티스트) */
	regdate DATE /* 날짜 */
);

COMMENT ON TABLE likes IS '좋아요';

COMMENT ON COLUMN likes.likes_no IS '좋어요번호';

COMMENT ON COLUMN likes.user_no IS '회원번호';

COMMENT ON COLUMN likes.artist_no IS '회원번호(아티스트)';

COMMENT ON COLUMN likes.regdate IS '날짜';

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

/* 이력사항 */
CREATE TABLE resume (
	resume_no NUMBER NOT NULL, /* 이력번호 */
	user_no NUMBER, /* 회원번호 */
	resume_content VARCHAR2(500) /* 이력사항 */
);

COMMENT ON TABLE resume IS '이력사항';

COMMENT ON COLUMN resume.resume_no IS '이력번호';

COMMENT ON COLUMN resume.user_no IS '회원번호';

COMMENT ON COLUMN resume.resume_content IS '이력사항';

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
		);

ALTER TABLE buskingDate
	ADD
		CONSTRAINT FK_stage_TO_buskingDate
		FOREIGN KEY (
			stage_no
		)
		REFERENCES stage (
			stage_no
		);

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
		);

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
		)
        ON DELETE CASCADE; --부모 테이블의 PK 삭제시 연결된 값 삭제

ALTER TABLE buskingApp
	ADD
		CONSTRAINT FK_buskingTime_TO_buskingApp
		FOREIGN KEY (
			time_no
		)
		REFERENCES buskingTime (
			time_no
		);

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

drop function get_seq;

CREATE FUNCTION get_seq RETURN NUMBER IS
BEGIN
  RETURN seq_resume_no.nextval;
END;