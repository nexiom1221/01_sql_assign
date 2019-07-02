-- sql 과제 : 오종화

-- 실습 16)
SELECT  e.empno as 사원번호
       ,e.ename as 이름
       ,e.sal as 급여
       ,CASE e.job WHEN 'CLERK'     THEN '$300'
                   WHEN 'SALESMAN'  THEN '$450'
                   WHEN 'MANAGER'   THEN '$600'
                   WHEN 'ANALYST'   THEN '$800'
                   WHEN 'PRESIDENT' THEN '$1000' 
                   END as "자기 계발비"
  FROM emp e
;

-- 실습 17)
SELECT  e.empno as 사원번호
       ,e.ename as 이름
       ,e.sal as 급여
       ,CASE WHEN e.job='CLERK'     THEN '$300'
             WHEN e.job='SALESMAN'  THEN '$450'
             WHEN e.job='MANAGER'   THEN '$600'
             WHEN e.job='ANALYST'   THEN '$800'
             WHEN e.job='PRESIDENT' THEN '$1000' 
             END as "자기 계발비"
  FROM emp e
;

-- 실습 18)
SELECT COUNT(*)
  FROM emp e
;

-- 실습 19)
SELECT COUNT(DISTINCT e.job)
  FROM emp e
;

-- 실습 20)
SELECT COUNT(e.comm)
  FROM emp e
;

-- 실습 21)
SELECT SUM(e.sal)
  FROM emp e
;

-- 실습 22)
SELECT AVG(e.sal)
  FROM emp e
;

-- 실습 23)
SELECT SUM(e.sal) 총합
      ,AVG(e.sal) 평균
      ,MAX(e.sal) 최대
      ,MIN(e.sal) 최소
  FROM emp e
 WHERE e.deptno = 20
;

-- 실습 24)
SELECT STDDEV(e.sal) 표준편차
      ,VARIANCE(e.sal) 분산
  FROM emp e
;

-- 실습 25)
SELECT STDDEV(e.sal) 표준편차
      ,VARIANCE(e.sal) 분산
  FROM emp e
 WHERE e.job = 'SALESMAN'
;