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

/* 공지사항 */
DROP TABLE ccnotice
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

/* 고객-공지 */
drop sequence seq_ccnotice_no;

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

create sequence seq_ccnotice_no
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
	ranking_score NUMBER AS (fan * 0.3 + likes * 0.7) /* 아티스트 점수 */
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
	i_url VARCHAR2(100), /* 인스타주소 */
	hit NUMBER /* 방문수 */
);

COMMENT ON TABLE blog IS '블로그';

COMMENT ON COLUMN blog.user_no IS '회원번호';

COMMENT ON COLUMN blog.intro IS '자기소개';

COMMENT ON COLUMN blog.banner IS '대문이미지';

COMMENT ON COLUMN blog.y_url IS '유튜브주소';

COMMENT ON COLUMN blog.f_url IS '페이스북주소';

COMMENT ON COLUMN blog.i_url IS '인스타주소';

COMMENT ON COLUMN blog.hit IS '방문수';

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
	start_time VARCHAR2(50), /* 시작시간 */
	end_time VARCHAR2(50) /* 종료시간 */
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
	user_no NUMBER NOT NULL, /* 회원번호 */
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

/* 공지사항 */
CREATE TABLE ccnotice (
	notice_no NUMBER NOT NULL, /* 공지번호 */
	user_no NUMBER, /* 회원번호 */
	title VARCHAR2(1000), /* 제목 */
	content VARCHAR2(3000), /* 내용 */
	reg_date DATE, /* 작성일 */
	hit NUMBER /* 조회수 */
);

COMMENT ON TABLE ccnotice IS '공지사항';

COMMENT ON COLUMN ccnotice.notice_no IS '공지번호';

COMMENT ON COLUMN ccnotice.user_no IS '회원번호';

COMMENT ON COLUMN ccnotice.title IS '제목';

COMMENT ON COLUMN ccnotice.content IS '내용';

COMMENT ON COLUMN ccnotice.reg_date IS '작성일';

COMMENT ON COLUMN ccnotice.hit IS '조회수';

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

--///////////////////////////테이블 초기화//////////////////////////////

--Users(총 26명)
--관리자
insert into users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) values(0,'admin','1234','admin@naver.com','관리자',null,'관리자','010-1111-1111','male','1998-11-12','1','트랩','0',0,0,sysdate,'2','2');

--김덕배씨 회원가입(제휴사1)
insert into users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) values(seq_user_no.nextval,'1234','1234','1234@naver.com','김덕배','101.PNG','김덕배','010-1111-1111','male','1998-11-12','3','트랩','0',0,0,sysdate,'2','2');
insert into users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) values(seq_user_no.nextval,'4321','4321','4321@naver.com','김창수','102.PNG',null,null,null,null,null,null,null,null,null,null,'1','2');
insert into users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) values(seq_user_no.nextval,'1111','1111','1111@naver.com','박수현','103.PNG',null,null,null,null,null,null,null,null,null,null,'1','2');
insert into users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) values(seq_user_no.nextval,'1112','1112','1112@naver.com','고라파덕','104.PNG',null,null,null,null,null,null,null,null,null,null,'1','2');
insert into users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) values(seq_user_no.nextval,'1113','1113','1113@naver.com','비에고','105.PNG',null,null,null,null,null,null,null,null,null,null,'1','2');
insert into users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) values(seq_user_no.nextval,'1114','1114','1114@naver.com','아칼리','106.PNG',null,null,null,null,null,null,null,null,null,null,'1','2');

--아티스트들 생성
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'busker', 'busker123', 'busker@naver.com', '장범준', '10.jpg', '장범준', '010-1204-0235', 'male', '1989-05-16', '1', '인디밴드', '0', 457, 283, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'bbb', '1234', 'bbb@naver.com', '워너비', '1.PNG', '홍길동', '010-0000-0000', 'male', '20000101', '1', '솔로', '1', 10, 40, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'ccc', '1234', 'ccc@naver.com', '박서준', '8.PNG', '박서준', '010-1234-5000', 'male', '19970216', '1', '솔로', '1', 1547, 567, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'ddd', '1234', 'ddd@naver.com', '제니', '52.PNG', '김제니', '010-9978-0345', 'female', '19960520', '2', '솔로가수', '1', 1243, 678, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'eee', '1234', 'eee@naver.com', '이여름', '53.PNG', '이여름', '010-6720-0080', 'female', '19981109', '5', '솔로', '1', 1184, 672, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'fff', '1234', 'fff@naver.com', '김동률', '41.PNG', '김동률', '010-2998-0000', 'male', '20000101', '1', '솔로', '1', 67, 15, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'ggg', '1234', 'ggg@naver.com', 'ROSE', '20.PNG', '박채영', '010-3212-1065', 'female', '19960211', '4', 'KPOP', '1', 1351, 567, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'hhh', '1234', 'hhh@naver.com', '김현우', '13.PNG', '김현우', '010-1343-6674', 'male', '19950616', '1', '솔로', '1', 40, 18, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'iii', '1234', 'iii@naver.com', '정국', '9.PNG', '전정국', '010-7756-3490', 'male', '19970905', '2', '솔로', '0', 32, 30, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'jjj', '1234', 'jjj@naver.com', '박혜원', '43.PNG', '박혜원', '010-3662-7730', null, '20020320', '5', '통기타솔로', '0', 14, 10, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'kkk', '1234', 'kkk@naver.com', '양요섭', '48.PNG', '양요섭', '010-2723-4377', null, '19960129', '1', '발라드가수', '0', 1427, 789, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'lll', '1234', 'lll@naver.com', 'TWICE', '44.PNG', '김나연', '010-5512-8530', 'female', '19961209', '3', '솔로', '0', 1358, 985, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'mmm', '1234', 'mmm@naver.com', '이무진', '17.PNG', '이무진', '010-9096-1137', 'male', '19991020', '6', '카드마술', '0', 26, 20, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'nnn', '1234', 'nnn@naver.com', '사나', '16.PNG', '박사나', '010-3677-8989', 'female', '20020309', '2', '솔로', '0', 15, 10, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'ooo', '1234', 'ooo@naver.com', '김선호', '4.PNG', '김선호', '010-3677-8989', 'male', '20010628', '4', '솔로', '0', 1587, 875, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'zzz', '1234', 'zzz@naver.com', '김동호', '6.PNG', '김동호', '010-2998-0001', 'male', '20000101', '1', '솔로', '0', 1622, 477, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'PPP', '1234', 'PPP@naver.com', 'ICON', '49.PNG', '박정진', '010-5656-3788', 'male', '19950326', '3', '힙합', '0', 1466, 913, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'qqq', '1234', 'qqq@naver.com', '이제훈', '38.PNG', '이제훈', '010-7749-0881', 'male', '19980419', '5', '베이스', '0', 22, 26, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'rrr', '1234', 'rrr@naver.com', '홀리뱅', '14.PNG', '홀리뱅', '010-2280-1445', 'female', '19940513', '6', '행위예술', '0', 1246, 570, sysdate, '2', '1');
insert INTO users(user_no, id, password, email, nickname, user_img, name, hp, gender, birthday, genre, genre_type, live, fan, likes, artist_regdate, user_type, company_type) VALUES (seq_user_no.nextval, 'sss', '1234', 'sss@naver.com', '미노이', '11.PNG', '이민영', '010-0007-7654', 'female', '19961124', '4', '알앤비', '0', 33, 10, sysdate, '2', '1');

