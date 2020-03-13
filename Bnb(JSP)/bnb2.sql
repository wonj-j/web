delete from tblbigarea;
delete from tblsmallarea;
delete from tblcategory;
delete from tblList;
delete from tbltourlist;
delete from tblrestolist;
delete from tbllocation;
delete from tblConvenience;
delete from tblaccomrule;


COMMIT;

-- 큰장소 - 부산광역시
insert into tblBigArea (seq, bigarea) values (1, '부산광역시');

-- 작은장소 - 해운대
insert into tblSmallArea (seq, smallarea) values (1, '해운대');

-- 카테고리
insert into tblCategory (seq, genre) values (1, '한식');

-- 목록
insert into tblList (seq, bigareaseq, smallareaseq, categoryseq) values (1, 1, 1, 1);
select * from tblList;

-- 여행 목록
insert into tblTourList (seq, pic, writedate, title, content, views, starscore, listseq) values (1, '카카오톡 받은 파일', sysdate, '해운대', '내용', 10, 3, 1);

-- 식당 목록
select * from tblRestoList;
insert into tblRestoList (seq, pic, writedate, title, content, views, starscore, listseq) values (1, 'img/post-1.jpg', sysdate, '대독장', '내용내용내용내용', 11, 0, 1);
insert into tblRestoList (seq, pic, writedate, title, content, views, starscore, listseq) values (2, 'img/post-2.jpg', sysdate, '애슐리', '내용내용내용내용내용내용', 11, 4.7, 1);
insert into tblRestoList (seq, pic, writedate, title, content, views, starscore, listseq) values (3, 'img/post-3.jpg', sysdate, '유니 짜장', '크아아아아아아아아앙', 11, 5.0, 1);
insert into tblRestoList (seq, pic, writedate, title, content, views, starscore, listseq) values (4, 'img/post-1.jpg', sysdate, '성찬 뚝배기', '후헤헤헤헤헤헤헿헤헿', 11, 5, 1);
insert into tblRestoList (seq, pic, writedate, title, content, views, starscore, listseq) values (5, 'img/post-2.jpg', sysdate, '진수성찬', '내용내용내용', 11, 5, 1);
insert into tblRestoList (seq, pic, writedate, title, content, views, starscore, listseq) values (6, 'img/post-3.jpg', sysdate, '오미라', '내용내용내용', 11, 5, 1);
insert into tblRestoList (seq, pic, writedate, title, content, views, starscore, listseq) values (7, 'img/post-1.jpg', sysdate, '역삼갈비', '내용내용내용내용', 11, 5, 1);
insert into tblRestoList (seq, pic, writedate, title, content, views, starscore, listseq) values (8, 'img/post-2.jpg', sysdate, '김밥천국', '내용내용내용내용내용', 11, 5, 1);
insert into tblRestoList (seq, pic, writedate, title, content, views, starscore, listseq) values (9, 'img/post-3.jpg', sysdate, '빕스', '내용내용내용', 11, 5, 1);
insert into tblRestoList (seq, pic, writedate, title, content, views, starscore, listseq) values (10, 'img/post-3.jpg', sysdate, '노랑통닭', '내용내용내용', 11, 5, 1);
insert into tblRestoList (seq, pic, writedate, title, content, views, starscore, listseq) values (11, 'img/매콤한수다.jpg', sysdate, '매콤한수다', '내용내용내용내용내용내용내용내용', 11, 5, 1);
insert into tblRestoList (seq, pic, writedate, title, content, views, starscore, listseq) values (12, 'img/post-1.jpg', sysdate, '김밥천국', '내용내용내용내용내용', 11, 5, 1);
insert into tblRestoList (seq, pic, writedate, title, content, views, starscore, listseq) values (13, 'img/post-2.jpg', sysdate, '빕스', '내용내용내용', 11, 5, 1);
insert into tblRestoList (seq, pic, writedate, title, content, views, starscore, listseq) values (14, 'img/post-3.jpg', sysdate, '노랑통닭', '내용내용내용', 11, 5, 1);
insert into tblRestoList (seq, pic, writedate, title, content, views, starscore, listseq) values (15, 'img/매콤한수다.jpg', sysdate, '매콤한수다', '내용내용내용내용내용내용내용내용', 11, 5, 1);

-- 위치
insert into tblLocation (seq, area, city, address, detailAddress, postNumber, hostseq) values (1, '부산', '서면', '동래구 21-3번지', '1208-1402', '417-827', 1);


