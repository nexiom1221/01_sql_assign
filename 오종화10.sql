--sql ���� : ����ȭ

-- �ǽ� 1)
CREATE TABLE CUSTOMER
( userid           VARCHAR2(4)  
 ,name             VARCHAR2(30) NOT NULL
 ,birthyear        NUMBER  
 ,regdate          DATE         DEFAULT sysdate
 ,address          VARCHAR2(30)
);
-- Table CUSTOMER��(��) �����Ǿ����ϴ�.

-- �ǽ� 2)
DESC customer;
/*
�̸�        ��?       ����           
--------- -------- ------------ 
USERID             VARCHAR2(4)  
NAME      NOT NULL VARCHAR2(30) 
BIRTHYEAR          NUMBER       
REGDATE            DATE         
ADDRESS            VARCHAR2(30) 
*/

-- �ǽ� 3)
CREATE TABLE NEW_CUST
AS
SELECT m.*
  FROM customer m
 WHERE 1 = 2
;
-- Table NEW_CUST��(��) �����Ǿ����ϴ�.

-- �ǽ� 4)
DESC new_cust;
/*
�̸�        ��?       ����           
--------- -------- ------------ 
USERID             VARCHAR2(4)  
NAME      NOT NULL VARCHAR2(30) 
BIRTHYEAR          NUMBER       
REGDATE            DATE         
ADDRESS            VARCHAR2(30) 
*/

-- �ǽ� 5)
CREATE TABLE SALESMAN
AS
SELECT e.job
  FROM emp e
 WHERE e.job = 'SALESMAN'
;
-- Table SALESMAN��(��) �����Ǿ����ϴ�.

-- �ǽ� 6)
SELECT *
  FROM salesman
;

-- �ǽ� 7)
ALTER TABLE CUSTOMER ADD (phone VARCHAR2(11));
ALTER TABLE CUSTOMER ADD (grade VARCHAR2(30) CHECK (grade IN('VIP', 'GOLD', 'SILVER')));

-- �ǽ� 8)
ALTER TABLE CUSTOMER DROP COLUMN grade;
ALTER TABLE CUSTOMER ADD (grade VARCHAR2(30) CONSTRAINT grade CHECK (grade IN('VIP', 'GOLD', 'SILVER')));


-- �ǽ� 9)
ALTER TABLE CUSTOMER MODIFY (phone VARCHAR2(4));
ALTER TABLE CUSTOMER MODIFY (userid VARCHAR2(30));
ALTER TABLE CUSTOMER MODIFY (userid NUMBER(4));
ALTER TABLE CUSTOMER MODIFY (userid VARCHAR2(30));

------�߰� ���� ----------------------------------

-- �ǽ� 10) 
/*  �� ���� ���̺��� �����ϴ� ������ �ۼ�
3�� ���

GAME
GAME_CODE NUMBER(2) PRIMARY KEY
GAME_NAME VARCHAR2(200) NOT NULL

GMEMBER
ID      VARCHAR2(4) PRIMARY KEY     
NAME    VARCHAR2(15) NOT NULL


MEMBER_GAME_HISTORY
ID      VARCHAR2(4) FK ����,FK �̸�: FK_ID (GMEMBER ���̺��� ID �÷��� �����ϵ��� ����)
YEAR    NUMBER(4)  -- ������ �� �⵵
GAME_CODE  NUMBER(2)    FK ����, FK �̸� : FK_GAME_CODE (GAME ���̺��� GAME_CODE �÷��� �����ϵ��� ����)

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