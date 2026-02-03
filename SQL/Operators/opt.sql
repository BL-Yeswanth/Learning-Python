-- Arithmetic Operators(+, -, *, /)
-- Concat Operator (||)
-- Relational Operators (<>, >, <, >=, <=)
-- Comparison Operators (=,!=, IS NULL, IS NOT NULL)
-- Logical Operators (AND, OR, NOT)
-- Special Operators ( in, not in, between, is, is not, like, not like)
-- subquery Operators (any, all, exists, not exists)

-- concat operator
select 'Good Moring' || ename
from emp;

-- comparison operator
select ename, deptno
from emp
where deptno IS NOT NULL;

select ename, deptno
from emp
where deptno !=10;

-- logical operator
-- AND
select * 
from emp
where job='MANAGER' AND deptno=20;

select ename, job
from emp
where job='CLERK' AND sal<2000;

select *
from emp
where job='PRESIDENT' AND sal>5000 AND empno=7839;

-- OR
select ename,deptno
from emp
where deptno=10 OR deptno=30;

select ename, job
from empwhere job="MANAGER" OR job="ANALYST";

select emp.*, sal+sal*10/100 as "Hike Salary"
from emp
where job='SALESMAN' OR deptno=20;


select emp.*, sal*12 as "Annual Salary"
from emp
where sal>100 AND sal<4000 AND sal*12>15000;

-- NOT
select *
from emp
where NOT deptno=10;

-- queries 
select ename
from emp where deptno = 10 OR deptno = 20 OR deptno = 30;

select *
from emp
where job='manager' or job='slaesman' or job='clerk';

select *
from emp
where sal>1250 and sal<3000

select ename 
from emp
where hiredate > '31-dec-81' and deptno=10 or deptno=30;

select ename sal*12 as "Annual Salary"
from emp
where job='manager' or job='clerk' and deptno=10 or deptno=30;

select emp.*, sal*12 as "Annual Salary"
from emp 
where sal between 100 and 4000 and sal*12>15000                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          

select emp.*, sal*12 as "Annual Salary"
from emp
where deptno=30 and job='salesman' and sal*12>14000;

select *
from emp
where deptno=30 or job='analyst';

-- IN operator
select *
from emp
where deptno IN(10,20,30,40);

select *
from emp
where job in 'manager';

select *
from emp
where job in('clerk','analyst');

-- Not IN operator
select *
from emp 
where deptno NOT IN(30,50);

select *
from emp
where job NOT IN('manager','analyst');

-- Between operator
select ename, sal
from emp
where sal between 1000 and 3000;

select ename, hiredate
from emp
where hiredate between '01-jan-82' and '31-dec-87';

select ename, sal
from emp 
where sal not between 2000 and 4000;

select *
from emp 
where hiredate not between '01-jan-2017' and '31-dec-2017';

-- IS operator
select ename, sal
from emp
where sal is null;

select ename, comm
from emp
where comm is null;

select ename
from emp
where mgr is null;

select ename, sal
from emp
where sal is not null;

select *
from emp
where comm is not null;

select ename
from emp
where mgr is not null;

select *
from emp
where comm is not null and sal is null;

select * 
from emp
where sal is not null and comm is null and deptno = 20;

-- LIKE operator
select ename
from emp 
where ename like 'A%';

select ename
from emp
where ename like '%S';

select ename
from emp 
where ename like '%A%';

select ename
from emp 
where ename like '%A%A%';

select ename 
from emp
where ename like 'A%' and ename like '%s';

select ename
from emp 
where ename like 'A%S';

select ename
from emp
where ename like '%LL%';

select ename
from emp 
where ename like '%m_';

select ename
from emp
where ename like '____';

select *
from emp
where hiredate like '%Feb%';

-- NOT LIKE operator
select ename
from emp
where ename not like 'A%';

-- all

select ename,sal
from emp 
where sal > all (select sal
from emp
where job='salesman');

select ename, sal
from emp
where sal > all (select sal
from emp
where job='manager');

select ename,sal
from emp
where sal < all(select sal
from emp
where job='manager');

-- any

select ename,sal
from emp
where sal> any(select sal
from emp
where job='salesman');

select ename,sal
from emp
where sal<any(select sal
from emp
where job ='salesman');

select ename
from emp
where mgr =(select empno
from emp
where ename='king');

-- exist operator

select dname
from dept
where exits (select deptno
from emp
where emp.deptno=dept.deptno);

-- not exist
select dname
from dept
where not exists (select deptno
from emp
where emp.deptno=dept.deptno);

-- Single row functions

-- length()
select length(ename)
from emp
where ename='smith';

-- concat()
select concat(ename,sal)
from emp;

-- upper()
select upper('smith')
from dual;

-- Lower()
select lower(ename)
from emp;

-- INITCAP()
select initcap(ename)
from emp;

-- reverse()
select reverse(ename)
from emp;

-- substr()
select substr('program',5)
from dual;

-- instr()
select instr('apple','a',1)
from dual;

-- replace()
select replace('tot','t','b')
from dual;

-- mod()
select mod(5,2)
from dual;

-- round()
select round(7.5)
from dual;

-- trunc()
select turnc(7.9)
from dual;

-- ltrim()
select ltrim('  smith  ')
from emp;

-- rtrim()
select rtrim('smith  ')
from emp;

-- ceil
select ceil(3456.45678)
from dual;





 


