-- SQL ���� : ����ȭ

-- �ǽ� 26)
SELECT   e.deptno
        ,SUM(DECODE(e.job ,'CLERK',    300
                          ,'SALESMAN', 450
                          ,'MANAGER',  600
                          ,'ANALYST',  800
                          ,'PRESIDENT',1000)) as "�ڱ��ߺ�"
  FROM emp e
 GROUP BY e.deptno
;

-- �ǽ� 27)
SELECT   e.deptno
        ,e.job
        ,SUM(DECODE(e.job ,'CLERK',    300
                          ,'SALESMAN', 450
                          ,'MANAGER',  600
                          ,'ANALYST',  800
                          ,'PRESIDENT',1000)) as "�ڱ��ߺ�"
  FROM emp e
 GROUP BY e.deptno,e.job
 ORDER BY e.deptno ASC , e.job DESC
;