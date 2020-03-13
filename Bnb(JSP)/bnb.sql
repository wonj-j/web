--큰장소 테이블 만들기
CREATE TABLE tblBigArea (
	seq NUMBER NOT NULL,            /* 번호 */
	bigArea VARCHAR2(30) NOT NULL   /* 큰지역 */
);

--큰장소 기본키 만들기
ALTER TABLE tblBigArea
	ADD
		CONSTRAINT PK_tblBigArea
		PRIMARY KEY (
			seq
		);


-- 작은장소 테이블 만들기
CREATE TABLE tblSmallArea (
	seq NUMBER NOT NULL,            /* 번호 */
	smallArea VARCHAR2(30) NOT NULL /* 작은지역 */
);

--작은장소 기본키 만들기
ALTER TABLE tblSmallArea
	ADD
		CONSTRAINT PK_tblSmallArea
		PRIMARY KEY (
			seq
		);
        
--카테고리 테이블 만들기
CREATE TABLE tblCategory (
	seq NUMBER NOT NULL,        /* 번호 */
	genre VARCHAR2(15) NOT NULL /* 종류 */
);

--카테고리 기본키 만들기
ALTER TABLE tblCategory
	ADD
		CONSTRAINT PK_tblCategory
		PRIMARY KEY (
			seq
		);
--목록 테이블 만들기
CREATE TABLE tblList (
	seq NUMBER NOT NULL,    /* 번호 */
	bigAreaSeq NUMBER,      /* 큰장소번호 */
	smallAreaSeq NUMBER,    /* 작은장소번호 */
	categorySeq NUMBER      /* 카테고리 번호 */
);

--목록 기본키 만들기
ALTER TABLE tblList
	ADD
		CONSTRAINT PK_tblList
		PRIMARY KEY (
			seq
		);


--여행목록 테이블 만들기
CREATE TABLE tblTourList (
	seq NUMBER NOT NULL,            /* 번호 */
	pic VARCHAR2(30),               /* 사진 */
	writeDate DATE NOT NULL,        /* 작성날짜 */
	title VARCHAR2(30) NOT NULL,    /* 제목 */
	content VARCHAR2(500) NOT NULL, /* 내용 */
	views NUMBER NOT NULL,          /* 조회수 */
	starScore NUMBER,               /* 별점 */
	listSeq NUMBER NOT NULL         /* 목록번호 */
);

--여행목록 기본키 만들기
ALTER TABLE tblTourList
	ADD
		CONSTRAINT PK_tblTourList
		PRIMARY KEY (
			seq
		);
        

--식당목록 테이블 만들기
CREATE TABLE tblRestoList (
	seq NUMBER NOT NULL,            /* 번호 */
	pic VARCHAR2(30),               /* 사진 */
	writeDate DATE NOT NULL,        /* 작성날짜 */
	title VARCHAR(30) NOT NULL,     /* 제목 */
	content VARCHAR2(500) NOT NULL, /* 내용 */
	views NUMBER NOT NULL,          /* 조회수 */
	starScore NUMBER,               /* 별점 */
	listSeq NUMBER NOT NULL         /* 목록번호 */
);

--식당목록 기본키 만들기
ALTER TABLE tblRestoList
	ADD
		CONSTRAINT PK_tblRestoList
		PRIMARY KEY (
			seq
		);
        




-----------------------------------------------------------------

--목록 외래키 만들기
ALTER TABLE tblList
	ADD
		CONSTRAINT FK_tblBigArea_TO_tblList
		FOREIGN KEY (
			bigAreaSeq
		)
		REFERENCES tblBigArea (
			seq
		);

ALTER TABLE tblList
	ADD
		CONSTRAINT FK_tblSmallArea_TO_tblList
		FOREIGN KEY (
			smallAreaSeq
		)
		REFERENCES tblSmallArea (
			seq
		);

ALTER TABLE tblList
	ADD
		CONSTRAINT FK_tblCategory_TO_tblList
		FOREIGN KEY (
			categorySeq
		)
		REFERENCES tblCategory (
			seq
		);

--호스트 외래키 만들기
ALTER TABLE tblHost
	ADD
		CONSTRAINT FK_tblUser_TO_tblHost
		FOREIGN KEY (
			seq2
		)
		REFERENCES tblUser (
			seq
		);

--리뷰 카테고리 외래키 만들기
ALTER TABLE tblReviewCategory
	ADD
		CONSTRAINT FK_Host_TO_ReviewCategory
		FOREIGN KEY (
			hostSeq
		)
		REFERENCES tblHost (
			seq
		);

ALTER TABLE tblReviewCategory
	ADD
		CONSTRAINT FK_TourList_TO_ReviewCategory
		FOREIGN KEY (
			tourSeq
		)
		REFERENCES tblTourList (
			seq
		);
ALTER TABLE tblReviewCategory
	ADD
		CONSTRAINT FK_RestoList_TO_ReviewCategory
		FOREIGN KEY (
			restSeq
		)
		REFERENCES tblRestoList (
			seq
		);
        

