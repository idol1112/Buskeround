--insert문

--김덕배씨 회원가입(제휴사1)
insert into users values(seq_user_no.nextval,'1234','1234','1234@naver.com','김덕배','101.PNG','김덕배','010-1111-1111','male','1998-11-12','3','트랩','0',0,0,sysdate,'2','2','0');
--김창수씨 회원가입(제휴사2)
insert into users values(seq_user_no.nextval,'4321','4321','4321@naver.com','김창수','102.PNG',null,null,null,null,null,null,null,null,null,null,'1','2',null);
--박수현씨 회원가입(제휴사3)
insert into users values(seq_user_no.nextval,'1111','1111','1111@naver.com','박수현','103.PNG',null,null,null,null,null,null,null,null,null,null,'1','2',null);
--고라파덕씨 회원가입(제휴사4)
insert into users values(seq_user_no.nextval,'1112','1112','1112@naver.com','고라파덕','104.PNG',null,null,null,null,null,null,null,null,null,null,'1','2',null);
--비에고씨 회원가입(제휴사5)
insert into users values(seq_user_no.nextval,'1113','1113','1113@naver.com','비에고','105.PNG',null,null,null,null,null,null,null,null,null,null,'1','2',null);
--아칼리씨 회원가입(제휴사6)
insert into users values(seq_user_no.nextval,'1114','1114','1114@naver.com','아칼리','106.PNG',null,null,null,null,null,null,null,null,null,null,'1','2',null);
--아티스트들 생성
/*임의의 정보 넣기*/
insert INTO users VALUES (seq_user_no.nextval, 'aaa', '1234', 'aaa@naver.com', '이달의 소녀', '10.PNG', '김밥통', '010-1234-1234', null, '19980505', '2', '왁킹댄스', '0', 15, 15, sysdate, '2', '1', 30);
insert INTO users VALUES (seq_user_no.nextval, 'bbb', '1234', 'bbb@naver.com', '워너비', '1.PNG', '홍길동', '010-0000-0000', 'male', '20000101', '1', '솔로', '1', 10, 40, sysdate, '2', '1', 50);
insert INTO users VALUES (seq_user_no.nextval, 'ccc', '1234', 'ccc@naver.com', '박서준', '8.PNG', '박서준', '010-1234-5000', 'male', '19970216', '1', '솔로', '1', 60, 40, sysdate, '2', '1', 100);
insert INTO users VALUES (seq_user_no.nextval, 'ddd', '1234', 'ddd@naver.com', '제니', '52.PNG', '김제니', '010-9978-0345', 'female', '19960520', '2', '솔로가수', '1', 55, 30, sysdate, '2', '1', 85);
insert INTO users VALUES (seq_user_no.nextval, 'eee', '1234', 'eee@naver.com', '이여름', '53.PNG', '이여름', '010-6720-0080', 'female', '19981109', '5', '솔로', '1', 67, 20, sysdate, '2', '1', 87);
insert INTO users VALUES (seq_user_no.nextval, 'fff', '1234', 'fff@naver.com', '김동률', '41.PNG', '김동률', '010-2998-0000', 'male', '20000101', '1', '솔로', '1', 67, 15, sysdate, '2', '1', 82);
insert INTO users VALUES (seq_user_no.nextval, 'ggg', '1234', 'ggg@naver.com', 'ROSE', '20.PNG', '박채영', '010-3212-1065', 'female', '19960211', '4', 'KPOP', '1', 89, 20, sysdate, '2', '1', 109);
insert INTO users VALUES (seq_user_no.nextval, 'hhh', '1234', 'hhh@naver.com', '김현우', '13.PNG', '김현우', '010-1343-6674', 'male', '19950616', '1', '솔로', '1', 40, 18, sysdate, '2', '1', 58);
insert INTO users VALUES (seq_user_no.nextval, 'iii', '1234', 'iii@naver.com', '정국', '9.PNG', '전정국', '010-7756-3490', 'male', '19970905', '2', '솔로', '1', 32, 30, sysdate, '2', '1', 62);
insert INTO users VALUES (seq_user_no.nextval, 'jjj', '1234', 'jjj@naver.com', '박혜원', '43.PNG', '박혜원', '010-3662-7730', null, '20020320', '5', '통기타솔로', '0', 14, 10, sysdate, '2', '1', 24);
insert INTO users VALUES (seq_user_no.nextval, 'kkk', '1234', 'kkk@naver.com', '양요섭', '48.PNG', '양요섭', '010-2723-4377', null, '19960129', '1', '발라드가수', '0', 45, 44, sysdate, '2', '1', 89);


