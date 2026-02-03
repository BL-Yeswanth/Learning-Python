-- Joins
-- the process of retrieving the data from multiple tables simultaneously is called joins

-- corss joins
select ename, dname
from emp cross join dept;

-- inner join
select ename, dname
from emp inner join dept
on emp.deptno=dept.deptno;

select ename, sal, dname,loc
from emp inner join dept
where job='manager' and emp.deptno=dept.deptno;

-- Outer joins
-- It is used to obtain unmatched records

-- left outer join
select ename, dname
from emp left outer join dept
on emp.deptno=dept.deptno;

-- right outer join
select ename, dname
from emp right outer join dept
on emp.deptno=dept.deptno;

-- full outer join
select ename, dname
from emp full outer join dept
on emp.deptno=dept.deptno;

-- self join
select e1.ename, e2.ename
from emp e1 join emp e2
where e1.mgr=e2.empno;

select e1.ename, e1.job, e2,ename, e2.job
from emp e1, emp e2
where e1.mgr=e2.empno and e1.job='slaesman';

-- natural join
select ename, dname
from emp natural join dept;