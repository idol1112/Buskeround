
/*임의의 정보 넣기*/
insert INTO users VALUES (1, 'aaa', 1234, 'aaa@naver.com', 'olseason', '/assets/image/blog/icon/user.png', null, null, null, null, null, null, null, null, null, null, 1, 1);
insert INTO users VALUES (2, 'bbb', 1234, 'bbb@naver.com', 'imb', '/assets/image/blog/icon/user.png', '홍길동', '010-0000-0000', 'male', 20000101, 1, '솔로', 0, 0, 0, sysdate, 2, 1);
insert INTO users VALUES (3, 'ccc', 1234, 'ccc@naver.com', 'imc', '/assets/image/blog/icon/user.png', '박서준', '010-1234-5000', 'male', 19970216, 1, '솔로', 1, 0, 0, sysdate, 2, 1);
insert INTO users VALUES (4, 'ddd', 1234, 'ddd@naver.com', 'imd', '/assets/image/blog/icon/user.png', '김제니', '010-9978-0345', 'female', 19960520, 2, '솔로가수', 1, 0, 0, sysdate, 2, 1);
insert INTO users VALUES (5, 'eee', 1234, 'eee@naver.com', 'ime', '/assets/image/blog/icon/user.png', '이여름', '010-6720-0080', 'female', 19981109, 5, '솔로', 0, 0, 0, sysdate, 2, 1);
insert INTO users VALUES (6, 'fff', 1234, 'fff@naver.com', 'imf', '/assets/image/blog/icon/user.png', '김동률', '010-2998-0000', 'male', 20000101, 1, '솔로', 0, 0, 0, sysdate, 2, 1);
insert INTO users VALUES (7, 'ggg', 1234, 'ggg@naver.com', 'img', '/assets/image/blog/icon/user.png', '박채영', '010-3212-1065', 'female', 19960211, 4, 'KPOP', 1, 0, 0, sysdate, 2, 1);
insert INTO users VALUES (8, 'hhh', 1234, 'hhh@naver.com', 'imh', '/assets/image/blog/icon/user.png', '김현우', '010-1343-6674', 'male', 19950616, 1, '솔로', 1, 0, 0, sysdate, 2, 1);
insert INTO users VALUES (9, 'iii', 1234, 'iii@naver.com', 'imi', '/assets/image/blog/icon/user.png', '전정국', '010-7756-3490', 'male', 19970905, 2, '솔로', 1, 0, 0, sysdate, 2, 1);
insert INTO users VALUES (10, 'jjj', 1234, 'jjj@naver.com', 'imj', '/assets/image/blog/icon/user.png', null, null, null, null, null, null, null, null, null, null, 1, 1);
insert INTO users VALUES (11, 'kkk', 1234, 'kkk@naver.com', 'imk', '/assets/image/blog/icon/user.png', null, null, null, null, null, null, null, null, null, null, 1, 1);
insert INTO users VALUES (12, 'lll', 1234, 'lll@naver.com', 'iml', '/assets/image/blog/icon/user.png', '김나연', '010-5512-8530', 'female', 19961209, 3, '솔로', 1, 0, 0, sysdate, 2, 1);
insert INTO users VALUES (13, 'mmm', 1234, 'mmm@naver.com', 'imm', '/assets/image/blog/icon/user.png', '이무진', '010-9096-1137', 'male', 19991020, 6, '재즈', 1, 0, 0, sysdate, 2, 1);
insert INTO users VALUES (14, 'nnn', 1234, 'nnn@naver.com', 'imn', '/assets/image/blog/icon/user.png', '박사나', '010-3677-8989', 'female', 20020309, 2, '솔로', 0, 0, 0, sysdate, 2, 1); 
insert INTO users VALUES (15, 'ooo', 1234, 'ooo@naver.com', 'imo', '/assets/image/blog/icon/user.png', '김선호', '010-3677-8989', 'male', 20010628, 4, '솔로', 0, 0, 0, sysdate, 2, 1);


/*팬되기 조인 예시*/
SELECT
    id,
    f.user_no,
    f.artist_no
FROM users u, fan f
WHERE u.user_no = f.fan_no and f.user_no = 1;