insert INTO users VALUES (seq_user_no.nextval, 'lll', '1234', 'lll@naver.com', 'TWICE', '44.PNG', '김나연', '010-5512-8530', 'female', '19961209', '3', '솔로', '1', 50, 34, sysdate, '2', '1', 84);
insert INTO users VALUES (seq_user_no.nextval, 'mmm', '1234', 'mmm@naver.com', '이무진', '17.PNG', '이무진', '010-9096-1137', 'male', '19991020', '6', '카드마술', '1', 26, 20, sysdate, '2', '1', 46);
insert INTO users VALUES (seq_user_no.nextval, 'nnn', '1234', 'nnn@naver.com', '사나', '16.PNG', '박사나', '010-3677-8989', 'female', '20020309', '2', '솔로', '1', 15, 10, sysdate, '2', '1', 25); 
insert INTO users VALUES (seq_user_no.nextval, 'ooo', '1234', 'ooo@naver.com', '김선호', '4.PNG', '김선호', '010-3677-8989', 'male', '20010628', '4', '솔로', '1', 37, 49, sysdate, '2', '1', 86);
insert INTO users VALUES (seq_user_no.nextval, 'zzz', '1234', 'zzz@naver.com', '김동호', '6.PNG', '김동호', '010-2998-0001', 'male', '20000101', '1', '솔로', '0', 67, 50, sysdate, '2', '1', 117);
insert INTO users VALUES (seq_user_no.nextval, 'PPP', '1234', 'PPP@naver.com', 'ICON', '49.PNG', '박정진', '010-5656-3788', 'male', '19950326', '3', '힙합', '0', 20, 55, sysdate, '2', '1', 77);
insert INTO users VALUES (seq_user_no.nextval, 'qqq', '1234', 'qqq@naver.com', '이제훈', '38.PNG', '이제훈', '010-7749-0881', 'male', '19980419', '5', '베이스', '0', 22, 26, sysdate, '2', '1', 46);
insert INTO users VALUES (seq_user_no.nextval, 'rrr', '1234', 'rrr@naver.com', '홀리뱅', '14.PNG', '홀리뱅', '010-2280-1445', 'female', '19940513', '6', '행위예술', '0', 49, 32, sysdate, '2', '1', 81);
insert INTO users VALUES (seq_user_no.nextval, 'sss', '1234', 'sss@naver.com', '미노이', '11.PNG', '이민영', '010-0007-7654', 'female', '19961124', '4', '알앤비', '0', 33, 10, sysdate, '2', '1', 43);

--Blog
insert into blog values (1, '안녕하세요. 김덕배입니다.', null, null, null, null);
insert into blog values (7, '안녕하세요. aaa입니다.', null, null, null, null);
insert into blog values (8, '안녕하세요. bbb입니다.', null, null, null, null);
insert into blog values (9, '안녕하세요. ccc입니다.', null, null, null, null);
insert into blog values (10, '안녕하세요. ddd입니다.', null, null, null, null);
insert into blog values (11, '안녕하세요. eee입니다.', null, null, null, null);
insert into blog values (12, '안녕하세요. fff입니다.', null, null, null, null);
insert into blog values (13, '안녕하세요. ggg입니다.', null, null, null, null);
insert into blog values (14, '안녕하세요. hhh입니다.', null, null, null, null);
insert into blog values (15, '안녕하세요. iii입니다.', null, null, null, null);
insert into blog values (16, '안녕하세요. jjj입니다.', null, null, null, null);
insert into blog values (17, '안녕하세요. kkk입니다.', null, null, null, null);
insert into blog values (18, '안녕하세요. lll입니다.', null, null, null, null);
insert into blog values (19, '안녕하세요. mmm입니다.', null, null, null, null);
insert into blog values (20, '안녕하세요. nnn입니다.', null, null, null, null);
insert into blog values (21, '안녕하세요. ooo입니다.', null, null, null, null);
insert into blog values (22, '안녕하세요. zzz입니다.', null, null, null, null);
insert into blog values (23, '안녕하세요. ppp입니다.', null, null, null, null);
insert into blog values (24, '안녕하세요. qqq입니다.', null, null, null, null);
insert into blog values (25, '안녕하세요. rrr입니다.', null, null, null, null);
insert into blog values (26, '안녕하세요. sss입니다.', null, null, null, null);

--Category
insert into category values(seq_cate_no.nextval, 1, 1, '공지사항');
insert into category values(seq_cate_no.nextval, 1, 2, '타임라인');
insert into category values(seq_cate_no.nextval, 1, 3, '갤러리');
insert into category values(seq_cate_no.nextval, 1, 4, '방명록');
insert into category values(seq_cate_no.nextval, 7, 1, '공지사항');
insert into category values(seq_cate_no.nextval, 7, 2, '타임라인');
insert into category values(seq_cate_no.nextval, 7, 3, '갤러리');
insert into category values(seq_cate_no.nextval, 7, 4, '방명록');
insert into category values (seq_cate_no.nextval, 8, 2, '타임라인');
insert into category values (seq_cate_no.nextval, 9, 2, '타임라인');
insert into category values (seq_cate_no.nextval, 10, 2, '타임라인');
insert into category values (seq_cate_no.nextval, 11, 2, '타임라인');
insert into category values (seq_cate_no.nextval, 12, 2, '타임라인');
insert into category values (seq_cate_no.nextval, 13, 2, '타임라인');
insert into category values (seq_cate_no.nextval, 14, 2, '타임라인');
insert into category values (seq_cate_no.nextval, 15, 2, '타임라인');
insert into category values (seq_cate_no.nextval, 16, 2, '타임라인');

