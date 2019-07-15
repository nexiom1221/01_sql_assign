-- 12 ����


-- �ǽ� 5)
DELETE customer;

-- �ǽ� 6)
TRUNCATE TABLE customer;

-- �ǽ� 1)
DROP SEQUENCE seq_cust_userid;

CREATE SEQUENCE seq_cust_userid
START WITH 1
MAXVALUE 99
NOCYCLE;

-- �ǽ� 2)
SELECT *
  FROM USER_SEQUENCES
;

-- �ǽ� 3)
CREATE TABLE NEW_CUSTOMER
AS 
SELECT *
  FROM customer
    WHERE 1= 2
;
CREATE INDEX idx_cust_userid
ON NEW_CUSTOMER (userid)
;

-- �ǽ� 4)
DESC USER_INDEXES;

DESC USER_IND_COLUMNS;

-- �ǽ� 5)
SELECT INDEX_NAME
  FROM USER_INDEXES i
 WHERE INDEX_NAME = 'idx_cust_userid'
;

-- �ǽ� 6)
SELECT INDEX_NAME
  FROM USER_IND_COLUMNS i
 WHERE INDEX_NAME = 'idx_cust_userid'
;

-- �ǽ� 7)
DROP INDEX idx_cust_userid;

-- �ǽ� 8)
SELECT INDEX_NAME
  FROM USER_IND_COLUMNS
 WHERE INDEX_NAME = 'idx_cust_usterid'
;

-- �ǽ� 9)
CREATE VIEW v_cust_silver_regdt
AS
SELECT c.userid ���̵�
      ,c.regdate �����
  FROM customer c
 WHERE c.grade = 'SILVER'
;

-- �ǽ� 10)
SELECT *
  FROM v_cust_silver_regdt
;

-- �ǽ� 11)
DESC USER_VIEWS;

-- �ǽ� 12)
SELECT view_name
      ,text
  FROM USER_VIEWS
;

-- �ǽ� 13)
DROP VIEW v_cust_silver_regdt;

-- �ǽ� 14)
SELECT *
  FROM USER_VIEWS
;
