-- sql ���� : ����ȭ
-- sql ���� ���� �� : ����ȭ01.sql
-- ���� ���� : �������� ����ȭ SQL 01 ����
--���� �̸��� : hannacne@naver.com

-- �ǽ�14)
SELECT *
  FROM emp
 WHERE comm!=0
 ;
SELECT *
  FROM emp
 WHERE not comm=0
;
SELECT *
  FROM emp 
 WHERE comm <> 0
;
/*
EMPNO, ENAME,    JOB,       MGR,   HIREDATE,   SAL,   COMM,   DEPTNO
7499	ALLEN	SALESMAN	7698	81/02/20	1600	300	    30
7521	WARD	SALESMAN	7698	81/02/22	1250	500	    30
7654	MARTIN	SALESMAN	7698	81/09/28	1250	1400	30
*/

-- �ǽ� 15)
SELECT *
  FROM emp
 WHERE comm is not null
;
/*
EMPNO, ENAME,      JOB,      MGR,   HIREDATE,     SAL, COMM, DEPTNO
7499	ALLEN	SALESMAN	7698	81/02/20	1600	300	   30
7521	WARD	SALESMAN	7698	81/02/22	1250	500  	30
7654	MARTIN	SALESMAN	7698	81/09/28	1250	1400	30
7844	TURNER	SALESMAN	7698	81/09/08	1500	0	    30
*/

-- �ǽ� 16)
SELECT *
  FROM emp
 WHERE deptno=20 AND sal>2500
;
/*
EMPNO, ENAME,    JOB,   MGR,    HIREDATE,   SAL, COMM, DEPTNO
7566	JONES	MANAGER	7839	81/04/02	2975		20
7902	FORD	ANALYST	7566	81/12/03	3000		20
*/

-- �ǽ� 17)
SELECT *
  FROM emp
 WHERE job='MANAGER' OR deptno=10
;
/*
EMPNO, ENAME, JOB,       MGR,   HIREDATE,  SAL,  COMM, DEPTNO
---------------------------------------------------------------------
7566	JONES	MANAGER	7839	81/04/02	2975		20
7698	BLAKE	MANAGER	7839	81/05/01	2850		30
7782	CLARK	MANAGER	7839	81/06/09	2450		10
7839	KING	PRESIDENT		81/11/17	5000		10
7934	MILLER	CLERK	7782	82/01/23	1300		10
*/

-- �ǽ� 18)
SELECT *
  FROM emp
 WHERE job IN (MANAGER,CLERK,SALEMAN)
;