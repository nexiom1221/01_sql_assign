-- sql 과제: 오종화

-- 실습1)
INSERT INTO customer
VALUES ('C001', '김수현', 1988, sysdate, '경기',NULL ,NULL);
INSERT INTO customer
VALUES ('C002', '이효리', 1979, sysdate, '제주',NULL ,NULL);
INSERT INTO customer
VALUES ('C003', '원빈',   1977, sysdate, '강원',NULL ,NULL);

-- 실습2)
UPDATE customer c
   SET c.name = '차태현', c.birthyear = '1976'
 WHERE c.userid = 'C001'
;

-- 실습3)
UPDATE customer c
   SET c.address = NULL
;
UPDATE customer c
   SET c.address = '서울'
 WHERE c.userid = 'C001'
;
UPDATE customer c
   SET c.address = '서울'
 WHERE c.userid = 'C002'
;
UPDATE customer c
   SET c.address = '서울'
 WHERE c.userid = 'C003'
;

-- 실습4)
DELETE customer c
 WHERE c.userid = 'C003'
;

-- 실습5)
DELETE customer;

-- 실습6)
TRUNCATE TABLE customer;