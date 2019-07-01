-- û���� ���� IT ���� �߰� �׽�Ʈ 1�� : SQL
/*
���� :  ��ǻ�Ͱ��к�                      
�̸� :  ����ȭ
�г� :  3�г�
*/

-- emp���̺���
--1.	��� ������ ���, �̸�, ����, �޿��� ��ȸ�Ͻÿ�. 
SELECT   e.empno
        ,e.ename
        ,e.job
        ,e.sal
  FROM   emp e
;
/*
EMPNO, ENAME,     JOB,       SAL
7369	SMITH	CLERK	     800
7499	ALLEN	SALESMAN	1600
7521	WARD	SALESMAN	1250
7566	JONES	MANAGER	     2975
7654	MARTIN	SALESMAN	1250
7698	BLAKE	MANAGER   	2850
7782	CLARK	MANAGER	    2450
7839	KING	PRESIDENT	5000
7844	TURNER	SALESMAN	1500
7900	JAMES	CLERK	     950
7902	FORD	ANALYST	     3000
7934	MILLER	CLERK	     1300
9999	J_JAMES	CLERK	
8888	J%JAMES	CLERK	
*/
--2.	�Ŵ����� �ִ� ������ ���, �̸�, �Ŵ��� ����� ��ȸ�Ͻÿ�.
SELECT   e.empno
        ,e.ename
        ,e.mgr
  FROM   emp e
 WHERE   e.job='MANAGER'
;
/*
EMPNO, ENAME   MGR
7566	JONES  7839
7698	BLAKE  7839
7782	CLARK  7839
*/
--3.	��� ������ ���Ͽ�, ���, �̸�, �޿�, �� �޿��� ��ȸ�Ͻÿ�.
SELECT   e.empno
        ,e.ename
        ,e.sal
        ,e.sal*12 AS ���޿�
  FROM   emp e
;
/*
EMPNO, ENAME, SAL,      ���޿�
7369	SMITH	800	    9600
7499	ALLEN	1600	19200
7521	WARD	1250	15000
7566	JONES	2975	35700
7654	MARTIN	1250	15000
7698	BLAKE	2850	34200
7782	CLARK	2450	29400
7839	KING	5000	60000
7844	TURNER	1500	18000
7900	JAMES	950	    11400
7902	FORD	3000	36000
7934	MILLER	1300	15600
9999	J_JAMES		
8888	J%JAMES	
*/
--4.	30�� �μ� �Ҽ��� ������ ���, �̸�, �μ���ȣ�� ��ȸ�Ͻÿ�.
SELECT   e.empno
        ,e.ename
        ,e.deptno
  FROM   emp e
 WHERE   e.deptno=30
;
/*
EMPNO, ENAME, DEPTNO
7499	ALLEN	30
7521	WARD	30
7654	MARTIN	30
7698	BLAKE	30
7844	TURNER	30
7900	JAMES	30
*/
--5.	�޿��� 2000 ~ 4000 ������ ������ ���, �̸�, �޿��� ��ȸ�Ͻÿ�.
SELECT   e.empno
        ,e.ename
        ,e.sal
  FROM   emp e
 WHERE   e.sal BETWEEN 2000 AND 4000
;
/*
EMPNO, ENAME, SAL
7566	JONES	2975
7698	BLAKE	2850
7782	CLARK	2450
7902	FORD	3000
*/
--6.	������ �޴� ������ ���, �̸�, ������ ��ȸ�Ͻÿ�.
SELECT   e.empno
        ,e.ename
        ,e.comm
  FROM   emp e
 WHERE   e.comm IS NOT NULL AND e.comm!=0
;
/*
EMPNO, ENAME, COMM
7499	ALLEN	300
7521	WARD	500
7654	MARTIN	1400
*/
--7.	�������� �޿��� 10% �λ�� ��Ȳ�� �����ϰ�, 
--      ���� �޿��κ��� 10% �λ�� �޿��� ���Ͽ� 
--      ���, �̸�, ���޿�, ���λ�޿� �� ������ ��ȸ�Ͻÿ�.
SELECT   e.empno
        ,e.ename
        ,e.sal
        ,e.sal * 1.1 AS ���λ�޿�
  FROM   emp e
;
/*
EMPNO, ENAME, SAL,    ���λ�޿�
7369	SMITH	800	     880
7499	ALLEN	1600	1760
7521	WARD	1250	1375
7566	JONES	2975	3272.5
7654	MARTIN	1250	1375
7698	BLAKE	2850	3135
7782	CLARK	2450	2695
7839	KING	5000	5500
7844	TURNER	1500	1650
7900	JAMES	950	    1045
7902	FORD	3000	3300
7934	MILLER	1300	1430
9999	J_JAMES		
8888	J%JAMES	
*/
--8.	10�� �μ� �Ҽ��� ������ ���Ͽ� �޿��� 15% �λ�� ��Ȳ�� �����ϰ�, 
--      ���� �޿��κ��� 15%�λ�� �޿��� ���Ͽ� 
--      ���, �̸�, ���޿�, �λ��, ���λ�޿�, �μ���ȣ �� ��ȸ�Ͻÿ�.
SELECT   e.empno
        ,e.ename
        ,e.sal
        ,e.sal * 0.15 AS �λ��
        ,e.sal * 1.15 AS ���λ�޿�
        ,e.deptno
  FROM   emp e
 WHERE   e.deptno=10
;
/*
EMPNO, ENAME, SAL,     �λ��,  ���λ�޿�, DEPTNO
7782	CLARK	2450	367.5	2817.5	10
7839	KING	5000	750	    5750	10
7934	MILLER	1300	195	    1495	10
*/
--9.	��� ������ ���Ͽ� ���޿��� 2500 �����̰�
--      15% �λ�� �޿��� 2800�� �Ѵ� ������ 
--      ���, �̸�, ���޿�, ���λ�޿�, �μ���ȣ�� ��ȸ�Ͻÿ�.
SELECT   e.empno
        ,e.ename
        ,e.sal
        ,e.sal * 1.15 AS �λ�ȱ޿�
        ,e.deptno
  FROM   emp e
 WHERE   e.sal<2500 AND e.sal*1.15>2800
;
/*
EMPNO, ENAME, SAL, �λ�ȱ޿�   DEPTNO
7782	CLARK	2450	2817.5   10
*/
--10.	�̸��� E�� ���� ������ ���, �̸��� ��ȸ�Ͻÿ�.
SELECT   e.empno
        ,e.ename
  FROM   emp e
 WHERE   e.ename LIKE '%E%'
;
/*
EMPNO, ENAME
7499	ALLEN
7566	JONES
7698	BLAKE
7844	TURNER
7900	JAMES
7934	MILLER
9999	J_JAMES
8888	J%JAMES
*/

--dept ���̺���
--1.	BOSTON �� ��ġ�� �μ��� ��� ������ ��ȸ�Ͻÿ�.
SELECT   d.DEPTNO
        ,d.DNAME
        ,d.LOC
  FROM   dept d
 WHERE   d.LOC='BOSTON'
;
/*
DEPTNO, DNAME, LOC
40	OPERATIONS	BOSTON
*/
--2.	DALLAS, NEW YORK �� ��ġ�� �μ��� ��� ������ ��ȸ�Ͻÿ�.
SELECT   d.deptno
        ,d.dname
        ,d.loc
  FROM   dept d
 WHERE   d.loc='DALLAS' OR d.loc= 'NEW YORK'
;
/*
DEPTNO, DNAME,   LOC
10	ACCOUNTING	NEW YORK
20	RESEARCH	DALLAS
*/