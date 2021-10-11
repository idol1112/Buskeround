--제휴사 insert 문
--김덕배씨 회원가입(제휴사1)
insert into users values(seq_user_no.nextval,'1234','1234','1234@naver.com','김덕배',null,'김덕배','010-1111-1111','male','1998-11-12','3','트랩','0',0,0,sysdate,'2','2','0');
--김창수씨 회원가입(제휴사2)
insert into users values(seq_user_no.nextval,'4321','4321','4321@naver.com','김창수',null,null,null,null,null,null,null,null,null,null,null,'2','2',null);

--유저 정보 1(김덕배님) 블로그
insert into blog values(1, '안녕하세요 김덕배의 블로그에 오신것을 환영합니다.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/');
insert into blog values(2, '안녕하세요 김창수의 블로그에 오신것을 환영합니다.', null, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://www.instagram.com/');
--이력사항
insert into resume values(seq_resume_no.nextval, 1, '2000년 그래미 어워즈 수상');
insert into resume values(seq_resume_no.nextval, 1, '2014 대한민국 연예예술상');
insert into resume values(seq_resume_no.nextval, 1, '2015 골든디스크 어워즈');
insert into resume values(seq_resume_no.nextval, 1, '2015 대한민국 연예대상');
insert into resume values(seq_resume_no.nextval, 1, '2019 하이원 서울가요대상');
insert into resume values(seq_resume_no.nextval, 1, '제9회 가온 차트 K-POP');
--카테고리
insert into category values(seq_cate_no.nextval, 1, 1, '공지사항');
insert into category values(seq_cate_no.nextval, 1, 2, '타임라인');
insert into category values(seq_cate_no.nextval, 1, 3, '갤러리');
insert into category values(seq_cate_no.nextval, 1, 4, '방명록');

--공지사항
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 1, 1, 'Title 제목 공지사항 테스팅: 2021-10-22 공연 예정 공지.', 'Content Testing 123 내용 테스팅 123', sysdate, 0);

--방명록
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);
INSERT INTO post (post_no, category_no, user_no, title, content, reg_date, hit) VALUES (seq_post_no.NEXTVAL, 4, 1, '방명록 테스팅: 김덕배님 응원합니다! 사랑해요!!', 'Content Testing 123 내용 테스팅 123', sysdate, 0);

