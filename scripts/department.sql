create table department (
	id bigserial NOT NULL unique,
	name VARCHAR(22) NOT NULL,
    school_id bigint NOT NULL,
	created_at timestamp NULL DEFAULT NULL,
	updated_at timestamp NULL DEFAULT NULL,

	 CONSTRAINT fk_school_dept
      FOREIGN KEY(school_id) 
	  REFERENCES schools(id)
);
insert into department (name, school_id, created_at, updated_at) values ('software engineering', 1, '2022-07-26 00:00:00', '2022-07-26 00:00:00');
insert into department (name, school_id, created_at, updated_at) values ('computer science', 1, '2022-07-26 00:00:00', '2022-07-26 00:00:00');
insert into department (name, school_id, created_at, updated_at) values ('medicine', 2, '2022-07-26 00:00:00', '2022-07-26 00:00:00');
insert into department (name, school_id, created_at, updated_at) values ('pharmacy', 2, '2022-07-26 00:00:00', '2022-07-26 00:00:00');
insert into department (name, school_id, created_at, updated_at) values ('sociology', 3, '2022-07-26 00:00:00', '2022-07-26 00:00:00');
insert into department (name, school_id, created_at, updated_at) values ('philosophy', 3, '2022-07-26 00:00:00', '2022-07-26 00:00:00');
insert into department (name, school_id, created_at, updated_at) values ('economics', 4, '2022-07-26 00:00:00', '2022-07-26 00:00:00');
insert into department (name, school_id, created_at, updated_at) values ('accounting', 4, '2022-07-26 00:00:00', '2022-07-26 00:00:00');
insert into department (name, school_id, created_at, updated_at) values ('electrical engineering', 5, '2022-07-26 00:00:00', '2022-07-26 00:00:00');
insert into department (name, school_id, created_at, updated_at) values ('mechanical engineering', 5, '2022-07-26 00:00:00', '2022-07-26 00:00:00');

ALTER TABLE department
 ADD PRIMARY KEY (id);