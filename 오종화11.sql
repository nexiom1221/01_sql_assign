-- sql ����: ����ȭ

-- �ǽ�1)
INSERT INTO customer
VALUES ('C001', '�����', 1988, sysdate, '���',NULL ,NULL);
INSERT INTO customer
VALUES ('C002', '��ȿ��', 1979, sysdate, '����',NULL ,NULL);
INSERT INTO customer
VALUES ('C003', '����',   1977, sysdate, '����',NULL ,NULL);

-- �ǽ�2)
UPDATE customer c
   SET c.name = '������', c.birthyear = '1976'
 WHERE c.userid = 'C001'
;

-- �ǽ�3)
UPDATE customer c
   SET c.address = NULL
;
UPDATE customer c
   SET c.address = '����'
 WHERE c.userid = 'C001'
;
UPDATE customer c
   SET c.address = '����'
 WHERE c.userid = 'C002'
;
UPDATE customer c
   SET c.address = '����'
 WHERE c.userid = 'C003'
;

-- �ǽ�4)
DELETE customer c
 WHERE c.userid = 'C003'
;

-- �ǽ�5)
DELETE customer;

-- �ǽ�6)
TRUNCATE TABLE customer;