-- sql ���� : ����ȭ
-- sql ���� ���� �� : ����ȭ01.sql
-- ���� ���� : �������� ����ȭ SQL 01 ����
--���� �̸��� : hannacne@naver.com

--�ǽ� 1)

SELECT to_char(1234,'999999') as "�� �ڸ� ���� ǥ��"
  FROM dual
;
/*
�� �ڸ� ���� ǥ��
   1234
*/

SELECT to_char(1234,'099999') as "���ھ��ڸ�0����ä��"
  FROM dual
;
/*
���ھ��ڸ�0����ä��
 001234
 */
SELECT to_char(1234,'$999999') as "�޷� ��ȣ ǥ��"
  FROM dual
;
/*
�޷� ��ȣ ǥ��
   $1234
*/
SELECT to_char(1234,'9999.99') as "ǥ���������Ҽ���ǥ��"
  FROM dual
;
/*
ǥ���������Ҽ���ǥ��
 1234.00
*/
SELECT to_char(1234,'999,999') as ǥ���������޸�ǥ��
  FROM dual
;
/*
ǥ���������޸�ǥ��
   1,234
*/
SELECT to_char(-1234,'999999MI') as �����ʿ����̳ʽ���ȣ
  FROM dual
;
/*
�����ʿ����̳ʽ���ȣ
  1234-
*/


--����: alias(��Ī��) 30��Ʈ�� �Ѿ�� �����°ǰ���?


-- �ǽ�15)
SELECT  e.empno as �����ȣ
       ,e.ename as �̸�
       ,e.sal as �޿�
       ,DECODE(e.job,'CLERK','$300'
                    ,'SALESMAN','$450'
                    ,'MANAGER','$600'
                    ,'ANALYST','$800'
                    ,'PRESIDENT','$1000') as "�ڱ� ��ߺ�"
  FROM emp e
;
/*
�����ȣ, �̸�, �޿�, �ڱ� ��ߺ�
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