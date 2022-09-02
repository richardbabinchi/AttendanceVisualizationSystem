create table department_modules (
	id bigserial NOT NULL PRIMARY KEY,
	module_id  bigint NOT NULL,
	department_id  bigint NOT NULL,
	type VARCHAR(20) NOT NULL,
	created_at timestamp NULL DEFAULT NULL,
	updated_at  timestamp NULL DEFAULT NULL,

	  CONSTRAINT fk_department_module_id
     FOREIGN KEY(module_id) 
	  REFERENCES modules(id),

	CONSTRAINT fk_dept_id
     FOREIGN KEY(department_id) 
	  REFERENCES department(id)
);
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (1, 1, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (2, 1, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, ocreated_at, updated_at ) values (3, 1, 'elective', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (4, 1, 'elective', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (1, 2, 'elective', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (2, 2, 'elective', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (3, 2, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (4, 2, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (5, 3, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (6, 3, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (7, 3, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (8, 3, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (5, 4, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (6, 4, 'elective', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (7, 4, 'elective', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (8, 4, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (9, 5, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (10, 5, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (11, 5, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (12, 5, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (9, 6, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (10, 6, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (11, 6, 'elective', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (12, 6, 'elective', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (13, 7, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (14, 7, 'elective', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (15, 7, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (16, 7, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (13, 8, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (14, 8, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (15, 8, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (16, 8, 'elective', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (17, 9, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (18, 9, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (19, 9, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (20, 9, 'elective', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (17, 10, 'elective', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (18, 10, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (19, 10, 'elective', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
insert into department_modules (module_id, department_id, type, created_at, updated_at ) values (20, 10, 'corequisite', '2022-07-28 00:00:00', '2022-07-28 00:00:00');
