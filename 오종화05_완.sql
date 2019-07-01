-- sql 과제 : 오종화
-- sql 과제 파일 명 : 오종화01.sql
-- 제출 제목 : 선문대학 오종화 SQL 01 과제
--강사 이메일 : hannacne@naver.com

--실습 1)

SELECT to_char(1234,'999999') as "한 자리 숫자 표시"
  FROM dual
;
/*
한 자리 숫자 표시
   1234
*/

SELECT to_char(1234,'099999') as "숫자앞자리0으로채움"
  FROM dual
;
/*
숫자앞자리0으로채움
 001234
 */
SELECT to_char(1234,'$999999') as "달러 기호 표시"
  FROM dual
;
/*
달러 기호 표시
   $1234
*/
SELECT to_char(1234,'9999.99') as "표기지점에소수점표시"
  FROM dual
;
/*
표기지점에소수점표시
 1234.00
*/
SELECT to_char(1234,'999,999') as 표기지점에콤마표시
  FROM dual
;
/*
표기지점에콤마표시
   1,234
*/
SELECT to_char(-1234,'999999MI') as 오른쪽에마이너스기호
  FROM dual
;
/*
오른쪽에마이너스기호
  1234-
*/


--질문: alias(별칭이) 30비트를 넘어가면 못쓰는건가요? :

--      네 그렇습니다. 30비트가 아니라 30바이트 까지만 지원되도록 되어있습니다.
--      별칭을 줄 때 오라클 시스템에서 사용되는 영역의 크기가 30바이트로 만들어져 있습니다.


-- 실습15)
SELECT  e.empno as 사원번호
       ,e.ename as 이름
       ,e.sal as 급여
       ,DECODE(e.job,'CLERK','$300'
                    ,'SALESMAN','$450'
                    ,'MANAGER','$600'
                    ,'ANALYST','$800'
                    ,'PRESIDENT','$1000') as "자기 계발비"
  FROM emp e
;
/* by.hnc : 이 문제는 DECODE 의 결과에 숫자 패턴까지 씌우라는 것으로
            교재에 출력된 예시를 잘 보면 $1,000 으로 KING 의 출력을 확인할 수 있습니다.
            아래와 같이 해야 합니다.
            
            잘 생각해보기 바랍니다.
            
SELECT e.empno 사원번호
     , e.ename 이름
     , e.sal 급여
     , to_char(DECODE(e.job, 'CLERK'    , 300
                           , 'SALESMAN' , 450
                           , 'MANAGER'  , 600
                           , 'ANALYST'  , 800
                           , 'PRESIDENT', 1000),'$9,999') "자기 계발비"
  FROM emp e
;            
*/

/*
사원번호, 이름, 급여, 자기 계발비
7369	SMITH	800	    $300
7499	ALLEN	1600	$450
7521	WARD	1250	$450
7566	JONES	2975	$600
7654	MARTIN	1250	$450
7698	BLAKE	2850	$600
7782	CLARK	2450	$600
7839	KING	5000	$1000
7844	TURNER	1500	$450
7900	JAMES	950	    $300
7902	FORD	3000	$800
7934	MILLER	1300	$300
*/