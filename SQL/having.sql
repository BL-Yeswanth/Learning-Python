-- Having clause

select count(*), deptno
from emp
group by deptno
having count(*) > 3;

select count(*), deptno
from emp
group by deptno
having count(*) = 4;

select count(ename), ename
from emp
group by ename
having count(*) > 1;

select count(*), sal
from emp
group by sal
having count(*) > 1;

select sum(sal), job
from emp
group by job
having sum(sal) > 3450;

