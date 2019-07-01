--sql 과제 : 오종화

-- 실습 1)
CREATE TABLE CUSTOMER
( userid           VARCHAR2(4)  
 ,name             VARCHAR2(30) NOT NULL
 ,birthyear        NUMBER  
 ,regdate          DATE         DEFAULT sysdate
 ,address          VARCHAR2(30)
);
-- Table CUSTOMER이(가) 생성되었습니다.

-- 실습 2)
DESC customer;
/*
이름        널?       유형           
--------- -------- ------------ 
USERID             VARCHAR2(4)  
NAME      NOT NULL VARCHAR2(30) 
BIRTHYEAR          NUMBER       
REGDATE            DATE         
ADDRESS            VARCHAR2(30) 
*/

-- 실습 3)
CREATE TABLE NEW_CUST
AS
SELECT m.*
  FROM customer m
 WHERE 1 = 2
;
-- Table NEW_CUST이(가) 생성되었습니다.

-- 실습 4)
DESC new_cust;
/*
이름        널?       유형           
--------- -------- ------------ 
USERID             VARCHAR2(4)  
NAME      NOT NULL VARCHAR2(30) 
BIRTHYEAR          NUMBER       
REGDATE            DATE         
ADDRESS            VARCHAR2(30) 
*/

-- 실습 5)
CREATE TABLE SALESMAN
AS
SELECT e.job
  FROM emp e
 WHERE e.job = 'SALESMAN'
;
-- Table SALESMAN이(가) 생성되었습니다.

-- 실습 6)
SELECT *
  FROM salesman
;

-- 실습 7)
ALTER TABLE CUSTOMER ADD (phone VARCHAR2(11));
ALTER TABLE CUSTOMER ADD (grade VARCHAR2(30) CHECK (grade IN('VIP', 'GOLD', 'SILVER')));

-- 실습 8)
ALTER TABLE CUSTOMER DROP COLUMN grade;
ALTER TABLE CUSTOMER ADD (grade VARCHAR2(30) CONSTRAINT grade CHECK (grade IN('VIP', 'GOLD', 'SILVER')));


-- 실습 9)
ALTER TABLE CUSTOMER MODIFY (phone VARCHAR2(4));
ALTER TABLE CUSTOMER MODIFY (userid VARCHAR2(30));
ALTER TABLE CUSTOMER MODIFY (userid NUMBER(4));
ALTER TABLE CUSTOMER MODIFY (userid VARCHAR2(30));

------추가 과제 ----------------------------------

-- 실습 10) 
/*  세 개의 테이블을 생성하는 구문을 작성
3번 방식

GAME
GAME_CODE NUMBER(2) PRIMARY KEY
GAME_NAME VARCHAR2(200) NOT NULL

GMEMBER
ID      VARCHAR2(4) PRIMARY KEY     
NAME    VARCHAR2(15) NOT NULL


MEMBER_GAME_HISTORY
ID      VARCHAR2(4) FK 설정,FK 이름: FK_ID (GMEMBER 테이블의 ID 컬럼을 참조하도록 설정)
YEAR    NUMBER(4)  -- 게임을 한 년도
GAME_CODE  NUMBER(2)    FK 설정, FK 이름 : FK_GAME_CODE (GAME 테이블의 GAME_CODE 컬럼을 참조하도록 설정)

*/
CREATE TABLE GAME
(GAME_CODE NUMBER(2)
,GAME_NAME VARCHAR2(200) NOT NULL
,CONSTRAINT pk_game PRIMARY KEY (GAME_CODE)
);

CREATE TABLE GMEMBER
(ID      VARCHAR2(4)
,NAME    VARCHAR2(15) NOT NULL
,CONSTRAINT pk_GMEMBER PRIMARY KEY (ID)
);

CREATE TABLE MEMBER_GAME_HISTORY
(ID        VARCHAR2(4)
,YEAR      NUMBER(4)
,GAME_CODE NUMBER(2)
,CONSTRAINT FK_ID  FOREIGN KEY(ID) REFERENCES GMEMBER(ID)
,CONSTRAINT FK_GAME_CODE FOREIGN KEY(GAME_CODE) REFERENCES GAME(GAME_CODE)
);