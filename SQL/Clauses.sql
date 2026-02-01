-- Select clause 

select ename
from emp;

select ename, sal
from emp;

select empno, job, sal
from emp;

select  *
from emp;

-- Distinct clause

select Distinct sal
from emp;

select Distinct ename, sal
from emp;

select Distinct job
from emp;

-- expression in select clause

select ename, sal*12 
from emp;

select ename, sal, sal+sal*10/100
from emp;

select ename, sal, sal+sal*25/100
from emp;

select emp.*, sal+sal*12/100
from emp

select ename, sal, sal-100
from emp;

-- Alias in select clause

select ename, sal*12 as "Annual Salary"
from emp;

select ename, job, sal*6 as "Half Yearly Salary"
from emp;

select ename, sal, sal+50 as "Hike salary"
from emp;

-- Where clause

select ename, sal
from emp 
where sal>2000;

select *
from emp
where sal<5000;

select ename, job, sal
from emp
where job='MANAGER';

select ename, sal
from emp
where comm=1400;

select *
from emp
where ename='SMITH';

select ename, hiredate
from emp
where hiredate>'31-dec-80';

select sal*12 as "Annual Salary"
from emp
where ename='KING';

select ename, hiredate
from emp
where hiredate<'01-jan-81';

