--Post (timeline)
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 1, 7, '안녕하세요', NULL, NULL, 33.451486, 126.571199, TO_DATE('2021-09-01 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, '1000.jpg', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 1, 7, '안녕하세요', NULL, NULL, 33.451549, 126.569021, TO_DATE('2021-09-06 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, '1001.jpg', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 1, 7, '안녕하세요', NULL, NULL, 33.453160, 126.569815, TO_DATE('2021-09-08 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, '1002.jpg', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 1, 7, '안녕하세요', NULL, NULL, 33.454189, 126.571843, TO_DATE('2021-09-10 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, '1003.jpg', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 1, 7, '안녕하세요', NULL, NULL, 33.454977, 126.569000, TO_DATE('2021-09-15 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, '1004.jpg', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 1, 7, '안녕하세요', NULL, NULL, 33.453187, 126.566779, TO_DATE('2021-09-18 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, '1005.jpg', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 1, 7, '안녕하세요', NULL, NULL, 33.449633, 126.570597, TO_DATE('2021-09-22 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, '1006.jpg', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 1, 7, '안녕하세요', NULL, NULL, 33.448344, 126.573828, TO_DATE('2021-09-28 10:26:11','YYYY-MM-DD HH24:MI:SS'), sysdate, '1007.jpg', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 1, 7, '안녕하세요', NULL, NULL, 33.448944, 126.569601, TO_DATE('2021-10-01 10:26:11','YYYY-MM-DD HH24:MI:SS'), NULL, '1008.jpg', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 2, 8, '안녕하세요', NULL, NULL, 33.451486, 126.571199, TO_DATE('2021-09-01 10:26:11','YYYY-MM-DD HH24:MI:SS'), NULL, '1009.jpg', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 3, 9, '안녕하세요', NULL, NULL, 33.451549, 126.569021, TO_DATE('2021-09-06 10:26:11','YYYY-MM-DD HH24:MI:SS'), NULL, '1010.jpg', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 4, 10, '안녕하세요', NULL, NULL, 33.453160, 126.569815, TO_DATE('2021-09-08 10:26:11','YYYY-MM-DD HH24:MI:SS'), NULL, '1011.jpg', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 5, 11, '안녕하세요', NULL, '2021-10-01', 33.454189, 126.571843, NULL, NULL, '1000.jpg', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 6, 12, '안녕하세요', NULL, '2021-10-05', 33.454977, 126.569000, NULL, NULL, '1001.jpg', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 7, 13, '안녕하세요', NULL, '2021-10-07', 33.453187, 126.566779, NULL, NULL, '1002.jpg', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 8, 14, '안녕하세요', NULL, '2021-10-11', 33.449633, 126.570597, NULL, NULL, '1003.jpg', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 9, 15, '안녕하세요', NULL, '2021-10-15', 33.448344, 126.573828, NULL, NULL, '1004.jpg', 'nQoRw_5ning', '하이미디어', NULL);
INSERT INTO post VALUES (seq_post_no.NEXTVAL, 10, 16, '안녕하세요', NULL, '2021-10-13', 33.448944, 126.569601, NULL, NULL, '1005.jpg', 'nQoRw_5ning', '하이미디어', NULL);

-- 제휴사 등록
insert into company values(1,'101.PNG','신촌 CGV','서울 서대문구 신촌로 129 아트레온','1544-1122','김덕배','104-81-45690',37.55649812100385,126.94032867686857);
insert into company values(2,'102.PNG','신라호텔','서울특별시 중구 동호로 249','02-2233-3131','김창덕','101-11-37840',37.5577797894265,127.00762909337426);
insert into company values(3,'103.PNG','스타벅스','서울특별시 강남구 강남대로 390','02-1111-1111','박수현','104-52-37620',37.497960743833886,127.0285145402949);
insert into company values(4,'104.PNG','시그니엘','서울특별시 송파구 올림픽로 300 롯데월드타워','02-2222-2222','고라파덕','137-98-32340',37.51319142112977,127.10195564589539);
insert into company values(5,'105.PNG','에버랜드','경기도 용인시 처인구 포곡읍 에버랜드로 199','02-3333-3333','비에고','199-99-99999',37.29355565476383,127.19979467916205);
insert into company values(6,'106.PNG','하이미디어','서울특별시 서초구 강남대로 405 통영빌딩','02-4444-4444','아칼리','127-445-30293',37.49879182639053, 127.02664971809797);
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
/*////////////////////////////insert문////////////////////////////////////*/

