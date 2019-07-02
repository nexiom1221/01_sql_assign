-- SQL 과제 : 오종화

-- 실습 26)
SELECT   e.deptno
        ,SUM(DECODE(e.job ,'CLERK',    300
                          ,'SALESMAN', 450
                          ,'MANAGER',  600
                          ,'ANALYST',  800
                          ,'PRESIDENT',1000)) as "자기계발비"
  FROM emp e
 GROUP BY e.deptno
;

-- 실습 27)
SELECT   e.deptno
        ,e.job
        ,SUM(DECODE(e.job ,'CLERK',    300
                          ,'SALESMAN', 450
                          ,'MANAGER',  600
                          ,'ANALYST',  800
                          ,'PRESIDENT',1000)) as "자기계발비"
  FROM emp e
 GROUP BY e.deptno,e.job
 ORDER BY e.deptno ASC , e.job DESC
;