--식당 목록 외래키 만들기
ALTER TABLE tblRestoList
	ADD
		CONSTRAINT FK_tblList_TO_tblRestoList
		FOREIGN KEY (
			listSeq
		)
		REFERENCES tblList (
			seq
		);

--여행 목록 외래키 만들기
ALTER TABLE tblTourList
	ADD
		CONSTRAINT FK_tblList_TO_tblTourList
		FOREIGN KEY (
			listSeq
		)
		REFERENCES tblList (
			seq
		);
        
--리뷰 외래키 만들기
ALTER TABLE tblReview
	ADD
		CONSTRAINT FK_tblUser_TO_tblReview
		FOREIGN KEY (
			userSeq
		)
		REFERENCES tblUser (
			seq
		);

ALTER TABLE tblReview
	ADD
		CONSTRAINT FK_ReviewCategory_TO_Review
		FOREIGN KEY (
			seq2
		)
		REFERENCES tblReviewCategory (
			seq
		);
--rownum 추가




select * from (select rownum as rnum, v.* from (select r.*,to_char(starscore, '0.0') as starscore2,(select count(*) from tblReview where seq2 in (select seq from tblReviewCategory where restseq =r.seq)) as review 
from tblRestoList r inner join tbllist l on r.listseq=l.seq where l.bigareaseq =1 and l.smallareaseq=1 and l.categoryseq=1 order by starscore desc, title asc) v)
where rnum between 1 and 9;


select * from (select rownum as rnum, v.* from (select r.seq, r.pic, r.writedate,r.title, r.content, r.views,to_char(starscore, '0.0') as starscore,(select count(*) from tblReview where seq2 in (select seq from tblReviewCategory where restseq =r.seq)) as review,
r.listseq from tblRestoList r inner join tbllist l on r.listseq=l.seq where l.bigareaseq =1 and l.smallareaseq=1 and l.categoryseq=1 order by starscore desc, title asc) v)
where rnum between 1 and 9;

select r.seq, r.pic, r.writedate,r.title, r.content, r.views,to_char(starscore, '0.0') as starscore,(select count(*) from tblReview where seq2 in (select seq from tblReviewCategory where restseq =r.seq)) as review,
r.listseq from tblRestoList r inner join tbllist l on r.listseq=l.seq where l.bigareaseq =1 and l.smallareaseq=1 and l.categoryseq=1 order by starscore desc, title asc;
select * from tbllist;
select * from tblReview;
select * from tblRestoList;

select to_char(starscore, '0.0') as starscore from tblRestoList;

update tblRestoList set starscore=3.3 where seq=4;



select vw.seq as seq, vw.starscore as point, vw.content as content, vw.dates as dates, vw.userseq as userseq, vw.seq2 as seq2, vw.depth as depth, vw.re as re, vw.img as img
from
(select r.*, (select rc.tourseq  from tblreviewcategory rc where seq=r.seq2) as re,
(select u.pic from tbluser u where r.userseq = u.seq) as img
from tblreview r order by dates desc) vw
where re=1;
   

drop table tblMenu;
--메뉴 테이블 만들기
CREATE TABLE tblMenu (
	seq NUMBER NOT NULL,             /* 번호 */
	name VARCHAR2(50) NOT NULL,      /* 이름 */
    price NUMBER NOT NULL,     /* 가격 */
    hit VARCHAR2(10) NOT NULL,       /* 히트유무 */
    img VARCHAR2(100) NOT NULL,      /* 이미지 */ 
    content VARCHAR2(300) NOT NULL,  /* 설명   */
    restoListSeq NUMBER              /* 식당목록 번호 */
);

--메뉴 기본키 만들기
ALTER TABLE tblMenu
	ADD
		CONSTRAINT PK_tblMenu
		PRIMARY KEY (
			seq
		);
--메뉴 외래키 만들기
ALTER TABLE tblMenu
	ADD
		CONSTRAINT FK_tblMenu_TO_tblRestoList
		FOREIGN KEY (
			restoListSeq
		)
		REFERENCES tblRestoList (
			seq
		);
--메뉴 시퀀스        
create SEQUENCE menu_seq;





drop table tblMenuImg;
--메뉴사진 테이블 만들기
CREATE TABLE tblMenuImg (
	seq NUMBER NOT NULL,             /* 번호 */
    img VARCHAR2(100) NOT NULL,      /* 이미지 */ 
    restoListSeq NUMBER             /* 메뉴 번호 */
);

--메뉴사진 기본키 만들기
ALTER TABLE tblMenuImg
	ADD
		CONSTRAINT PK_tblMenuImg
		PRIMARY KEY (
			seq
		);
--메뉴사진 외래키 만들기
ALTER TABLE tblMenuImg
	ADD
		CONSTRAINT FK_tblMenuImg_TO_tblMenu
		FOREIGN KEY (
			restoListSeq
		)
		REFERENCES tblRestoList (
			seq
		);
--메뉴사진 시퀀스        
create SEQUENCE menuImg_seq;