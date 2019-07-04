-- SQL ���� : ����ȭ

-- �ǽ� 1)
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

-- �ǽ� 2)
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

-- �ǽ� 3)
SELECT e.empno ���
      ,e.ename �̸�
      ,e1.ename ����̸�
  FROM emp e
      ,emp e1
 WHERE e.mgr = e1.empno(+)
;

SELECT e.empno ���
      ,e.ename �̸�
      ,e1.ename ����̸�
  FROM emp e LEFT OUTER JOIN emp e1 ON e.mgr = e1.empno
;

-- �ǽ� 4)
SELECT e.empno ���
      ,e.ename �̸�
      ,e1.ename ����̸�
  FROM emp e
      ,emp e1
 WHERE e.mgr(+) = e1.empno
 ORDER BY e.empno DESC
;