-- 편의시설(침대, 욕실, 소화기, 와이파이, 다리미, 전자레인지, 헤어드라이기, 욕실용품, 구급상자, 화재경보기, 커피메이커, 주차시설) -> 1 : 유, 0 : 무
insert into tblConvenience (seq, name, state, cnt, hostseq) values (1, '침대', 1 , 2, 1); 

-- 이용규칙(유아적합성, 반려동물, 파티이벤트, 흡연, 추가규칙)
insert into tblAccomRule (seq, name, content, hostseq) values (1, '반려동물', '응안돼', 1);


--메뉴
insert into tblMenu (seq, name, price, hit, img, content, restoListSeq) values (menu_seq.nextval, '이탈리안피자', 15000, 1, '/img/post-1.jpg', '이 요리로 말할 것 같으면 크하하핳', 8);
insert into tblMenu (seq, name, price, hit, img, content, restoListSeq) values (menu_seq.nextval, '하와이안피자', 10000, 0, '/img/post-2.jpg', '이 요리로 말할 것 같으면 크하하핳', 8);
insert into tblMenu (seq, name, price, hit, img, content, restoListSeq) values (menu_seq.nextval, '불고기피자', 15000, 1, '/img/post-3.jpg', '이 요리로 말할 것 같으면 크하하핳', 8);
insert into tblMenu (seq, name, price, hit, img, content, restoListSeq) values (menu_seq.nextval, '쉬림프피자', 15000, 0, '/img/post-4.jpg', '이 요리로 말할 것 같으면 크하하핳', 8);
insert into tblMenu (seq, name, price, hit, img, content, restoListSeq) values (menu_seq.nextval, '고구마피자', 15000, 0, '/img/post-5.jpg', '이 요리로 말할 것 같으면 크하하핳', 8);



--메뉴사진
insert into tblMenuImg (seq, img, restoListSeq) values (menuImg_seq.nextval, '/img/agent-1.jpg', 8);
insert into tblMenuImg (seq, img, restoListSeq) values (menuImg_seq.nextval, '/img/agent-2.jpg', 8);
insert into tblMenuImg (seq, img, restoListSeq) values (menuImg_seq.nextval, '/img/agent-3.jpg', 8);
select * from tblMenu;
select * from tblMenuImg;

insert into tblcategory (seq, genre) values (1, '한식');
insert into tblcategory (seq, genre) values (2, '중식');
insert into tblcategory (seq, genre) values (3, '일식');
insert into tblcategory (seq, genre) values (4, '양식');
insert into tblcategory (seq, genre) values (5, '분식');
insert into tblcategory (seq, genre) values (6, '카폐');
insert into tblcategory (seq, genre) values (7, '산');
insert into tblcategory (seq, genre) values (8, '바다');
insert into tblcategory (seq, genre) values (9, '도시');
insert into tblcategory (seq, genre) values (10, '문화유산');
insert into tblcategory (seq, genre) values (11, '채팅');



select * from tblMenuImg where restoListSeq=8; 
select * from tblRestoList;
update tblRestoList set views=122 where seq = 2;
select views from tblRestoList where seq =2;

commit;

select* from tblsmallArea order by seq;
select* from tblbigArea order by seq;
select* from tblcategory order by seq;


insert into tblbigarea (seq, bigarea) values (7, '경기도');
insert into tblbigarea (seq, bigarea) values (8, '강원도');
insert into tblbigarea (seq, bigarea) values (9, '충청북도');
insert into tblbigarea (seq, bigarea) values (10, '충청남도');
insert into tblbigarea (seq, bigarea) values (11, '세종');
insert into tblbigarea (seq, bigarea) values (12, '전라북도');
insert into tblbigarea (seq, bigarea) values (13, '전라남도');
insert into tblbigarea (seq, bigarea) values (14, '경상북도');
insert into tblbigarea (seq, bigarea) values (15, '경상남도');
insert into tblbigarea (seq, bigarea) values (16, '울산');
insert into tblbigarea (seq, bigarea) values (17, '제주');

insert into tblreviewcategory (seq, hostseq, tourseq, restseq) values (16, 1, null, null);
insert into tblreviewcategory (seq, hostseq, tourseq, restseq) values (17, 1, null, null);
insert into tblreviewcategory (seq, hostseq, tourseq, restseq) values (18, 1, null, null);
insert into tblreviewcategory (seq, hostseq, tourseq, restseq) values (19, 1, null, null);
insert into tblreviewcategory (seq, hostseq, tourseq, restseq) values (20, 1, null, null);

