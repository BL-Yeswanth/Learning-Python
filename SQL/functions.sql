-- Functions in SQL
-- Multi row functions
select max(sal)
from emp;

select min(sal)
from emp;
where deptno = 20;

select avg(sal)
from emp;
where job = 'MANAGER';

select sum(sal) 
from emp
where deptno = 30;      

select count(*)
from emp
where job = 'SALESMAN'; 

select count(comm)
from emp
where deptno = 30;

