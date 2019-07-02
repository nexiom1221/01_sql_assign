-- sql ���� : ����ȭ

-- �ǽ� 16)
SELECT  e.empno as �����ȣ
       ,e.ename as �̸�
       ,e.sal as �޿�
       ,CASE e.job WHEN 'CLERK'     THEN '$300'
                   WHEN 'SALESMAN'  THEN '$450'
                   WHEN 'MANAGER'   THEN '$600'
                   WHEN 'ANALYST'   THEN '$800'
                   WHEN 'PRESIDENT' THEN '$1000' 
                   END as "�ڱ� ��ߺ�"
  FROM emp e
;

-- �ǽ� 17)
SELECT  e.empno as �����ȣ
       ,e.ename as �̸�
       ,e.sal as �޿�
       ,CASE WHEN e.job='CLERK'     THEN '$300'
             WHEN e.job='SALESMAN'  THEN '$450'
             WHEN e.job='MANAGER'   THEN '$600'
             WHEN e.job='ANALYST'   THEN '$800'
             WHEN e.job='PRESIDENT' THEN '$1000' 
             END as "�ڱ� ��ߺ�"
  FROM emp e
;

-- �ǽ� 18)
SELECT COUNT(*)
  FROM emp e
;

-- �ǽ� 19)
SELECT COUNT(DISTINCT e.job)
  FROM emp e
;

-- �ǽ� 20)
SELECT COUNT(e.comm)
  FROM emp e
;

-- �ǽ� 21)
SELECT SUM(e.sal)
  FROM emp e
;

-- �ǽ� 22)
SELECT AVG(e.sal)
  FROM emp e
;

-- �ǽ� 23)
SELECT SUM(e.sal) ����
      ,AVG(e.sal) ���
      ,MAX(e.sal) �ִ�
      ,MIN(e.sal) �ּ�
  FROM emp e
 WHERE e.deptno = 20
;

-- �ǽ� 24)
SELECT STDDEV(e.sal) ǥ������
      ,VARIANCE(e.sal) �л�
  FROM emp e
;

-- �ǽ� 25)
SELECT STDDEV(e.sal) ǥ������
      ,VARIANCE(e.sal) �л�
  FROM emp e
 WHERE e.job = 'SALESMAN'
;