/*
Mall table 작성 (개체)
[Entities / 개체]
- Mall

[Properties / 속성]
- id			 (BIGSERIAL)
- name 			 (VARCHAR(30))
- price			 (NUMBER)
- stock_quantity (INT)
- delivery_date  (date)
- description    (varchar(100))
*/

-- 테이블 생성

CREATE TABLE mall (
	id bigserial,
	name varchar(30),
	price numeric,
	stock_quantity int,
	delivery_date date,
	description varchar(200)
);


-- 데이터 입력

insert into mall (id, name, price, stock_quantity, delivery_date, description)
values 
	(1, '후드티', 50000, 40, '2026-03-05', '핏이 예쁜 후드티'),
	(2, '가디건', 60000, 55, '2026-02-24', '지금 입기 좋은 가디건'),
	(3, '청바지', 30000, 58, '2026-02-17', '멋진 청바지'),
	(4, '운동화', 120000, 39, '2026-03-08', '편안한 운동화'),
	(5, '후드집업', 90000, 27, '2026-01-25', '따뜻한 후드집업')

-- 전체 조회

select * from mall;

-- 정렬

select name, stock_quantity, price, description from mall order by price desc;

-- 조건 검색

select name, price, stock_quantity from mall where price between 60000 and 100000;