--블로그 생성
insert into blog values(1, '안녕하세요 김덕배의 블로그에 오신것을 환영합니다.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(7, '안녕하세요. 장범준의 블로그에 오신 것을 환영합니다.', null, 'https://www.youtube.com/channel/UCxd9m2kFCFN1nIWB8ZOscqg', 'https://www.facebook.com/', 'https://www.instagram.com/', 3945);
insert into blog values(8, '안녕하세요 워너비의 블로그에 오신것을 환영합니다.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(9, '안녕하세요 박서준의 블로그에 오신것을 환영합니다.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(10, '안녕하세요 재니의 블로그에 오신것을 환영합니다.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(11, '안녕하세요 이여름의 블로그에 오신것을 환영합니다.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(12, '안녕하세요 김동률의 블로그에 오신것을 환영합니다.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(13, '안녕하세요 ROSE의 블로그에 오신것을 환영합니다.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(14, '안녕하세요 김현우의 블로그에 오신것을 환영합니다.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(15, '안녕하세요 정국의 블로그에 오신것을 환영합니다.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(16, '안녕하세요 박혜원의 블로그에 오신것을 환영합니다.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(17, '안녕하세요 양요섭의 블로그에 오신것을 환영합니다.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(18, '안녕하세요 TWICE의 블로그에 오신것을 환영합니다.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(19, '안녕하세요 이무진의 블로그에 오신것을 환영합니다.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(20, '안녕하세요 사나의 블로그에 오신것을 환영합니다.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(21, '안녕하세요 김선호의 블로그에 오신것을 환영합니다.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(22, '안녕하세요 김동호의 블로그에 오신것을 환영합니다.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(23, '안녕하세요 ICON의 블로그에 오신것을 환영합니다.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(24, '안녕하세요 이제훈의 블로그에 오신것을 환영합니다.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(25, '안녕하세요 홀리뱅(HOLLYBANG)의 블로그에 오신것을 환영합니다.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);
insert into blog values(26, '안녕하세요 미노이(MENOI)의 블로그에 오신것을 환영합니다.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 0);


--카테고리
insert into category values(seq_cate_no.nextval, 1, 1, '공지사항');
insert into category values(seq_cate_no.nextval, 1, 2, '타임라인');
insert into category values(seq_cate_no.nextval, 1, 3, '갤러리');
insert into category values(seq_cate_no.nextval, 1, 4, '방명록');
insert into category values(seq_cate_no.nextval, 7, 1, '공지사항');
insert into category values(seq_cate_no.nextval, 7, 2, '타임라인');
insert into category values(seq_cate_no.nextval, 7, 3, '갤러리');
insert into category values(seq_cate_no.nextval, 7, 4, '방명록');
insert into category values(seq_cate_no.nextval, 8, 1, '공지사항');
insert into category values(seq_cate_no.nextval, 8, 2, '타임라인');
insert into category values(seq_cate_no.nextval, 8, 3, '갤러리');
insert into category values(seq_cate_no.nextval, 8, 4, '방명록');
insert into category values(seq_cate_no.nextval, 9, 1, '공지사항');
insert into category values(seq_cate_no.nextval, 9, 2, '타임라인');
insert into category values(seq_cate_no.nextval, 9, 3, '갤러리');
insert into category values(seq_cate_no.nextval, 9, 4, '방명록');
insert into category values(seq_cate_no.nextval, 10, 1, '공지사항');
insert into category values(seq_cate_no.nextval, 10, 2, '타임라인');
insert into category values(seq_cate_no.nextval, 10, 3, '갤러리');
insert into category values(seq_cate_no.nextval, 10, 4, '방명록');
insert into category values(seq_cate_no.nextval, 11, 1, '공지사항');
insert into category values(seq_cate_no.nextval, 11, 2, '타임라인');
insert into category values(seq_cate_no.nextval, 11, 3, '갤러리');
insert into category values(seq_cate_no.nextval, 11, 4, '방명록');
insert into category values(seq_cate_no.nextval, 12, 1, '공지사항');
insert into category values(seq_cate_no.nextval, 12, 2, '타임라인');
insert into category values(seq_cate_no.nextval, 12, 3, '갤러리');
insert into category values(seq_cate_no.nextval, 12, 4, '방명록');
insert into category values(seq_cate_no.nextval, 13, 1, '공지사항');
insert into category values(seq_cate_no.nextval, 13, 2, '타임라인');
insert into category values(seq_cate_no.nextval, 13, 3, '갤러리');
insert into category values(seq_cate_no.nextval, 13, 4, '방명록');
insert into category values(seq_cate_no.nextval, 14, 1, '공지사항');
insert into category values(seq_cate_no.nextval, 14, 2, '타임라인');
insert into category values(seq_cate_no.nextval, 14, 3, '갤러리');
insert into category values(seq_cate_no.nextval, 14, 4, '방명록');
insert into category values(seq_cate_no.nextval, 15, 1, '공지사항');
insert into category values(seq_cate_no.nextval, 15, 2, '타임라인');
insert into category values(seq_cate_no.nextval, 15, 3, '갤러리');
insert into category values(seq_cate_no.nextval, 15, 4, '방명록');
insert into category values(seq_cate_no.nextval, 16, 1, '공지사항');
insert into category values(seq_cate_no.nextval, 16, 2, '타임라인');
insert into category values(seq_cate_no.nextval, 16, 3, '갤러리');
insert into category values(seq_cate_no.nextval, 16, 4, '방명록');
insert into category values(seq_cate_no.nextval, 17, 1, '공지사항');
insert into category values(seq_cate_no.nextval, 17, 2, '타임라인');
insert into category values(seq_cate_no.nextval, 17, 3, '갤러리');
insert into category values(seq_cate_no.nextval, 17, 4, '방명록');
insert into category values(seq_cate_no.nextval, 18, 1, '공지사항');
insert into category values(seq_cate_no.nextval, 18, 2, '타임라인');
insert into category values(seq_cate_no.nextval, 18, 3, '갤러리');
insert into category values(seq_cate_no.nextval, 18, 4, '방명록');
insert into category values(seq_cate_no.nextval, 19, 1, '공지사항');
insert into category values(seq_cate_no.nextval, 19, 2, '타임라인');
insert into category values(seq_cate_no.nextval, 19, 3, '갤러리');
insert into category values(seq_cate_no.nextval, 19, 4, '방명록');
insert into category values(seq_cate_no.nextval, 20, 1, '공지사항');
insert into category values(seq_cate_no.nextval, 20, 2, '타임라인');
insert into category values(seq_cate_no.nextval, 20, 3, '갤러리');
insert into category values(seq_cate_no.nextval, 20, 4, '방명록');
insert into category values(seq_cate_no.nextval, 21, 1, '공지사항');
insert into category values(seq_cate_no.nextval, 21, 2, '타임라인');
insert into category values(seq_cate_no.nextval, 21, 3, '갤러리');
insert into category values(seq_cate_no.nextval, 21, 4, '방명록');
insert into category values(seq_cate_no.nextval, 22, 1, '공지사항');
insert into category values(seq_cate_no.nextval, 22, 2, '타임라인');
insert into category values(seq_cate_no.nextval, 22, 3, '갤러리');
insert into category values(seq_cate_no.nextval, 22, 4, '방명록');
insert into category values(seq_cate_no.nextval, 23, 1, '공지사항');
insert into category values(seq_cate_no.nextval, 23, 2, '타임라인');
insert into category values(seq_cate_no.nextval, 23, 3, '갤러리');
insert into category values(seq_cate_no.nextval, 23, 4, '방명록');
insert into category values(seq_cate_no.nextval, 24, 1, '공지사항');
insert into category values(seq_cate_no.nextval, 24, 2, '타임라인');
insert into category values(seq_cate_no.nextval, 24, 3, '갤러리');
insert into category values(seq_cate_no.nextval, 24, 4, '방명록');
insert into category values(seq_cate_no.nextval, 25, 1, '공지사항');
insert into category values(seq_cate_no.nextval, 25, 2, '타임라인');
insert into category values(seq_cate_no.nextval, 25, 3, '갤러리');
insert into category values(seq_cate_no.nextval, 25, 4, '방명록');
insert into category values(seq_cate_no.nextval, 26, 1, '공지사항');
insert into category values(seq_cate_no.nextval, 26, 2, '타임라인');
insert into category values(seq_cate_no.nextval, 26, 3, '갤러리');
insert into category values(seq_cate_no.nextval, 26, 4, '방명록');

--이력사항
insert into resume values(seq_resume_no.nextval, 7, '2000년 그래미 어워즈 수상');
insert into resume values(seq_resume_no.nextval, 7, '2014 대한민국 연예예술상');
insert into resume values(seq_resume_no.nextval, 7, '2015 골든디스크 어워즈');
insert into resume values(seq_resume_no.nextval, 7, '2015 대한민국 연예대상');

--공지사항
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 5, 7, '아르코예술극장 개관 40주년 기념 아카이브 프로젝트 <밤의 플랫폼>', 'Content Testing 123 내용 테스팅 123', sysdate, 0);

--Post (timeline)
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 6, 7, '오랜만에 보네요!!', NULL, NULL, 33.451486, 126.571199, TO_DATE('2021-10-14 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'w9JE8b-84UI', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 6, 7, '지금 방송 중입니다.', NULL, NULL, 33.451549, 126.569021, TO_DATE('2021-10-15 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'L9AkhIvINKc', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 6, 7, '붕어빵이 먹고싶네요', NULL, NULL, 33.453160, 126.569815, TO_DATE('2021-10-16 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'RRwfLIvyspw', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 6, 7, '반갑습니다.', NULL, NULL, 33.454189, 126.571843, TO_DATE('2021-10-17 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'Dz5NUfDE5zQ', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 6, 7, '안녕하세요. 장범준입니다.', NULL, NULL, 33.454977, 126.569000, TO_DATE('2021-10-18 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'IBOGW1kuYC0', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 6, 7, '신곡이 나왔습니다.', NULL, NULL, 33.453187, 126.566779, TO_DATE('2021-10-19 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'EBTpCCu2_yw', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 6, 7, '아트박스 앞에서 봐요!', NULL, NULL, 33.449633, 126.570597, TO_DATE('2021-10-20 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'pnaQ9CbE6P0', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 6, 7, '홍대에 장범준이 떴다!', NULL, NULL, 33.448344, 126.573828, TO_DATE('2021-10-21 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'yj69PMgnF64', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 6, 7, '옷 따뜻하게 입어요!', NULL, NULL, 33.451486, 126.571199, TO_DATE('2021-10-22 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'oAS7kmob78s', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 6, 7, '날씨가 많이 추워졌죠?', NULL, NULL, 33.451549, 126.569021, TO_DATE('2021-10-23 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'eCyDlclVFSw', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 10, 8, '안녕하세요', NULL, NULL, 37.49809780929831, 127.02651378673552, TO_DATE('2021-09-01 11:06:11','YYYY-MM-DD HH24:MI:SS'), NULL, '10001.png', 'nQoRw_5ning', '강남역 10번 출구', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 14, 9, '안녕하세요', NULL, NULL, 37.49730915211319, 127.02778535605314, TO_DATE('2021-09-01 12:00:11','YYYY-MM-DD HH24:MI:SS'), NULL, '10008.jpg', 'nQoRw_5ning', '스타벅스 앞', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 18, 10, '안녕하세요', NULL, NULL, 37.49630705835774, 127.02798383651613, TO_DATE('2021-09-01 13:31:11','YYYY-MM-DD HH24:MI:SS'), NULL, '10002.jpg', 'nQoRw_5ning', 'ABC마트 앞', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 22, 11, '안녕하세요', NULL, NULL, 37.49792471732428, 127.02933711240016, TO_DATE('2021-09-01 14:58:11','YYYY-MM-DD HH24:MI:SS'), NULL, '10003.jpg', 'nQoRw_5ning', '진우빌딩', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 26, 12, '안녕하세요', NULL, NULL, 37.49874069129444, 127.02991451011066, TO_DATE('2021-09-01 16:41:11','YYYY-MM-DD HH24:MI:SS'), NULL, '10004.jpg', 'nQoRw_5ning', '파고다타워 13층', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 30, 13, '안녕하세요', NULL, NULL, 37.499026995837525, 127.02958972389848, TO_DATE('2021-09-01 17:45:11','YYYY-MM-DD HH24:MI:SS'), NULL, '10005.jpg', 'nQoRw_5ning', '예스 강남점', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 34, 14, '안녕하세요', NULL, NULL, 37.49892678937231, 127.02847101583437, TO_DATE('2021-09-01 21:29:11','YYYY-MM-DD HH24:MI:SS'), NULL, '10006.jpg', 'nQoRw_5ning', '라인프렌즈', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 38, 15, '안녕하세요', NULL, NULL, 37.49938487497267, 127.02747861351945, TO_DATE('2021-09-01 23:05:11','YYYY-MM-DD HH24:MI:SS'), NULL, '10007.jpg', 'nQoRw_5ning', '메가박스 7층', NULL);

--갤러리
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, 'Title 제목 갤러리 테스팅: 2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', sysdate, null, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 7, 7, '2021-10-11 공연 사진.', 'Content Testing 123 내용 테스팅 123', TO_DATE('2021-10-21 10:26:11','YYYY-MM-DD HH24:MI:SS'), '1000.png', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 7, 7, '2021-10-12 공연 사진.', 'Content Testing 123 내용 테스팅 123', TO_DATE('2021-10-22 10:26:11','YYYY-MM-DD HH24:MI:SS'), '1001.png', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 7, 7, '2021-10-13 공연 사진.', 'Content Testing 123 내용 테스팅 123', TO_DATE('2021-10-23 10:26:11','YYYY-MM-DD HH24:MI:SS'), '1002.png', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 7, 7, '2021-10-14 공연 사진.', 'Content Testing 123 내용 테스팅 123', TO_DATE('2021-10-24 10:26:11','YYYY-MM-DD HH24:MI:SS'), '1003.png', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 7, 7, '2021-10-15 공연 사진.', 'Content Testing 123 내용 테스팅 123', TO_DATE('2021-10-25 10:26:11','YYYY-MM-DD HH24:MI:SS'), '1004.png', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 7, 7, '2021-10-16 공연 사진.', 'Content Testing 123 내용 테스팅 123', TO_DATE('2021-10-26 10:26:11','YYYY-MM-DD HH24:MI:SS'), '1005.png', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 7, 7, '2021-10-17 공연 사진.', 'Content Testing 123 내용 테스팅 123', TO_DATE('2021-10-27 10:26:11','YYYY-MM-DD HH24:MI:SS'), '1006.png', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 7, 7, '2021-10-18 공연 사진.', 'Content Testing 123 내용 테스팅 123', TO_DATE('2021-10-28 10:26:11','YYYY-MM-DD HH24:MI:SS'), '1007.png', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 7, 7, '2021-10-19 공연 사진.', 'Content Testing 123 내용 테스팅 123', TO_DATE('2021-10-29 10:26:11','YYYY-MM-DD HH24:MI:SS'), '1000.png', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 7, 7, '2021-10-20 공연 사진.', 'Content Testing 123 내용 테스팅 123', TO_DATE('2021-10-30 10:26:11','YYYY-MM-DD HH24:MI:SS'), '1001.png', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 7, 7, '2021-10-21 공연 사진.', 'Content Testing 123 내용 테스팅 123', TO_DATE('2021-10-31 10:26:11','YYYY-MM-DD HH24:MI:SS'), '1002.png', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 7, 7, '2021-10-22 공연 사진.', 'Content Testing 123 내용 테스팅 123', TO_DATE('2021-11-01 10:26:11','YYYY-MM-DD HH24:MI:SS'), '1003.png', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, '안녕하세요~~', 'Content Testing 123 내용 테스팅 123', TO_DATE('2021-11-05 10:26:11','YYYY-MM-DD HH24:MI:SS'), '2000.jpg', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, '오늘 정말 춥죠?', 'Content Testing 123 내용 테스팅 123', TO_DATE('2021-11-06 10:26:11','YYYY-MM-DD HH24:MI:SS'), '2001.jpg', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, '옷 따뜻하게 입고 오세요!', 'Content Testing 123 내용 테스팅 123', TO_DATE('2021-11-07 10:26:11','YYYY-MM-DD HH24:MI:SS'), '2002.jpg', 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, p_img, hit) VALUES (seq_post_no.NEXTVAL, 3, 1, '저녁 먹었어요?', 'Content Testing 123 내용 테스팅 123', TO_DATE('2021-11-08 10:26:11','YYYY-MM-DD HH24:MI:SS'), '2003.jpg', 0);

--방명록
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 1, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 2, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 3, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 4, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 5, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 6, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 8, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 9, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 10, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 11, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 12, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 13, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 14, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 15, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 16, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 1, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 2, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 3, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 4, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 5, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 6, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 8, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 9, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 10, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 11, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 12, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 13, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 14, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 15, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 16, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 1, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 2, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 3, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 4, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 5, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 6, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 8, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 9, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 10, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 11, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 12, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 13, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 14, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 15, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 16, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 1, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 2, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 3, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 4, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 5, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 6, '안녕하세요, 장범준씨 슈퍼스타K 제작진입니다.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 8, 'Hello, Nr.Jang!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 9, '다들 좋아요랑 팬되기 눌러주기?!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 10, '범준이 오빠!! 사랑해요!!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 11, '범준이 형 너무 잘생겼어요!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 12, '신청곡으로 "나야나" 불러주세요!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 13, '마지막에 부른 노래 알려주세요!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 14, '다음 공연은 어디서 하나요?', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 15, '장범준님 공연 재밌게 봤습니다.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 8, 16, '장범준님 응원합니다!!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);



-- 제휴사 등록
insert into company values(1,'101.PNG','신촌 CGV','서울 서대문구 신촌로 129 아트레온','1544-1122','김덕배','104-81-45690',37.49879182639053, 127.02664971809797);
insert into company values(2,'102.PNG','신라호텔','서울특별시 중구 동호로 249','02-2233-3131','김창덕','101-11-37840',37.497960743833886,127.0285145402949);
insert into company values(3,'103.PNG','스타벅스','서울특별시 강남구 강남대로 390','02-1111-1111','박수현','104-52-37620',37.5577797894265,127.00762909337426);
insert into company values(4,'104.PNG','시그니엘','서울특별시 송파구 올림픽로 300 롯데월드타워','02-2222-2222','고라파덕','137-98-32340',37.51319142112977,127.10195564589539);
insert into company values(5,'105.PNG','에버랜드','경기도 용인시 처인구 포곡읍 에버랜드로 199','02-3333-3333','비에고','199-99-99999',37.29355565476383,127.19979467916205);
insert into company values(6,'106.PNG','하이미디어','서울특별시 서초구 강남대로 405 통영빌딩','02-4444-4444','아칼리','127-445-30293',37.55649812100385,126.94032867686857);

--공연장 등록
insert into stage values(SEQ_STAGE_NO.nextval,1,'7층 스테이지','1','1','1');
insert into stage values(SEQ_STAGE_NO.nextval,1,'8층 카페','0','0','1');
insert into stage values(SEQ_STAGE_NO.nextval,1,'9층 옥상','1','0','0');
----------------------------------------------------
insert into stage values(SEQ_STAGE_NO.nextval,2,'B1층 아트홀','1','1','1');
insert into stage values(SEQ_STAGE_NO.nextval,2,'B2층 무궁화홀','0','0','1');
insert into stage values(SEQ_STAGE_NO.nextval,2,'B3층 테라스','1','0','1');

--공연 날짜
insert into buskingdate values(SEQ_DATE_NO.nextval,1,'2021-10-24','지리는 아티스트 구해요');
insert into buskingdate values(SEQ_DATE_NO.nextval,1,'2021-10-28','오지는 아티스트 구해요');
insert into buskingdate values(SEQ_DATE_NO.nextval,1,'2021-10-30','아티스트 지리는 구해요');
insert into buskingdate values(SEQ_DATE_NO.nextval,2,'2021-10-25','지리는 아티스트 구해요');
insert into buskingdate values(SEQ_DATE_NO.nextval,2,'2021-10-27','오지는 아티스트 구해요');
insert into buskingdate values(SEQ_DATE_NO.nextval,2,'2021-10-29','아티스트 지리는 구해요');
insert into buskingdate values(SEQ_DATE_NO.nextval,3,'2021-10-23','지리는 아티스트 구해요');
insert into buskingdate values(SEQ_DATE_NO.nextval,3,'2021-10-25','오지는 아티스트 구해요');
insert into buskingdate values(SEQ_DATE_NO.nextval,3,'2021-10-26','아티스트 지리는 구해요');
insert into buskingdate values(SEQ_DATE_NO.nextval,4,'2021-10-24','아이유 닮은 가수 구함');
insert into buskingdate values(SEQ_DATE_NO.nextval,4,'2021-10-28','쇼미더머니 2차 합격 이상만');
insert into buskingdate values(SEQ_DATE_NO.nextval,4,'2021-10-30','공연 경력있는 가수 우대');
insert into buskingdate values(SEQ_DATE_NO.nextval,5,'2021-10-25','코노 평균97점 이상만');
insert into buskingdate values(SEQ_DATE_NO.nextval,5,'2021-10-27','최소 4옥 레 올리시는분만');
insert into buskingdate values(SEQ_DATE_NO.nextval,5,'2021-10-29','빌보드차트 들어보신분');
insert into buskingdate values(SEQ_DATE_NO.nextval,6,'2021-10-23','몸만오시면 됩니다');
insert into buskingdate values(SEQ_DATE_NO.nextval,6,'2021-10-25','아이돌 댄스팀 구해요');
insert into buskingdate values(SEQ_DATE_NO.nextval,6,'2021-10-26','미스터 트롯 애청자만');

--공연 시간
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

--버스킹 신청
insert into buskingapp values(SEQ_APP_NO.nextval,1,19,'잘부탁드립니다 오네가이시마스',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,1,20,'가요대상 3회수상자입니다 데려가세요',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,1,23,'전국노래자랑 100회이상 시청',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,1,26,'아이유랑 이름이 비슷합니다',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,1,29,'이사람은 무료로 노래해드립니다',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,1,32,'미스터 트롯 오디션 3연속 탈락',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,7,1,'가요대상 3회수상자입니다 데려가세요',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,8,1,'전국노래자랑 100회이상 시청',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,9,2,'아이유랑 이름이 비슷합니다',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,10,3,'이사람은 무료로 노래해드립니다',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,11,4,'노래 기똥차게 잘합니다 불러만주십쇼',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,12,4,'미스터 트롯 오디션 3연속 탈락',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,13,6,'잘부탁드립니다 오네가이시마스',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,14,7,'가요대상 3회수상자입니다 데려가세요',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,15,8,'전국노래자랑 100회이상 시청',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,16,9,'아이유랑 이름이 비슷합니다',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,17,9,'이사람은 무료로 노래해드립니다',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,18,11,'노래 기똥차게 잘합니다 불러만주십쇼',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,19,12,'미스터 트롯 오디션 3연속 탈락',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,20,12,'안뽑으면 3년동안 삼대가 재수없음',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,21,12,'이사람은 무료로 노래해드립니다',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,22,13,'아이유랑 이름이 비슷합니다',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,23,14,'전국노래자랑 100회이상 시청',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,24,15,'노래 기똥차게 잘합니다 불러만주십쇼',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,25,16,'미스터 트롯 오디션 3연속 탈락',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,26,17,'잘부탁드립니다 오네가이시마스',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,13,18,'맥도날드 BTS세트 먹어봄',sysdate,'3');

--고객센터 공지사항
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[버스커라운드] 공지사항 테스팅: 서버 오류.', '<p>안녕하세요 <strong>버스커라운드</strong>입니다.</p><br><p></p><p>최근 메일을 통해 ‘버스커라운드 이용권 구매 안내’ 제목으로 ‘멜론상품이용권’이 결제되었다는 내용과 함께 결제하지 않으셨다면 상담채널로 상담요청 해달라는 메일이 발송되고 있어 이에 각별한 주의를 부탁드립니다.<br><br></p><p>또한 버스커라운드는 아래 상담채널 외에 다른 상담채널은 별도 운영하지 않고 있으니 확인되지 않은 URL 클릭, 상담 진행으로 피해가 발생하지 않도록 유의하시기 바랍니다.<br><br></p><p></p><p>- 고객센터 : 1566-7777(유료/평일 09:00~18:00)<br><br></p><p>- 모바일 앱 : 메뉴; 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p>- PC 웹 : www.buskeround.com 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p></p><p>감사합니다.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[버스커라운드] 공지사항 테스팅: 서버 오류.', '<p>안녕하세요 <strong>버스커라운드</strong>입니다.</p><br><p></p><p>최근 메일을 통해 ‘버스커라운드 이용권 구매 안내’ 제목으로 ‘멜론상품이용권’이 결제되었다는 내용과 함께 결제하지 않으셨다면 상담채널로 상담요청 해달라는 메일이 발송되고 있어 이에 각별한 주의를 부탁드립니다.<br><br></p><p>또한 버스커라운드는 아래 상담채널 외에 다른 상담채널은 별도 운영하지 않고 있으니 확인되지 않은 URL 클릭, 상담 진행으로 피해가 발생하지 않도록 유의하시기 바랍니다.<br><br></p><p></p><p>- 고객센터 : 1566-7777(유료/평일 09:00~18:00)<br><br></p><p>- 모바일 앱 : 메뉴; 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p>- PC 웹 : www.buskeround.com 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p></p><p>감사합니다.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[버스커라운드] 공지사항 테스팅: 서버 오류.', '<p>안녕하세요 <strong>버스커라운드</strong>입니다.</p><br><p></p><p>최근 메일을 통해 ‘버스커라운드 이용권 구매 안내’ 제목으로 ‘멜론상품이용권’이 결제되었다는 내용과 함께 결제하지 않으셨다면 상담채널로 상담요청 해달라는 메일이 발송되고 있어 이에 각별한 주의를 부탁드립니다.<br><br></p><p>또한 버스커라운드는 아래 상담채널 외에 다른 상담채널은 별도 운영하지 않고 있으니 확인되지 않은 URL 클릭, 상담 진행으로 피해가 발생하지 않도록 유의하시기 바랍니다.<br><br></p><p></p><p>- 고객센터 : 1566-7777(유료/평일 09:00~18:00)<br><br></p><p>- 모바일 앱 : 메뉴; 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p>- PC 웹 : www.buskeround.com 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p></p><p>감사합니다.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[버스커라운드] 공지사항 테스팅: 서버 오류.', '<p>안녕하세요 <strong>버스커라운드</strong>입니다.</p><br><p></p><p>최근 메일을 통해 ‘버스커라운드 이용권 구매 안내’ 제목으로 ‘멜론상품이용권’이 결제되었다는 내용과 함께 결제하지 않으셨다면 상담채널로 상담요청 해달라는 메일이 발송되고 있어 이에 각별한 주의를 부탁드립니다.<br><br></p><p>또한 버스커라운드는 아래 상담채널 외에 다른 상담채널은 별도 운영하지 않고 있으니 확인되지 않은 URL 클릭, 상담 진행으로 피해가 발생하지 않도록 유의하시기 바랍니다.<br><br></p><p></p><p>- 고객센터 : 1566-7777(유료/평일 09:00~18:00)<br><br></p><p>- 모바일 앱 : 메뉴; 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p>- PC 웹 : www.buskeround.com 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p></p><p>감사합니다.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[버스커라운드] 공지사항 테스팅: 서버 오류.', '<p>안녕하세요 <strong>버스커라운드</strong>입니다.</p><br><p></p><p>최근 메일을 통해 ‘버스커라운드 이용권 구매 안내’ 제목으로 ‘멜론상품이용권’이 결제되었다는 내용과 함께 결제하지 않으셨다면 상담채널로 상담요청 해달라는 메일이 발송되고 있어 이에 각별한 주의를 부탁드립니다.<br><br></p><p>또한 버스커라운드는 아래 상담채널 외에 다른 상담채널은 별도 운영하지 않고 있으니 확인되지 않은 URL 클릭, 상담 진행으로 피해가 발생하지 않도록 유의하시기 바랍니다.<br><br></p><p></p><p>- 고객센터 : 1566-7777(유료/평일 09:00~18:00)<br><br></p><p>- 모바일 앱 : 메뉴; 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p>- PC 웹 : www.buskeround.com 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p></p><p>감사합니다.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[버스커라운드] 공지사항 테스팅: 서버 오류.', '<p>안녕하세요 <strong>버스커라운드</strong>입니다.</p><br><p></p><p>최근 메일을 통해 ‘버스커라운드 이용권 구매 안내’ 제목으로 ‘멜론상품이용권’이 결제되었다는 내용과 함께 결제하지 않으셨다면 상담채널로 상담요청 해달라는 메일이 발송되고 있어 이에 각별한 주의를 부탁드립니다.<br><br></p><p>또한 버스커라운드는 아래 상담채널 외에 다른 상담채널은 별도 운영하지 않고 있으니 확인되지 않은 URL 클릭, 상담 진행으로 피해가 발생하지 않도록 유의하시기 바랍니다.<br><br></p><p></p><p>- 고객센터 : 1566-7777(유료/평일 09:00~18:00)<br><br></p><p>- 모바일 앱 : 메뉴; 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p>- PC 웹 : www.buskeround.com 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p></p><p>감사합니다.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[버스커라운드] 공지사항 테스팅: 서버 오류.', '<p>안녕하세요 <strong>버스커라운드</strong>입니다.</p><br><p></p><p>최근 메일을 통해 ‘버스커라운드 이용권 구매 안내’ 제목으로 ‘멜론상품이용권’이 결제되었다는 내용과 함께 결제하지 않으셨다면 상담채널로 상담요청 해달라는 메일이 발송되고 있어 이에 각별한 주의를 부탁드립니다.<br><br></p><p>또한 버스커라운드는 아래 상담채널 외에 다른 상담채널은 별도 운영하지 않고 있으니 확인되지 않은 URL 클릭, 상담 진행으로 피해가 발생하지 않도록 유의하시기 바랍니다.<br><br></p><p></p><p>- 고객센터 : 1566-7777(유료/평일 09:00~18:00)<br><br></p><p>- 모바일 앱 : 메뉴; 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p>- PC 웹 : www.buskeround.com 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p></p><p>감사합니다.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[버스커라운드] 공지사항 테스팅: 서버 오류.', '<p>안녕하세요 <strong>버스커라운드</strong>입니다.</p><br><p></p><p>최근 메일을 통해 ‘버스커라운드 이용권 구매 안내’ 제목으로 ‘멜론상품이용권’이 결제되었다는 내용과 함께 결제하지 않으셨다면 상담채널로 상담요청 해달라는 메일이 발송되고 있어 이에 각별한 주의를 부탁드립니다.<br><br></p><p>또한 버스커라운드는 아래 상담채널 외에 다른 상담채널은 별도 운영하지 않고 있으니 확인되지 않은 URL 클릭, 상담 진행으로 피해가 발생하지 않도록 유의하시기 바랍니다.<br><br></p><p></p><p>- 고객센터 : 1566-7777(유료/평일 09:00~18:00)<br><br></p><p>- 모바일 앱 : 메뉴; 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p>- PC 웹 : www.buskeround.com 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p></p><p>감사합니다.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[버스커라운드] 공지사항 테스팅: 서버 오류.', '<p>안녕하세요 <strong>버스커라운드</strong>입니다.</p><br><p></p><p>최근 메일을 통해 ‘버스커라운드 이용권 구매 안내’ 제목으로 ‘멜론상품이용권’이 결제되었다는 내용과 함께 결제하지 않으셨다면 상담채널로 상담요청 해달라는 메일이 발송되고 있어 이에 각별한 주의를 부탁드립니다.<br><br></p><p>또한 버스커라운드는 아래 상담채널 외에 다른 상담채널은 별도 운영하지 않고 있으니 확인되지 않은 URL 클릭, 상담 진행으로 피해가 발생하지 않도록 유의하시기 바랍니다.<br><br></p><p></p><p>- 고객센터 : 1566-7777(유료/평일 09:00~18:00)<br><br></p><p>- 모바일 앱 : 메뉴; 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p>- PC 웹 : www.buskeround.com 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p></p><p>감사합니다.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[버스커라운드] 공지사항 테스팅: 서버 오류.', '<p>안녕하세요 <strong>버스커라운드</strong>입니다.</p><br><p></p><p>최근 메일을 통해 ‘버스커라운드 이용권 구매 안내’ 제목으로 ‘멜론상품이용권’이 결제되었다는 내용과 함께 결제하지 않으셨다면 상담채널로 상담요청 해달라는 메일이 발송되고 있어 이에 각별한 주의를 부탁드립니다.<br><br></p><p>또한 버스커라운드는 아래 상담채널 외에 다른 상담채널은 별도 운영하지 않고 있으니 확인되지 않은 URL 클릭, 상담 진행으로 피해가 발생하지 않도록 유의하시기 바랍니다.<br><br></p><p></p><p>- 고객센터 : 1566-7777(유료/평일 09:00~18:00)<br><br></p><p>- 모바일 앱 : 메뉴; 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p>- PC 웹 : www.buskeround.com 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p></p><p>감사합니다.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[버스커라운드] 공지사항 테스팅: 서버 오류.', '<p>안녕하세요 <strong>버스커라운드</strong>입니다.</p><br><p></p><p>최근 메일을 통해 ‘버스커라운드 이용권 구매 안내’ 제목으로 ‘멜론상품이용권’이 결제되었다는 내용과 함께 결제하지 않으셨다면 상담채널로 상담요청 해달라는 메일이 발송되고 있어 이에 각별한 주의를 부탁드립니다.<br><br></p><p>또한 버스커라운드는 아래 상담채널 외에 다른 상담채널은 별도 운영하지 않고 있으니 확인되지 않은 URL 클릭, 상담 진행으로 피해가 발생하지 않도록 유의하시기 바랍니다.<br><br></p><p></p><p>- 고객센터 : 1566-7777(유료/평일 09:00~18:00)<br><br></p><p>- 모바일 앱 : 메뉴; 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p>- PC 웹 : www.buskeround.com 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p></p><p>감사합니다.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[버스커라운드] 공지사항 테스팅: 서버 오류.', '<p>안녕하세요 <strong>버스커라운드</strong>입니다.</p><br><p></p><p>최근 메일을 통해 ‘버스커라운드 이용권 구매 안내’ 제목으로 ‘멜론상품이용권’이 결제되었다는 내용과 함께 결제하지 않으셨다면 상담채널로 상담요청 해달라는 메일이 발송되고 있어 이에 각별한 주의를 부탁드립니다.<br><br></p><p>또한 버스커라운드는 아래 상담채널 외에 다른 상담채널은 별도 운영하지 않고 있으니 확인되지 않은 URL 클릭, 상담 진행으로 피해가 발생하지 않도록 유의하시기 바랍니다.<br><br></p><p></p><p>- 고객센터 : 1566-7777(유료/평일 09:00~18:00)<br><br></p><p>- 모바일 앱 : 메뉴; 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p>- PC 웹 : www.buskeround.com 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p></p><p>감사합니다.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[버스커라운드] 공지사항 테스팅: 서버 오류.', '<p>안녕하세요 <strong>버스커라운드</strong>입니다.</p><br><p></p><p>최근 메일을 통해 ‘버스커라운드 이용권 구매 안내’ 제목으로 ‘멜론상품이용권’이 결제되었다는 내용과 함께 결제하지 않으셨다면 상담채널로 상담요청 해달라는 메일이 발송되고 있어 이에 각별한 주의를 부탁드립니다.<br><br></p><p>또한 버스커라운드는 아래 상담채널 외에 다른 상담채널은 별도 운영하지 않고 있으니 확인되지 않은 URL 클릭, 상담 진행으로 피해가 발생하지 않도록 유의하시기 바랍니다.<br><br></p><p></p><p>- 고객센터 : 1566-7777(유료/평일 09:00~18:00)<br><br></p><p>- 모바일 앱 : 메뉴; 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p>- PC 웹 : www.buskeround.com 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p></p><p>감사합니다.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[버스커라운드] 공지사항 테스팅: 서버 오류.', '<p>안녕하세요 <strong>버스커라운드</strong>입니다.</p><br><p></p><p>최근 메일을 통해 ‘버스커라운드 이용권 구매 안내’ 제목으로 ‘멜론상품이용권’이 결제되었다는 내용과 함께 결제하지 않으셨다면 상담채널로 상담요청 해달라는 메일이 발송되고 있어 이에 각별한 주의를 부탁드립니다.<br><br></p><p>또한 버스커라운드는 아래 상담채널 외에 다른 상담채널은 별도 운영하지 않고 있으니 확인되지 않은 URL 클릭, 상담 진행으로 피해가 발생하지 않도록 유의하시기 바랍니다.<br><br></p><p></p><p>- 고객센터 : 1566-7777(유료/평일 09:00~18:00)<br><br></p><p>- 모바일 앱 : 메뉴; 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p>- PC 웹 : www.buskeround.com 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p></p><p>감사합니다.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[버스커라운드] 공지사항 테스팅: 서버 오류.', '<p>안녕하세요 <strong>버스커라운드</strong>입니다.</p><br><p></p><p>최근 메일을 통해 ‘버스커라운드 이용권 구매 안내’ 제목으로 ‘멜론상품이용권’이 결제되었다는 내용과 함께 결제하지 않으셨다면 상담채널로 상담요청 해달라는 메일이 발송되고 있어 이에 각별한 주의를 부탁드립니다.<br><br></p><p>또한 버스커라운드는 아래 상담채널 외에 다른 상담채널은 별도 운영하지 않고 있으니 확인되지 않은 URL 클릭, 상담 진행으로 피해가 발생하지 않도록 유의하시기 바랍니다.<br><br></p><p></p><p>- 고객센터 : 1566-7777(유료/평일 09:00~18:00)<br><br></p><p>- 모바일 앱 : 메뉴; 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p>- PC 웹 : www.buskeround.com 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p></p><p>감사합니다.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[버스커라운드] 공지사항 테스팅: 서버 오류.', '<p>안녕하세요 <strong>버스커라운드</strong>입니다.</p><br><p></p><p>최근 메일을 통해 ‘버스커라운드 이용권 구매 안내’ 제목으로 ‘멜론상품이용권’이 결제되었다는 내용과 함께 결제하지 않으셨다면 상담채널로 상담요청 해달라는 메일이 발송되고 있어 이에 각별한 주의를 부탁드립니다.<br><br></p><p>또한 버스커라운드는 아래 상담채널 외에 다른 상담채널은 별도 운영하지 않고 있으니 확인되지 않은 URL 클릭, 상담 진행으로 피해가 발생하지 않도록 유의하시기 바랍니다.<br><br></p><p></p><p>- 고객센터 : 1566-7777(유료/평일 09:00~18:00)<br><br></p><p>- 모바일 앱 : 메뉴; 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p>- PC 웹 : www.buskeround.com 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p></p><p>감사합니다.</p>', sysdate, 0);
insert into ccnotice values(seq_ccnotice_no.nextval, 0, '[버스커라운드] 공지사항 테스팅: 서버 오류.', '<p>안녕하세요 <strong>버스커라운드</strong>입니다.</p><br><p></p><p>최근 메일을 통해 ‘버스커라운드 이용권 구매 안내’ 제목으로 ‘멜론상품이용권’이 결제되었다는 내용과 함께 결제하지 않으셨다면 상담채널로 상담요청 해달라는 메일이 발송되고 있어 이에 각별한 주의를 부탁드립니다.<br><br></p><p>또한 버스커라운드는 아래 상담채널 외에 다른 상담채널은 별도 운영하지 않고 있으니 확인되지 않은 URL 클릭, 상담 진행으로 피해가 발생하지 않도록 유의하시기 바랍니다.<br><br></p><p></p><p>- 고객센터 : 1566-7777(유료/평일 09:00~18:00)<br><br></p><p>- 모바일 앱 : 메뉴; 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p>- PC 웹 : www.buskeround.com 고객센터; 나의 문의 내역; 1:1문의<br><br></p><p></p><p>감사합니다.</p>', sysdate, 0);

commit;