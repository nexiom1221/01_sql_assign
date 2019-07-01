-- sql ���� : ����ȭ
-- sql ���� ���� �� : ����ȭ04.sql
-- ���� ���� : �������� ����ȭ SQL 04 ����
--���� �̸��� : hannacne@naver.com

--�ǽ� 1) 
SELECT INITCAP(e.ename)
  FROM emp e
;
/*
INITCAP(ENAME)
Smith
Allen
Ward
Jones
Martin
Blake
Clark
King
Turner
James
Ford
Miller
J_James
J%James
*/

--�ǽ�2)
SELECT LOWER(e.ename)
  FROM emp e
;
/*
LOWER(E.ENAME)
smith
allen
ward
jones
martin
blake
clark
king
turner
james
ford
miller
j_james
j%james
*/

--�ǽ�3)
SELECT UPPER(e.ename)
  FROM emp e
;
/*
UPPER(E.ENAME)
SMITH
ALLEN
WARD
JONES
MARTIN
BLAKE
CLARK
KING
TURNER
JAMES
FORD
MILLER
J_JAMES
J%JAMES
*/

--�ǽ�4)
SELECT LENGTH('korea')
  FROM dual
;
SELECT LENGTHB('korea')
  FROM dual
;
/*
LENGTH('KOREA')
5
*/

--�ǽ�5)
SELECT LENGTH('����ȭ')
  FROM dual
;
SELECT LENGTHB('����ȭ')
  FROM dual
;
/*
LENGTH('����ȭ')
3
9
*/

--�ǽ�6)
SELECT CONCAT('SQL','����')
  FROM dual
;
/*
CONCAT('SQL','����')
SQL����
*/
--�ǽ�7)
SELECT substr('SQL ����', 5, 2)
  FROM dual
;
/*
SUBSTR('SQL����',5,2)
���
*/

--�ǽ�8)
SELECT lpad('SQL', 7, '$')
  FROM dual
;
/*
LPAD('SQL',7,'$')
$$$$SQL
*/

--�ǽ�9)
SELECT rpad('SQL', 7, '$')
  FROM dual
;
/*
RPAD('SQL',7,'$')
SQL$$$$
*/

--�ǽ�10)
SELECT ltrim('      sql ���� ')
 FROM dual
;
/*
LTRIM('SQL����')
sql ���� 
*/

--�ǽ�11)
SELECT rtrim('      sql ���� ')
  FROM dual
;
/*
RTRIM('SQL����')
      sql ����
*/

--�ǽ�12
SELECT trim('       sql ���� ')
  FROM dual
;

--�ǽ�13
SELECT   e.empno
        ,e.ename
        ,e.sal
        ,NVL(e.sal||'',0)
  FROM   emp e
;
/*
EMPNO, ENAME,   SAL,     NVL(E.SAL||'',0)
7369	SMITH	800	    800
7499	ALLEN	1600	1600
7521	WARD	1250	1250
7566	JONES	2975	2975
7654	MARTIN	1250	1250
7698	BLAKE	2850	2850
7782	CLARK	2450	2450
7839	KING	5000	5000
7844	TURNER	1500	1500
7900	JAMES	950	     950
7902	FORD	3000	3000
7934	MILLER	1300	1300
9999	J_JAMES		     0
8888	J%JAMES		       0
*/
--�ǽ�14)
SELECT   e.empno
        ,e.ename
        ,e.sal
        ,NVL(e.comm,0)+NVL(e.sal,e.sal) "�޿�+����"
 FROM    emp e
;
/*
EMPNO, ENAME,   SAL,   �޿�+����
7369	SMITH	800	     800
7499	ALLEN	1600	1900
7521	WARD	1250	1750
7566	JONES	2975	2975
7654	MARTIN	1250	2650
7698	BLAKE	2850	2850
7782	CLARK	2450	2450
7839	KING	5000	5000
7844	TURNER	1500	1500
7900	JAMES	950	     950
7902	FORD	3000	3000
7934	MILLER	1300	1300
9999	J_JAMES		
8888	J%JAMES		
*/