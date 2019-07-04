-- SQL 과제 : 오종화

-- 실습 1)
SELECT e.empno
      ,e.ename
      ,e.hiredate
      ,e.comm
      ,e.job
      ,e.mgr
      ,e.sal
      ,d.dname
      ,d.loc
  FROM emp e NATURAL JOIN dept d
;

-- 실습 2)
SELECT e.empno
      ,e.ename
      ,e.hiredate
      ,e.comm
      ,e.job
      ,e.mgr
      ,e.sal
      ,d.dname
      ,d.loc
  FROM emp e JOIN dept d USING(deptno)
;

-- 실습 3)
SELECT e.empno 사번
      ,e.ename 이름
      ,e1.ename 상사이름
  FROM emp e
      ,emp e1
 WHERE e.mgr = e1.empno(+)
;

SELECT e.empno 사번
      ,e.ename 이름
      ,e1.ename 상사이름
  FROM emp e LEFT OUTER JOIN emp e1 ON e.mgr = e1.empno
;

-- 실습 4)
SELECT e.empno 사번
      ,e.ename 이름
      ,e1.ename 상사이름
  FROM emp e
      ,emp e1
 WHERE e.mgr(+) = e1.empno
 ORDER BY e.empno DESC
;
