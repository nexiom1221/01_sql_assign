-- 12 부터


-- 실습 5)
DELETE customer;

-- 실습 6)
TRUNCATE TABLE customer;

-- 실습 1)
DROP SEQUENCE seq_cust_userid;

CREATE SEQUENCE seq_cust_userid
START WITH 1
MAXVALUE 99
NOCYCLE;

-- 실습 2)
SELECT *
  FROM USER_SEQUENCES
;

-- 실습 3)
CREATE TABLE NEW_CUSTOMER
AS 
SELECT *
  FROM customer
    WHERE 1= 2
;
CREATE INDEX idx_cust_userid
ON NEW_CUSTOMER (userid)
;

-- 실습 4)
DESC USER_INDEXES;

DESC USER_IND_COLUMNS;

-- 실습 5)
SELECT INDEX_NAME
  FROM USER_INDEXES i
 WHERE INDEX_NAME = 'idx_cust_userid'
;

-- 실습 6)
SELECT INDEX_NAME
  FROM USER_IND_COLUMNS i
 WHERE INDEX_NAME = 'idx_cust_userid'
;

-- 실습 7)
DROP INDEX idx_cust_userid;

-- 실습 8)
SELECT INDEX_NAME
  FROM USER_IND_COLUMNS
 WHERE INDEX_NAME = 'idx_cust_usterid'
;

-- 실습 9)
CREATE VIEW v_cust_silver_regdt
AS
SELECT c.userid 아이디
      ,c.regdate 등록일
  FROM customer c
 WHERE c.grade = 'SILVER'
;

-- 실습 10)
SELECT *
  FROM v_cust_silver_regdt
;

-- 실습 11)
DESC USER_VIEWS;

-- 실습 12)
SELECT view_name
      ,text
  FROM USER_VIEWS
;

-- 실습 13)
DROP VIEW v_cust_silver_regdt;

-- 실습 14)
SELECT *
  FROM USER_VIEWS
;