--아티스트들 생성
/*임의의 정보 넣기*/
insert INTO users VALUES (seq_user_no.nextval, 'aaa', 1234, 'aaa@naver.com', 'olseason', null, '김밥통', null, null, 19980505, 2, '왁킹댄스', 0, 15, 15, sysdate, 2, 1, 30);
insert INTO users VALUES (seq_user_no.nextval, 'bbb', 1234, 'bbb@naver.com', '홍길동', null, '홍길동', '010-0000-0000', 'male', 20000101, 1, '솔로', 1, 10, 40, sysdate, 2, 1, 50);
insert INTO users VALUES (seq_user_no.nextval, 'ccc', 1234, 'ccc@naver.com', '박서준', null, '박서준', '010-1234-5000', 'male', 19970216, 1, '솔로', 1, 60, 40, sysdate, 2, 1, 100);
insert INTO users VALUES (seq_user_no.nextval, 'ddd', 1234, 'ddd@naver.com', '제니', null, '김제니', '010-9978-0345', 'female', 19960520, 2, '솔로가수', 1, 55, 30, sysdate, 2, 1, 85);
insert INTO users VALUES (seq_user_no.nextval, 'eee', 1234, 'eee@naver.com', '이여름', null, '이여름', '010-6720-0080', 'female', 19981109, 5, '솔로', 1, 67, 20, sysdate, 2, 1, 87);
insert INTO users VALUES (seq_user_no.nextval, 'fff', 1234, 'fff@naver.com', '김동률', null, '김동률', '010-2998-0000', 'male', 20000101, 1, '솔로', 1, 67, 15, sysdate, 2, 1, 82);
insert INTO users VALUES (seq_user_no.nextval, 'ggg', 1234, 'ggg@naver.com', 'ROSE', null, '박채영', '010-3212-1065', 'female', 19960211, 4, 'KPOP', 1, 89, 20, sysdate, 2, 1, 109);
insert INTO users VALUES (seq_user_no.nextval, 'hhh', 1234, 'hhh@naver.com', '김현우', null, '김현우', '010-1343-6674', 'male', 19950616, 1, '솔로', 1, 40, 18, sysdate, 2, 1, 58);
insert INTO users VALUES (seq_user_no.nextval, 'iii', 1234, 'iii@naver.com', '정국', null, '전정국', '010-7756-3490', 'male', 19970905, 2, '솔로', 1, 32, 30, sysdate, 2, 1, 62);
insert INTO users VALUES (seq_user_no.nextval, 'jjj', 1234, 'jjj@naver.com', 'imj', null, '박혜원', null, null, 20020320, 5, '통기타솔로', 0, 14, 10, sysdate, 2, 1, 24);
insert INTO users VALUES (seq_user_no.nextval, 'kkk', 1234, 'kkk@naver.com', 'imk', null, '양요섭', null, null, 19960129, 1, '발라드가수', 0, 45, 44, sysdate, 2, 1, 89);
insert INTO users VALUES (seq_user_no.nextval, 'lll', 1234, 'lll@naver.com', 'TWICE', null, '김나연', '010-5512-8530', 'female', 19961209, 3, '솔로', 1, 50, 34, sysdate, 2, 1, 84);
insert INTO users VALUES (seq_user_no.nextval, 'mmm', 1234, 'mmm@naver.com', '이무진', null, '이무진', '010-9096-1137', 'male', 19991020, 6, '카드마술', 1, 26, 20, sysdate, 2, 1, 46);
insert INTO users VALUES (seq_user_no.nextval, 'nnn', 1234, 'nnn@naver.com', '사나', null, '박사나', '010-3677-8989', 'female', 20020309, 2, '솔로', 1, 15, 10, sysdate, 2, 1, 25); 
insert INTO users VALUES (seq_user_no.nextval, 'ooo', 1234, 'ooo@naver.com', '김선호', null, '김선호', '010-3677-8989', 'male', 20010628, 4, '솔로', 1, 37, 49, sysdate, 2, 1, 86);
insert INTO users VALUES (seq_user_no.nextval, 'zzz', 1234, 'zzz@naver.com', '김동호', null, '김동호', '010-2998-0001', 'male', 20000101, 1, '솔로', 0, 67, 50, sysdate, 2, 1, 117);
insert INTO users VALUES (seq_user_no.nextval, 'PPP', 1234, 'PPP@naver.com', 'ICON', null, '박정진', '010-5656-3788', 'male', 19950326, 3, '힙합', 0, 20, 55, sysdate, 2, 1, 77);
insert INTO users VALUES (seq_user_no.nextval, 'qqq', 1234, 'qqq@naver.com', '이제훈', null, '이제훈', '010-7749-0881', 'male', 19980419, 5, '베이스', 0, 22, 26, sysdate, 2, 1, 46);
insert INTO users VALUES (seq_user_no.nextval, 'rrr', 1234, 'rrr@naver.com', '홀리뱅(HOLLYBANG)', null, '홀리뱅', '010-2280-1445', 'female', 19940513, 6, '행위예술', 0, 49, 32, sysdate, 2, 1, 81);
insert INTO users VALUES (seq_user_no.nextval, 'sss', 1234, 'sss@naver.com', '미노이(MENOI)', null, '이민영', '010-0007-7654', 'female', 19961124, 4, '알앤비', 0, 33, 10, sysdate, 2, 1, 43);

--Blog
insert into blog values (3, '안녕하세요. aaa입니다.', null, null, null, null);
insert into blog values (4, '안녕하세요. bbb입니다.', null, null, null, null);
insert into blog values (5, '안녕하세요. ccc입니다.', null, null, null, null);
insert into blog values (6, '안녕하세요. ddd입니다.', null, null, null, null);
insert into blog values (7, '안녕하세요. eee입니다.', null, null, null, null);
insert into blog values (8, '안녕하세요. fff입니다.', null, null, null, null);
insert into blog values (9, '안녕하세요. ggg입니다.', null, null, null, null);
insert into blog values (10, '안녕하세요. hhh입니다.', null, null, null, null);
insert into blog values (11, '안녕하세요. iii입니다.', null, null, null, null);
insert into blog values (12, '안녕하세요. jjj입니다.', null, null, null, null);

--Category
insert into category values (seq_cate_no.nextval, 3, 2, '타임라인');
insert into category values (seq_cate_no.nextval, 4, 2, '타임라인');
insert into category values (seq_cate_no.nextval, 5, 2, '타임라인');
insert into category values (seq_cate_no.nextval, 6, 2, '타임라인');
insert into category values (seq_cate_no.nextval, 7, 2, '타임라인');
insert into category values (seq_cate_no.nextval, 8, 2, '타임라인');
insert into category values (seq_cate_no.nextval, 9, 2, '타임라인');
insert into category values (seq_cate_no.nextval, 10, 2, '타임라인');
insert into category values (seq_cate_no.nextval, 11, 2, '타임라인');
insert into category values (seq_cate_no.nextval, 12, 2, '타임라인');


