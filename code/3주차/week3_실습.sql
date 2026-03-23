/*
Professor table 작성 (개체)
[Entities / 개체]
- Professor

[Properties / 속성]
- id			(BIGSERIAL)  -- 자동으로 증가하는 숫자
- name 			(VARCHAR(30))
- dept 			(VARCHAR(50))
- salary 		(NUMERIC)
- salary_level  (NUMERIC)
- hire_date 	(DATE)		 -- 'YYYY-MM-DD'
*/


CREATE TABLE prof (
	id bigserial,
	name varchar(30),
	dept varchar(50),
	salary numeric,
	salary_level numeric,
	hire_date date
);

table prof;

-- 데이터 삽입하기
insert into prof (name, dept, salary, salary_level, hire_date)
values 
	('김정운', '컴퓨터공학', '100000', 2, '1998-12-31'),
	('박지선', 'AI공학', '70000', 1, '2001-3-1'),
	('이재삭', '정보통신공학', '80000', 1, '2003-4-1'),
	('류현지', '간호학', '90000', 1, '2004-2-14'),
	('양정효', '소프트웨어학', '1000000', 9, '1998-12-31')

-- 데이터 검색하기
select * from prof;

select name, salary from prof;
select name, salary from prof order by salary desc; -- asc
select name, salary from prof where salary > 90000;

select name, salary from prof where name like '김%';   -- PostgreSQL ILIKE 대/소문자 상관없음

select name, dept from prof
where dept like '%공%'
order by dept asc;

select name, salary from prof where salary between 70000 and 90000;