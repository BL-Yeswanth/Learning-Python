-- Group By clause example

select count(*)
from emp
group by deptno;

select count(*), deptno
from emp
group by deptno;

select count(*), job
from emp
group by job;

select count(sal), sal
from emp
group by sal;

