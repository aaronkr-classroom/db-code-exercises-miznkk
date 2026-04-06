-- dbdiagram.io를 위해 수정하기

Table Professor {
	professor_id int [pk]
	professor_name varchar
	department varchar
	salary numeric
	salary_level numeric
	hire_date date
}

Table Student {
	student_id int [pk]
	student_name varchar
	major varchar
}

Table Course {
	course_id int
	section_id int
	professor_id int
	course_name varchar
	indexes {
		 (course_id, section_id) [pk]
	}
}

create table Enrollment (
	student_id int,
	course_id int,
	grade varchar(2),
	points numeric,		-- ex) 99.65
	enrolled_at date,
	primary key (student_id, course_id),
	foreign key (student_id) references Student(student_id)
	-- foreign key (course_id) references Course(course_id) - Course의 복합키 때문에 오류
);