insert into tblreviewcategory (seq, hostseq, tourseq, restseq) values (21, 21, null, null);
insert into tblreviewcategory (seq, hostseq, tourseq, restseq) values (22, 21, null, null);

insert into tblreview (seq, starscore, content, dates, userseq, seq2, depth, thread) values(16, 2.5, '어어어어마마',sysdate, 1, 16, 0, 2000);
insert into tblreview (seq, starscore, content, dates, userseq, seq2, depth, thread) values(17, 2.5, '테스트중중',sysdate, 1, 17, 0, 3000);
insert into tblreview (seq, starscore, content, dates, userseq, seq2, depth, thread) values(18, 2.5, '후후훟',sysdate, 1, 18, 0, 4000);
insert into tblreview (seq, starscore, content, dates, userseq, seq2, depth, thread) values(19, 2.5, '잘되길바람',sysdate, 1, 19, 0, 5000);
insert into tblreview (seq, starscore, content, dates, userseq, seq2, depth, thread) values(20, 3.5, '잘되길바람',sysdate, 3, 20, 0, 5000);
insert into tblreview (seq, starscore, content, dates, userseq, seq2, depth, thread) values(21, 4.5, '잘되길바람',sysdate, 8, 21, 0, 6000);
insert into tblreview (seq, starscore, content, dates, userseq, seq2, depth, thread) values(22, 5.5, '으으으으으으',sysdate, 8, 22, 0, 7000);


select count(*) as cnt from tblreview r inner join tblreviewcategory ca on ca.seq = r.seq2 where ca.tourseq = ?;
select * from tblreview;
select * from tblhost;
select * from tblreviewcategory;
insert into tblreviewcategory (seq, tourseq) values (reviewcategory_seq.nextval, 1);
select * from tblrestolist;
select * from (select rv.*, rownum as rnum from (select rev.* from (select re.*, (select u.id from tbluser u where u.seq = 4) as id, (select u.pic from tbluser u where u.seq=4) as img from tblreview re) rev order by thread desc) rv) where rnum between 1 and 3;

commit;

select * from tbluser;
select * from tblList;
select * from tblsmallarea;
select * from tblcategory;
select * from tblbigarea order by seq;
select * from tblRestoList;

select l.smallareaseq as seq, (select smallarea from tblsmallarea where seq = l.smallareaseq  ) as city from tblList l where bigareaseq=1 and categoryseq=11;


select l.bigareaseq as area, l.smallareaseq as area2, l.categoryseq as category from tblRestoList rl inner join tblList l on rl.listseq=l.seq where rl.seq=8;










select to_char((sum(starscore) / count(*)), '0.0') as avg from (select vw.*, rownum as rnum from (select r.*, (select id from tbluser u where u.seq=r.userseq ) as id, (select pic from tbluser u where u.seq=r.userseq) as img, re.restseq as restseq
    from tblreview r left outer join tblreviewcategory re on r.seq2=re.seq order by r.thread desc) vw where restseq=8) where (rnum between 1 and 10);
    
    
select * from tblRestoList;
update tblRestoList set pic='img/조신한식탁.jpg' where seq=1;
update tblRestoList set pic='img/얌샘김밥.jpg' where seq=2;
update tblRestoList set pic='img/호치킨.jpg' where seq=3;
update tblRestoList set pic='img/조선육회.jpg' where seq=4;
update tblRestoList set pic='img/나리분식.jpg' where seq=5;

update tblRestoList set pic='img/참치.jpg' where seq=6;
update tblRestoList set pic='img/핵스테이크.jpg' where seq=7;
update tblRestoList set pic='img/김선생.jpg' where seq=8;
update tblRestoList set pic='img/이디야.jpg' where seq=9;
update tblRestoList set pic='img/북어집.jpg' where seq=10;

commit;


select * from tblMenuImg;
select * from tblMenu;
update tblMenuImg set img='/img/piza.jpg' where seq=41;
update tblMenuImg set img='/img/piza2.jpg' where seq=42;

update tblMenu set img='/img/하와이안피자.jpg', content ='이 요리로 말할 것 같으면 둘이 먹다 하나 죽어도 모를 맛의 하와이안 피자' where seq=22;
update tblMenu set img='/img/불고기피자.jpg', content ='이 요리로 말할 것 같으면 둘이 먹다 둘이 죽어도 모를 맛의 불고기 피자' where seq=23;

