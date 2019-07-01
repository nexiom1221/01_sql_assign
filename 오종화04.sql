-- sql 과제 : 오종화
-- sql 과제 파일 명 : 오종화04.sql
-- 제출 제목 : 선문대학 오종화 SQL 04 과제
--강사 이메일 : hannacne@naver.com

--실습 1) 
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

--실습2)
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

--실습3)
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

--실습4)
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

--실습5)
SELECT LENGTH('오종화')
  FROM dual
;
SELECT LENGTHB('오종화')
  FROM dual
;
/*
LENGTH('오종화')
3
9
*/

--실습6)
SELECT CONCAT('SQL','배우기')
  FROM dual
;
/*
CONCAT('SQL','배우기')
SQL배우기
*/
--실습7)
SELECT substr('SQL 배우기', 5, 2)
  FROM dual
;
/*
SUBSTR('SQL배우기',5,2)
배우
*/

--실습8)
SELECT lpad('SQL', 7, '$')
  FROM dual
;
/*
LPAD('SQL',7,'$')
$$$$SQL
*/

--실습9)
SELECT rpad('SQL', 7, '$')
  FROM dual
;
/*
RPAD('SQL',7,'$')
SQL$$$$
*/

--실습10)
SELECT ltrim('      sql 배우기 ')
 FROM dual
;
/*
LTRIM('SQL배우기')
sql 배우기 
*/

--실습11)
SELECT rtrim('      sql 배우기 ')
  FROM dual
;
/*
RTRIM('SQL배우기')
      sql 배우기
*/

--실습12
SELECT trim('       sql 배우기 ')
  FROM dual
;

--실습13
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
--실습14)
SELECT   e.empno
        ,e.ename
        ,e.sal
        ,NVL(e.comm,0)+NVL(e.sal,e.sal) "급여+수당"
 FROM    emp e
;
/*
EMPNO, ENAME,   SAL,   급여+수당
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