--Post (timeline)
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 2, 1, '안녕하세요', NULL, NULL, 33.451486, 126.571199, TO_DATE('2021-09-01 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 2, 1, '안녕하세요', NULL, NULL, 33.451549, 126.569021, TO_DATE('2021-09-06 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 2, 1, '안녕하세요', NULL, NULL, 33.453160, 126.569815, TO_DATE('2021-09-08 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 2, 1, '안녕하세요', NULL, NULL, 33.454189, 126.571843, TO_DATE('2021-09-10 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 2, 1, '안녕하세요', NULL, NULL, 33.454977, 126.569000, TO_DATE('2021-09-15 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 2, 1, '안녕하세요', NULL, NULL, 33.453187, 126.566779, TO_DATE('2021-09-18 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 2, 1, '안녕하세요', NULL, NULL, 33.449633, 126.570597, TO_DATE('2021-09-22 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 2, 1, '안녕하세요', NULL, NULL, 33.448344, 126.573828, TO_DATE('2021-09-28 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, 'noimg.png', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 2, 1, '안녕하세요', NULL, NULL, 33.448944, 126.569601, TO_DATE('2021-10-01 10:26:11','YYYY-MM-DD HH24:MI:SS'), NULL, 'noimg.png', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 2, 6, '안녕하세요', NULL, NULL, 33.451486, 126.571199, TO_DATE('2021-09-01 10:26:11','YYYY-MM-DD HH24:MI:SS'), NULL, 'noimg.png', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 5, 5, '안녕하세요', NULL, NULL, 33.451549, 126.569021, TO_DATE('2021-09-06 10:26:11','YYYY-MM-DD HH24:MI:SS'), NULL, 'noimg.png', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 6, 6, '안녕하세요', NULL, NULL, 33.453160, 126.569815, TO_DATE('2021-09-08 10:26:11','YYYY-MM-DD HH24:MI:SS'), NULL, 'noimg.png', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 5, 7, '안녕하세요', NULL, NULL, 33.454189, 126.571843, TO_DATE('2021-09-10 10:26:11','YYYY-MM-DD HH24:MI:SS'), NULL, 'noimg.png', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 6, 8, '안녕하세요', NULL, NULL, 33.454977, 126.569000, TO_DATE('2021-09-15 10:26:11','YYYY-MM-DD HH24:MI:SS'), NULL, 'noimg.png', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 7, 9, '안녕하세요', NULL, NULL, 33.453187, 126.566779, TO_DATE('2021-09-18 10:26:11','YYYY-MM-DD HH24:MI:SS'), NULL, 'noimg.png', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 8, 10, '안녕하세요', NULL, NULL, 33.449633, 126.570597, TO_DATE('2021-09-22 10:26:11','YYYY-MM-DD HH24:MI:SS'), NULL, 'noimg.png', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 9, 11, '안녕하세요', NULL, NULL, 33.448344, 126.573828, TO_DATE('2021-09-28 10:26:11','YYYY-MM-DD HH24:MI:SS'), NULL, 'noimg.png', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 10, 12, '안녕하세요', NULL, NULL, 33.448944, 126.569601, TO_DATE('2021-10-01 10:26:11','YYYY-MM-DD HH24:MI:SS'), NULL, 'noimg.png', 'nQoRw_5ning', '하이미디어', NULL);

-- 제휴사 등록
insert into company values(1,'1633448248750e46f1e31-1938-4e04-b505-504ba9d79791.jpg','신촌 CGV','서울 서대문구 신촌로 129 아트레온','1544-1122','김덕배','104-81-45690',0,0);
insert into company values(2,'16334837711904673cc34-d063-4543-a222-fc9eebd4141f.png','신라호텔','서울특별시 중구 동호로 249','02-2233-3131','김창덕','101-11-37840',0,0);

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
insert into buskingapp values(SEQ_APP_NO.nextval,4,1,'잘부탁드립니다 오네가이시마스',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,5,3,'가요대상 3회수상자입니다 데려가세요',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,6,5,'전국노래자랑 100회이상 시청',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,7,7,'아이유랑 이름이 비슷합니다',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,8,9,'이사람은 무료로 노래해드립니다',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,9,11,'노래 기똥차게 잘합니다 불러만주십쇼',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,10,14,'미스터 트롯 오디션 3연속 탈락',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,11,16,'잘부탁드립니다 오네가이시마스',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,12,19,'가요대상 3회수상자입니다 데려가세요',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,13,22,'전국노래자랑 100회이상 시청',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,14,25,'아이유랑 이름이 비슷합니다',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,15,28,'이사람은 무료로 노래해드립니다',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,16,30,'노래 기똥차게 잘합니다 불러만주십쇼',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,17,33,'미스터 트롯 오디션 3연속 탈락',sysdate,'3');
insert into buskingapp values(SEQ_APP_NO.nextval,18,35,'안뽑으면 3년동안 삼대가 재수없음',sysdate,'3');
commit;
/*////////////////////////////insert문////////////////////////////////////*/