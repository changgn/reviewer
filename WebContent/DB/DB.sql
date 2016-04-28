
/* Drop Triggers */

DROP TRIGGER TRI_board_board_num;
DROP TRIGGER TRI_coment_coment_num;
DROP TRIGGER TRI_board_recommend_num;



/* Drop Tables */

DROP TABLE coment CASCADE CONSTRAINTS;
DROP TABLE photo CASCADE CONSTRAINTS;
DROP TABLE screp CASCADE CONSTRAINTS;
DROP TABLE board CASCADE CONSTRAINTS;
DROP TABLE members_category CASCADE CONSTRAINTS;
DROP TABLE category CASCADE CONSTRAINTS;
DROP TABLE follow CASCADE CONSTRAINTS;
DROP TABLE members CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_board_board_num;
DROP SEQUENCE SEQ_coment_coment_num;




/* Create Sequences */

CREATE SEQUENCE SEQ_board_board_num INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_coment_coment_num INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE board
(
	board_num number NOT NULL,
	id varchar2(20) NOT NULL,
	category_id varchar2(20) NOT NULL UNIQUE,
	content varchar2(4000) NOT NULL,
	write_date date NOT NULL,
	recommend_num number DEFAULT 0,
	report_num number DEFAULT 0,
	coment_num number DEFAULT 0,
	screp number DEFAULT 0,
	PRIMARY KEY (board_num)
);


CREATE TABLE category
(
	category_id varchar2(20) NOT NULL,
	group1 varchar2(50),
	group2 varchar2(50),
	group3 varchar2(50),
	PRIMARY KEY (category_id)
);


CREATE TABLE coment
(
	coment_num number NOT NULL,
	content_num number NOT NULL,
	id varchar2(20) NOT NULL,
	content varchar2(4000) NOT NULL,
	write_date date NOT NULL,
	PRIMARY KEY (coment_num)
);


CREATE TABLE follow
(
	from_id varchar2(20) NOT NULL,
	to_id varchar2(20) NOT NULL
);


CREATE TABLE members
(
	id varchar2(20) NOT NULL,
	passwd varchar2(20) NOT NULL,
	name varchar2(20) NOT NULL,
	birth varchar2(9) NOT NULL,
	gender varchar2(5) NOT NULL,
	email varchar2(50) NOT NULL,
	phone_num varchar2(14) NOT NULL,
	reg_date date NOT NULL,
	recommend_num number,
	PRIMARY KEY (id)
);


CREATE TABLE members_category
(
	id varchar2(20) NOT NULL,
	category_id varchar2(20) NOT NULL
);


CREATE TABLE photo
(
	fileName varchar2(100) NOT NULL,
	content_num number NOT NULL,
	realPath varchar2(200) NOT NULL
);


CREATE TABLE screp
(
	id varchar2(20) NOT NULL,
	content_num number NOT NULL
);



/* Create Foreign Keys */

ALTER TABLE coment
	ADD FOREIGN KEY (content_num)
	REFERENCES board (board_num)
;


ALTER TABLE photo
	ADD FOREIGN KEY (content_num)
	REFERENCES board (board_num)
;


ALTER TABLE screp
	ADD FOREIGN KEY (content_num)
	REFERENCES board (board_num)
;


ALTER TABLE board
	ADD FOREIGN KEY (category_id)
	REFERENCES category (category_id)
;


ALTER TABLE members_category
	ADD FOREIGN KEY (category_id)
	REFERENCES category (category_id)
;


ALTER TABLE board
	ADD FOREIGN KEY (id)
	REFERENCES members (id)
;


ALTER TABLE follow
	ADD FOREIGN KEY (to_id)
	REFERENCES members (id)
;


ALTER TABLE follow
	ADD FOREIGN KEY (from_id)
	REFERENCES members (id)
;


ALTER TABLE members_category
	ADD FOREIGN KEY (id)
	REFERENCES members (id)
;


ALTER TABLE screp
	ADD FOREIGN KEY (id)
	REFERENCES members (id)
;



/* Create Triggers */

CREATE OR REPLACE TRIGGER TRI_board_board_num BEFORE INSERT ON board
FOR EACH ROW
BEGIN
	SELECT SEQ_board_board_num.nextval
	INTO :new.board_num
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_coment_coment_num BEFORE INSERT ON coment
FOR EACH ROW
BEGIN
	SELECT SEQ_coment_coment_num.nextval
	INTO :new.coment_num
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_board_recommend_num AFTER UPDATE ON board
REFERENCING OLD AS old NEW AS new
FOR EACH ROW
declare
	oldRNum NUMBER;
	newRNum NUMBER;
BEGIN
	oldRNum := :old.recommend_num;
	newRNum := :new.recommend_num;
	
	IF oldRNum = (newRNum +1) THEN
	UPDATE members
	SET recommend_num = recommend_num + 1
	WHERE id = :new.id;
	END IF;
END;

/





/* Comments */

COMMENT ON COLUMN board.board_num IS '글번호';
COMMENT ON COLUMN board.id IS '작성자';
COMMENT ON COLUMN board.category_id IS '카테고리 분류 번호';
COMMENT ON COLUMN board.content IS '본문내용';
COMMENT ON COLUMN board.write_date IS '작성시간';
COMMENT ON COLUMN board.recommend_num IS '추천수';
COMMENT ON COLUMN board.report_num IS '신고수';
COMMENT ON COLUMN board.screp IS '스크랩수';
COMMENT ON COLUMN category.category_id IS '카테고리 번호';
COMMENT ON COLUMN category.group1 IS '대분류';
COMMENT ON COLUMN category.group2 IS '중분류';
COMMENT ON COLUMN category.group3 IS '소분류';
COMMENT ON COLUMN coment.coment_num IS '댓글번호';
COMMENT ON COLUMN coment.content_num IS '본문내용 번호';
COMMENT ON COLUMN coment.id IS '아이디';
COMMENT ON COLUMN coment.content IS '글내용';
COMMENT ON COLUMN coment.write_date IS '작성시간';
COMMENT ON COLUMN follow.from_id IS '팔로우';
COMMENT ON COLUMN follow.to_id IS '팔로잉';
COMMENT ON COLUMN members.id IS '아이디';
COMMENT ON COLUMN members.passwd IS '패스워드';
COMMENT ON COLUMN members.name IS '이름';
COMMENT ON COLUMN members.birth IS '생년월일';
COMMENT ON COLUMN members.email IS '이메일';
COMMENT ON COLUMN members.phone_num IS '휴대폰번호';
COMMENT ON COLUMN members.reg_date IS '가입시간';
COMMENT ON COLUMN members.recommend_num IS '추천수';
COMMENT ON COLUMN members_category.id IS '아이디';
COMMENT ON COLUMN members_category.category_id IS '카테고리 번호';
COMMENT ON COLUMN photo.fileName IS '파일이름';
COMMENT ON COLUMN photo.content_num IS '본문번호';
COMMENT ON COLUMN photo.realPath IS '절대경로';
COMMENT ON COLUMN photo.fileSize IS '파일크기';
COMMENT ON COLUMN screp.id IS '스크랩 아이디';
COMMENT ON COLUMN screp.content_num IS '글번호';



