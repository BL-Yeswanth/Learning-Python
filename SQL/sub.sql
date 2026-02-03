-- case-1
-- if there is a unknown present in the question,
-- To find thea unknown we use wub query

select ename
from emp
where sal>(select sal 
from emp 
where ename ='smith');

select ename, deptno
from emp
where deptno = (select deptno
from emp 
where ename = 'smith');

select ename, sal , deptno
from emp
where sal>2000 and deptno=(select deptno
from emp
where ename='smith');

select ename, hiredate
from emp
where emname like '%s' and hiredate>(select hiredate
from emp 
where ename = 'james');

select count(*)
from emp
where sal>(select sal
from emp
where ename='smith') and sal <(select sal
from emp
where ename = 'martin');

-- case-2
-- when ever the data is present in tow different tables to fetch that dat from multiple tables we use sub query

select dname
from dept
where detpno =(select deptno
from emp
where ename='smith');

select loc
from dept
where deptno =(select deptno
from emp
where ename='adams');

select *
from emp
where job='manager' and deptno=(select deptno
from dept
where dname='accounting');

-- To find max and minimum

select ename,sal
from emp
where sal=(select max(sal)
from emp);

select ename,sal
from emp
where sal=(select min(sal)
from emp);

select ename,hiredate
from emp
where hiredate =(select min(hiredate)
from emp);

select loc
from dept
where dept in(select deptno
from emp
where job='salesman');

-- single row sub query
-- if sub query returns exactly one value or record we call it as single row sub query

select dname
from dept
where deptno=(select deptno
from emp
where ename='allen');

-- if a sub query returns more than one value we can call it as multi row sub query

select dname
from dept
where deptno in(select deptno
from emp
where ename ='allen' and ename='king')