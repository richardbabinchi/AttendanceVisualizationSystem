create table attendance (
	id bigserial NOT NULL PRIMARY KEY,
	mark VARCHAR(12) NOT NULL,
	user_id bigint NOT NULL,
	marked_at timestamp NOT NULL,
	session_id bigint NOT NULL,
	username VARCHAR(255) NOT NULL,
	source VARCHAR(10) NOT NULL,
	created_at timestamp NULL DEFAULT NULL,
	updated_at timestamp NULL DEFAULT NULL,

	CONSTRAINT fk_attendance_session_id
      FOREIGN KEY(session_id) 
	  REFERENCES sessions(id)

);



insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 4, '2022-06-25 12:30:00', 1, 'Early Tredget', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 1, '2022-06-25  12:30:00', 1, 'Brittni Towll', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 2, '2022-06-25  12:30:00', 1, 'Rayner Normington', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 3, '2022-06-25  12:30:00', 1, 'Linda Aldhouse', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 21, '2022-06-25 12:30:00 ', 1, 'Jill Maestro', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 5, '2022-06-25  12:30:00', 1, 'Abramo Ranscomb', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 8, '2022-06-25  12:30:00', 1, 'Faunie Jarman', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 9, '2022-06-25  12:30:00', 1, 'Cirilo Helgass', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 10, '2022-06-25 12:30:00 ', 1, 'Reinwald Athelstan', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 11, '2022-06-25 12:30:00 ', 1, 'Haslett Cowle', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 12, '2022-06-25 12:30:00 ', 1, 'Rebekah Mantram', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 13, '2022-06-25 12:30:00 ', 1, 'Ulises Breitling', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 14, '2022-06-25 12:30:00 ', 1, 'Didi Shorie', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 15, '2022-06-25 12:30:00 ', 1, 'Rosana Burges', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 16, '2022-06-25 12:30:00 ', 1, 'Falkner Mully', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 32, '2022-06-25 12:30:00 ', 1, 'Park Kleinmann', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended',31,'2022-06-25 13:05:00', 1, 'Matilde Casaro', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 17, '2022-06-25 12:30:00', 1, 'Morganne Mathiasen', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 30, '2022-06-25 12:30:00', 1, 'Tatum Brinsford', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 28, '2022-06-25 12:30:00', 1, 'Augustine Fifoot', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 26, '2022-06-25 12:30:00', 1, 'Hamilton Shovelin', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 18, '2022-06-25 12:30:00', 1, 'Sigmund Learmount', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 25, '2022-06-25 12:30:00', 1, 'Rodge Belsey', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 24, '2022-06-25 12:30:00', 1, 'Jennie Walewicz', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 23, '2022-06-25 12:30:00', 1, 'Chic Monnelly', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 19, '2022-06-25 12:30:00', 1, 'Shirley Petrolli', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 22, '2022-06-25 12:30:00', 1, 'Tracey Bewsey', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');


insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 4, '2022-06-25 08:30:00', 2, 'Early Tredget', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 1, '2022-06-25 08:30:00', 2, 'Brittni Towll', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 2, '2022-06-25 08:30:00', 2, 'Rayner Normington', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 3, '2022-06-25 08:30:00', 2, 'Linda Aldhouse', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 21, '2022-06-25 08:30:00', 2, 'Jill Maestro', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 5, '2022-06-25  08:30:00', 2, 'Abramo Ranscomb', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 8, '2022-06-25  08:30:00', 2, 'Faunie Jarman', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 9, '2022-06-25  08:30:00', 2, 'Cirilo Helgass', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 10, '2022-06-25  08:30:00', 2, 'Reinwald Athelstan', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 11, '2022-06-25  08:30:00', 2, 'Haslett Cowle', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 12, '2022-06-25  08:30:00', 2, 'Rebekah Mantram', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 13, '2022-06-25  08:30:00', 2, 'Ulises Breitling', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 14, '2022-06-25  08:30:00', 2, 'Didi Shorie', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 15, '2022-06-25  08:30:00', 2, 'Rosana Burges', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 16, '2022-06-25  08:30:00', 2, 'Falkner Mully', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 32, '2022-06-25  08:30:00', 2, 'Park Kleinmann', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 31, '2022-06-25  08:30:00', 2, 'Matilde Casaro', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 17, '2022-06-25  08:30:00', 2, 'Morganne Mathiasen', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 30, '2022-06-25  08:30:00', 2, 'Tatum Brinsford', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 28, '2022-06-25  08:30:00', 2, 'Augustine Fifoot', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 26, '2022-06-25  08:30:00', 2, 'Hamilton Shovelin', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 18, '2022-06-25  08:30:00', 2, 'Sigmund Learmount', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 25, '2022-06-25  08:30:00', 2, 'Rodge Belsey', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 24, '2022-06-25  08:30:00', 2, 'Jennie Walewicz', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 23, '2022-06-25  08:30:00', 2, 'Chic Monnelly', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 19, '2022-06-25  08:30:00', 2, 'Shirley Petrolli', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 22, '2022-06-25  08:30:00', 2, 'Tracey Bewsey', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');


insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 4, '2022-06-24 13:40:00', 3, 'Early Tredget', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 1, '2022-06-24 13:40:00', 3, 'Brittni Towll', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 2, '2022-06-24 13:40:00', 3, 'Rayner Normington', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 3, '2022-06-24 13:40:00', 3, 'Linda Aldhouse', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 21, '2022-06-24 13:40:00', 3, 'Jill Maestro', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 5, '2022-06-24 13:40:00', 3, 'Abramo Ranscomb', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 8, '2022-06-24 13:40:00', 3, 'Faunie Jarman', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 9, '2022-06-24 13:40:00', 3, 'Cirilo Helgass', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 10, '2022-06-24 13:40:00', 3, 'Reinwald Athelstan', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 11, '2022-06-24 13:40:00', 3, 'Haslett Cowle', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 12, '2022-06-24 13:40:00', 3, 'Rebekah Mantram', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 13, '2022-06-24 13:40:00', 3, 'Ulises Breitling', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 14, '2022-06-24 13:40:00', 3, 'Didi Shorie', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 15, '2022-06-24 13:40:00', 3, 'Rosana Burges', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 16, '2022-06-24 13:40:00', 3, 'Falkner Mully', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 32, '2022-06-24 13:40:00', 3, 'Park Kleinmann', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 31, '2022-06-24 14:40:00', 3, 'Matilde Casaro', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 17, '2022-06-24 14:40:00', 3, 'Morganne Mathiasen', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 30, '2022-06-24 14:40:00', 3, 'Tatum Brinsford', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 28, '2022-06-24 13:40:00', 3, 'Augustine Fifoot', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 26, '2022-06-24 13:40:00', 3, 'Hamilton Shovelin', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 18, '2022-06-24 13:40:00', 3, 'Sigmund Learmount', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 25, '2022-06-24 13:40:00', 3, 'Rodge Belsey', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 24, '2022-06-24 13:40:00', 3, 'Jennie Walewicz', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 23, '2022-06-24 13:40:00', 3, 'Chic Monnelly', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 19, '2022-06-24 13:40:00', 3, 'Shirley Petrolli', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 22, '2022-06-24 13:40:00', 3, 'Tracey Bewsey', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');

insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 4, '6/24/2022 09:21:54', 4, 'Early Tredget', 'celcat', '2022-06-25 00:00:00', '2022-06-25 06:21:54');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 1, '6/24/2022 09:21:54', 4, 'Brittni Towll', 'celcat', '2022-06-25 00:00:00', '2022-06-25 20:08:19');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 2, '6/24/2022 09:21:54', 4, 'Rayner Normington', 'celcat', '2022-06-25 00:00:00', '2022-06-25 16:15:12');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 3, '6/24/2022 09:21:54', 4, 'Linda Aldhouse', 'celcat', '2022-06-25 00:00:00', '2022-06-25 06:19:37');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 21, '6/24/2022 09:21:54', 4, 'Jill Maestro', 'celcat', '2022-06-25 00:00:00', '2022-06-25 07:01:17');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 5, '6/24/2022 09:21:54', 4, 'Abramo Ranscomb', 'celcat', '2022-06-25 00:00:00', '2022-06-25 04:43:40');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 8, '6/24/2022 09:21:54', 4, 'Faunie Jarman', 'celcat', '2022-06-25 00:00:00', '2022-06-25 00:12:25');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 9, '6/24/2022 09:21:54', 4, 'Cirilo Helgass', 'celcat', '2022-06-25 00:00:00', '2022-06-25 09:16:21');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 10, '6/24/2022 09:21:54', 4, 'Reinwald Athelstan', 'celcat', '2022-06-25 00:00:00', '2022-06-25 20:03:25');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 11, '6/24/2022  09:21:54', 4, 'Haslett Cowle', 'celcat', '2022-06-25 00:00:00', '2022-06-25 09:30:07');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 12, '6/24/2022  09:21:54', 4, 'Rebekah Mantram', 'celcat', '2022-06-25 00:00:00', '2022-06-25 22:00:10');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 13, '6/24/2022  09:21:54', 4, 'Ulises Breitling', 'celcat', '2022-06-25 00:00:00', '2022-06-25 23:56:53');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 14, '6/24/2022  09:21:54', 4, 'Didi Shorie', 'celcat', '2022-06-25 00:00:00', '2022-06-25 02:23:49');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 15, '6/24/2022  09:21:54', 4, 'Rosana Burges', 'celcat', '2022-06-25 00:00:00', '2022-06-25 18:45:18');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 16, '6/24/2022  09:21:54', 4, 'Falkner Mully', 'celcat', '2022-06-25 00:00:00', '2022-06-25 05:35:30');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 32, '6/24/2022  09:21:54', 4, 'Park Kleinmann', 'celcat', '2022-06-25 00:00:00', '2022-06-25 23:05:24');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 31, '6/24/2022  09:21:54', 4, 'Matilde Casaro', 'celcat', '2022-06-25 00:00:00', '2022-06-25 13:07:13');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 17, '6/24/2022  09:21:54', 4, 'Morganne Mathiasen', 'celcat', '2022-06-25 00:00:00', '2022-06-25 17:47:03');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 30, '6/24/2022  09:21:54', 4, 'Tatum Brinsford', 'celcat', '2022-06-25 00:00:00', '2022-06-25 03:08:38');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 28, '6/24/2022  09:21:54', 4, 'Augustine Fifoot', 'celcat', '2022-06-25 00:00:00', '2022-06-25 05:26:21');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 26, '6/24/2022 09:51:54', 4, 'Hamilton Shovelin', 'celcat', '2022-06-25 00:00:00', '2022-06-25 11:22:48');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 18, '6/24/2022 09:51:54', 4, 'Sigmund Learmount', 'celcat', '2022-06-25 00:00:00', '2022-06-25 19:52:20');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 25, '6/24/2022 09:51:54', 4, 'Rodge Belsey', 'celcat', '2022-06-25 00:00:00', '2022-06-25 13:10:13');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 24, '6/24/2022 09:51:54', 4, 'Jennie Walewicz', 'celcat', '2022-06-25 00:00:00', '2022-06-25 10:03:46');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 23, '6/24/2022 09:51:54', 4, 'Chic Monnelly', 'celcat', '2022-06-25 00:00:00', '2022-06-25 16:33:34');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 19, '6/24/2022 09:51:54', 4, 'Shirley Petrolli', 'celcat', '2022-06-25 00:00:00', '2022-06-25 06:32:35');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 22, '6/24/2022 09:51:54', 4, 'Tracey Bewsey', 'celcat', '2022-06-25 00:00:00', '2022-06-25 05:07:52');







insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 39, '2022-06-25 13:10:00', 5, 'Bogart Fonteyne','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 47, '2022-06-25 13:10:00', 5, 'Alleen Priestley','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 33, '2022-06-25 13:10:00', 5, 'Ettie Chimes','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 35, '2022-06-25 13:10:00', 5, 'Jake Headon', 'celcat','2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 42, '2022-06-25 13:10:00', 5, 'Nevin Morando','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 45, '2022-06-25 13:10:00', 5, 'Lezlie Cummings','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 48, '2022-06-25 13:10:00', 5, 'Cassey Kornousek','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 38, '2022-06-25 13:10:00', 5, 'Ritchie Bovaird','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 40, '2022-06-25 13:10:00', 5, 'Karylin Sigward','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 44, '2022-06-25 13:10:00', 5, 'Tonnie Dooney','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 37, '2022-06-25 13:10:00', 5, 'Holly Goundsy','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');


insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 39, '2022-06-25 08:15:00', 6, 'Bogart Fonteyne','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 47, '2022-06-25 08:15:00', 6, 'Alleen Priestley','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 33, '2022-06-25 08:15:00', 6, 'Ettie Chimes','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 35, '2022-06-25 08:15:00', 6, 'Jake Headon','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 42, '2022-06-25 08:15:00', 6, 'Nevin Morando','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 45, '2022-06-25 08:15:00', 6, 'Lezlie Cummings','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 48, '2022-06-25 08:15:00', 6, 'Cassey Kornousek','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 38, '2022-06-25 08:15:00', 6, 'Ritchie Bovaird','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 40, '2022-06-25 08:15:00', 6, 'Karylin Sigward','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 44, '2022-06-25 08:15:00', 6, 'Tonnie Dooney','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 37, '2022-06-25 08:15:00', 6, 'Holly Goundsy','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');


insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 39, '2022-06-24 10:45:00', 7, 'Bogart Fonteyne','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 47, '2022-06-24 10:45:00', 7, 'Alleen Priestley','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 33, '2022-06-24 10:45:00', 7, 'Ettie Chimes','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 35, '2022-06-24 10:45:00', 7, 'Jake Headon','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 42, '2022-06-24 10:45:00', 7, 'Nevin Morando','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 45, '2022-06-24 10:45:00', 7, 'Lezlie Cummings','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 48, '2022-06-24 10:45:00', 7, 'Cassey Kornousek','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 38, '2022-06-24 11:45:00', 7, 'Ritchie Bovaird','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 40, '2022-06-24 11:45:00', 7, 'Karylin Sigward','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 44, '2022-06-24 11:45:00', 7, 'Tonnie Dooney','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 37, '2022-06-24 10:45:00', 7, 'Holly Goundsy','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');


insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 39, '2022-06-24 14:15:00', 8, 'Bogart Fonteyne','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 47, '2022-06-24 14:15:00', 8, 'Alleen Priestley','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 33, '2022-06-24 14:15:00', 8, 'Ettie Chimes','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 35, '2022-06-24 14:15:00', 8, 'Jake Headon','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 42, '2022-06-24 14:15:00', 8, 'Nevin Morando', 'celcat','2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 45, '2022-06-24 14:15:00', 8, 'Lezlie Cummings','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 48, '2022-06-24 14:15:00', 8, 'Cassey Kornousek','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 38, '2022-06-24 15:15:00', 8, 'Ritchie Bovaird','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 40, '2022-06-24 15:15:00', 8, 'Karylin Sigward','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 44, '2022-06-24 15:15:00', 8, 'Tonnie Dooney','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 37, '2022-06-24 14:15:00', 8, 'Holly Goundsy','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');





insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 68, '2022-06-24 13:15:00', 9, 'Terrie Berntsson', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 62, '2022-06-24 13:15:00', 9, 'Gearard Diviney', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 64, '2022-06-24 13:15:00', 9, 'Letti Beswick', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 50, '2022-06-24 13:15:00', 9, 'Cassandry Launchbury', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 57, '2022-06-24 13:15:00', 9, 'Jourdain Weiner', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 72, '2022-06-24 13:15:00', 9, 'Lemuel Habberjam', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 67, '2022-06-24 13:15:00', 9, 'Millicent Capaldo', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 63, '2022-06-24 13:15:00', 9, 'Hillary Varney', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 54, '2022-06-24 13:15:00', 9, 'Eadmund Saintsbury', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 58, '2022-06-24 13:15:00', 9, 'Gleda Proppers', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 49, '2022-06-24 13:15:00', 9, 'Carlee Bligh', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 53, '2022-06-24 13:15:00', 9, 'Adams Cadd', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 65, '2022-06-24 13:15:00', 9, 'Kylie Hughesdon', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 59, '2022-06-24 13:15:00', 9, 'Dilly Giacobilio', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 66, '2022-06-24 13:15:00', 9, 'Aylmer Jantot', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 55, '2022-06-24 13:15:00', 9, 'Shae Mixon', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 70, '2022-06-24 14:00:00', 9, 'Florence Moult', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 61, '2022-06-24 14:40:00', 9, 'Bryce Garlicke', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 51, '2022-06-24 13:14:40', 9, 'Taylor Golton', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 71, '2022-06-24 13:20:00', 9, 'Clayson Morson', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');


insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 68, '2022-06-24 08:35:00', 10, 'Terrie Berntsson', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 62, '2022-06-24 08:35:00', 10, 'Gearard Diviney',  'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 64, '2022-06-24 08:35:00', 10, 'Letti Beswick',  'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 50, '2022-06-24 08:35:00', 10, 'Cassandry Launchbury', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 57, '2022-06-24 08:35:00', 10, 'Jourdain Weiner',  'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 72, '2022-06-24 08:35:00', 10, 'Lemuel Habberjam', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 67, '2022-06-24 08:35:00', 10, 'Millicent Capaldo', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 63, '2022-06-24 08:35:00', 10, 'Hillary Varney', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 54, '2022-06-24 08:35:00', 10, 'Eadmund Saintsbury', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 58, '2022-06-24 08:35:00', 10, 'Gleda Proppers', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 49, '2022-06-24 08:35:00', 10, 'Carlee Bligh', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 53, '2022-06-24 08:35:00', 10, 'Adams Cadd', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 65, '2022-06-24 08:35:00', 10, 'Kylie Hughesdon', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 59, '2022-06-24 08:35:00', 10, 'Dilly Giacobilio', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 66, '2022-06-24 08:35:00', 10, 'Aylmer Jantot', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 55, '2022-06-24 10:00:00', 10, 'Shae Mixon', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 70, '2022-06-24 10:00:00', 10, 'Florence Moult', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 61, '2022-06-24 10:00:00', 10, 'Bryce Garlicke', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 51, '2022-06-24 10:00:00', 10, 'Taylor Golton', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 71, '2022-06-24 10:00:00', 10, 'Clayson Morson', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');


insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 55, '2022-06-25 08:45:00', 11, 'Shae Mixon', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 57, '2022-06-25 08:45:00', 11, 'Jourdain Weiner', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 50, '2022-06-25 08:45:00', 11, 'Cassandry Launchbury', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 72, '2022-06-25 08:45:00', 11, 'Lemuel Habberjam', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 54, '2022-06-25 08:45:00', 11, 'Eadmund Saintsbury', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 71, '2022-06-25 08:45:00', 11, 'Clayson Morson', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 70, '2022-06-25 08:45:00', 11, 'Florence Moult', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 68, '2022-06-25 08:45:00', 11, 'Terrie Berntsson', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 49, '2022-06-25 08:45:00', 11, 'Carlee Bligh', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 67, '2022-06-25 08:45:00', 11, 'Millicent Capaldo', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 66, '2022-06-25 09:30:00', 11, 'Aylmer Jantot', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 65, '2022-06-25 09:30:00', 11, 'Kylie Hughesdon', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 53, '2022-06-25 09:30:00', 11, 'Adams Cadd', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 64, '2022-06-25 09:30:00', 11, 'Letti Beswick', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 63, '2022-06-25 09:30:00', 11, 'Hillary Varney', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 62, '2022-06-25 09:30:00', 11, 'Gearard Diviney', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 59, '2022-06-25 09:30:00', 11, 'Dilly Giacobilio', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 61, '2022-06-25 09:30:00', 11, 'Bryce Garlicke', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 58, '2022-06-25 09:30:00', 11, 'Gleda Proppers', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 51, '2022-06-25 09:30:00', 11, 'Taylor Golton', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');


insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 68, '2022-06-25 12:50:00', 12, 'Terrie Berntsson', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 62, '2022-06-25 12:50:00', 12, 'Gearard Diviney', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 64, '2022-06-25 12:50:00', 12, 'Letti Beswick', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 50, '2022-06-25 12:50:00', 12, 'Cassandry Launchbury', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 57, '2022-06-25 12:50:00', 12, 'Jourdain Weiner', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 72, '2022-06-25 12:50:00', 12, 'Lemuel Habberjam', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 67, '2022-06-25 12:50:00', 12, 'Millicent Capaldo', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 63, '2022-06-25 12:50:00', 12, 'Hillary Varney', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 54, '2022-06-25 12:50:00', 12, 'Eadmund Saintsbury', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 58, '2022-06-25 12:50:00', 12, 'Gleda Proppers', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 49, '2022-06-25 12:50:00', 12, 'Carlee Bligh', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 53, '2022-06-25 12:50:00', 12, 'Adams Cadd', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 65, '2022-06-25 12:50:00', 12, 'Kylie Hughesdon', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 59, '2022-06-25 12:50:00', 12, 'Dilly Giacobilio', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 66, '2022-06-25 12:50:00', 12, 'Aylmer Jantot', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 55, '2022-06-25 12:50:00', 12, 'Shae Mixon', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 70, '2022-06-25 13:55:00', 12, 'Florence Moult', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 61, '2022-06-25 13:55:00', 12, 'Bryce Garlicke', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 51, '2022-06-25 13:55:00', 12, 'Taylor Golton', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 71, '2022-06-25 13:55:00', 12, 'Clayson Morson', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');




insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 89, '2022-06-25 12:15:00', 13, 'Reggis Haycroft','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 90, '2022-06-25 12:15:00', 13, 'Luelle Dyers','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 91, '2022-06-25 12:15:00', 13, 'Harriette Rillatt','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 92, '2022-06-25 12:15:00', 13, 'Emmerich Aslet','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 93, '2022-06-25 12:15:00', 13, 'Inness Colafate','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 94, '2022-06-25 12:15:00', 13, 'Sholom di Rocca','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 96, '2022-06-25 12:15:00', 13, 'Marybeth Liepmann','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 99, '2022-06-25 12:15:00', 13, 'Deanne Clow','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 98, '2022-06-25 12:15:00', 13, 'Mathian Demko','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 100, '2022-06-25 12:15:00', 13, 'Michelina Choppen','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 101, '2022-06-25 12:15:00', 13, 'Katrine Gianninotti','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 103, '2022-06-25 12:15:00', 13, 'Tommi Esilmon','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 84, '2022-06-25 12:15:00', 13, 'Ricoriki Zack','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 78, '2022-06-25 12:15:00', 13, 'Darbee Vossgen','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 85, '2022-06-25 12:15:00', 13, 'Brandtr Cod','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 77, '2022-06-25 12:55:00', 13, 'Netta Estabrook','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 80, '2022-06-25 12:55:00', 13, 'Viviana Wellen','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 86, '2022-06-25 12:15:00', 13, 'Cullen Duggon','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 76, '2022-06-25 12:15:00', 13, 'Saba Sarjent','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 81, '2022-06-25 12:15:00', 13, 'Teddi Hurdwell','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 75, '2022-06-25 12:15:00', 13, 'Onofredo Kausche','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 87, '2022-06-25 12:15:00', 13, 'Desiree Tritten','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 88, '2022-06-25 12:15:00', 13, 'Reyna Scopes','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');


insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 89, '2022-06-25 08:35:00', 14, 'Reggis Haycroft','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 90, '2022-06-25 08:35:00', 14, 'Luelle Dyers','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 91, '2022-06-25 08:35:00', 14, 'Harriette Rillatt','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 92, '2022-06-25 08:35:00', 14, 'Emmerich Aslet','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 93, '2022-06-25 08:35:00', 14, 'Inness Colafate','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 94, '2022-06-25 08:35:00', 14, 'Sholom di Rocca','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 96, '2022-06-25 08:35:00', 14, 'Marybeth Liepmann','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 99, '2022-06-25 08:35:00', 14, 'Deanne Clow','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 98, '2022-06-25 08:35:00', 14, 'Mathian Demko','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 100, '2022-06-25 08:35:00', 14, 'Michelina Choppen','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 101, '2022-06-25 08:35:00', 14, 'Katrine Gianninotti','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 103, '2022-06-25 08:35:00', 14, 'Tommi Esilmon','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 84, '2022-06-25 08:35:00', 14, 'Ricoriki Zack','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 78, '2022-06-25 08:35:00', 14, 'Darbee Vossgen','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 85, '2022-06-25 08:35:00', 14, 'Brandtr Cod', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 77, '2022-06-25 08:35:00', 14, 'Netta Estabrook','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 80, '2022-06-25 08:35:00', 14, 'Viviana Wellen','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 86, '2022-06-25 08:35:00', 14, 'Cullen Duggon','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 76, '2022-06-25 08:35:00', 14, 'Saba Sarjent','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 81, '2022-06-25 08:35:00', 14, 'Teddi Hurdwell','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 75, '2022-06-25 08:35:00', 14, 'Onofredo Kausche','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 87, '2022-06-25 08:35:00', 14, 'Desiree Tritten','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 88, '2022-06-25 08:35:00', 14, 'Reyna Scopes','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');


insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 78, '2022-06-24 09:15:00', 15, 'Darbee Vossgen', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 103, '2022-06-24 09:15:00', 15, 'Tommi Esilmon', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 101, '2022-06-24 09:15:00', 15, 'Katrine Gianninotti', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 100, '2022-06-24 09:15:00', 15, 'Michelina Choppen', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 99, '2022-06-24 09:15:00', 15, 'Deanne Clow', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 98, '2022-06-24 09:15:00', 15, 'Mathian Demko', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 96, '2022-06-24 09:15:00', 15, 'Marybeth Liepmann', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 94, '2022-06-24 09:15:00', 15, 'Sholom di Rocca', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 93, '2022-06-24 09:15:00', 15, 'Inness Colafate', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 92, '2022-06-24 09:15:00', 15, 'Emmerich Aslet', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 91, '2022-06-24 09:15:00', 15, 'Harriette Rillatt', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 90, '2022-06-24 09:15:00', 15, 'Luelle Dyers', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 89, '2022-06-24 09:15:00', 15, 'Reggis Haycroft', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 88, '2022-06-24 09:15:00', 15, 'Reyna Scopes', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 87, '2022-06-24 09:15:00', 15, 'Desiree Tritten', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 86, '2022-06-24 09:15:00', 15, 'Cullen Duggon', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 85, '2022-06-24 09:15:00', 15, 'Brandtr Cod', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('attended', 84, '2022-06-24 09:15:00', 15, 'Ricoriki Zack', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 81, '2022-06-24 09:50:00', 15, 'Teddi Hurdwell', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 80, '2022-06-24 09:50:00', 15, 'Viviana Wellen', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 77, '2022-06-24 09:50:00', 15, 'Netta Estabrook', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 76, '2022-06-24 09:50:00', 15, 'Saba Sarjent', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username, source, created_at, updated_at) values ('not_attended', 75, '2022-06-24 09:50:00', 15, 'Onofredo Kausche', 'celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');


insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 89, '2022-06-24 13:15:00', 16, 'Reggis Haycroft','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 90, '2022-06-24 13:15:00', 16, 'Luelle Dyers','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 91, '2022-06-24 13:15:00', 16, 'Harriette Rillatt','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 92, '2022-06-24 13:15:00', 16, 'Emmerich Aslet','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 93, '2022-06-24 13:15:00', 16, 'Inness Colafate','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 94, '2022-06-24 13:15:00', 16, 'Sholom di Rocca','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 96, '2022-06-24 13:15:00', 16, 'Marybeth Liepmann','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 99, '2022-06-24 13:15:00', 16, 'Deanne Clow','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 98, '2022-06-24 13:15:00', 16, 'Mathian Demko','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 100, '2022-06-24 13:15:00', 16, 'Michelina Choppen','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 101, '2022-06-24 13:15:00', 16, 'Katrine Gianninotti','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 103, '2022-06-24 13:15:00', 16, 'Tommi Esilmon', 'celcat','2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 84, '2022-06-24 13:15:00', 16, 'Ricoriki Zack','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 78, '2022-06-24 13:15:00', 16, 'Darbee Vossgen', 'celcat','2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 85, '2022-06-24 13:15:00', 16, 'Brandtr Cod','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 77, '2022-06-24 13:15:00', 16, 'Netta Estabrook','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 80, '2022-06-24 13:15:00', 16, 'Viviana Wellen','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 86, '2022-06-24 13:15:00', 16, 'Cullen Duggon','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 76, '2022-06-24 13:15:00', 16, 'Saba Sarjent','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 81, '2022-06-24 13:15:00', 16, 'Teddi Hurdwell','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 75, '2022-06-24 14:15:00', 16, 'Onofredo Kausche','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 87, '2022-06-24 14:15:00', 16, 'Desiree Tritten', 'celcat','2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 88, '2022-06-24 14:15:00', 16, 'Reyna Scopes','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');




insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 119, '2022-06-24 13:10:00', 17, 'Cherie Barrowcliffe','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 113, '2022-06-24 14:10:00', 17, 'Dulcia West-Frimley','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 112, '2022-06-24 13:10:00', 17, 'Eleanore Karle','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 110, '2022-06-24 13:10:00', 17, 'Haley Secretan', 'celcat','2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 121, '2022-06-24 13:10:00', 17, 'Honoria Atthow','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 106, '2022-06-24 13:10:00', 17, 'Isabeau Thickpenny','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 111, '2022-06-24 14:10:00', 17, 'Janice Blackwell','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 116, '2022-06-24 13:10:00', 17, 'Jobie Malkin', 'celcat','2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 108, '2022-06-24 14:10:00', 17, 'Mariejeanne Kose','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 117, '2022-06-24 13:10:00', 17, 'Mordecai Lindholm','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 114, '2022-06-24 13:10:00', 17, 'Nickey De Hailes','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 123, '2022-06-24 14:10:00', 17, 'Rosmunda Dot','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 104, '2022-06-24 13:10:00', 17, 'Simon Penk','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 122, '2022-06-24 14:10:00', 17, 'Tom Dearan','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 105, '2022-06-24 13:10:00', 17, 'Udell Saint','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');

insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 119, '2022-06-24 13:10:00', 18, 'Cherie Barrowcliffe','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 113, '2022-06-24 14:10:00', 18, 'Dulcia West-Frimley','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 112, '2022-06-24 13:10:00', 18, 'Eleanore Karle','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 110, '2022-06-24 13:10:00', 18, 'Haley Secretan', 'celcat','2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 121, '2022-06-24 13:10:00', 18, 'Honoria Atthow','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 106, '2022-06-24 13:10:00', 18, 'Isabeau Thickpenny','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 111, '2022-06-24 13:10:00', 18, 'Janice Blackwell','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 116, '2022-06-24 14:10:00', 18, 'Jobie Malkin', 'celcat','2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 108, '2022-06-24 14:10:00', 18, 'Mariejeanne Kose','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 117, '2022-06-24 13:10:00', 18, 'Mordecai Lindholm','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 114, '2022-06-24 13:10:00', 18, 'Nickey De Hailes','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 123, '2022-06-24 14:10:00', 18, 'Rosmunda Dot','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 104, '2022-06-24 13:10:00', 18, 'Simon Penk','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 122, '2022-06-24 13:10:00', 18, 'Tom Dearan','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 105, '2022-06-24 14:10:00', 18, 'Udell Saint','celcat', '2022-06-24 20:00:00', '2022-06-24 20:00:00');


insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 119, '2022-06-25 13:10:00', 19, 'Cherie Barrowcliffe','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 113, '2022-06-25 14:10:00', 19, 'Dulcia West-Frimley','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 112, '2022-06-25 13:10:00', 19, 'Eleanore Karle','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 110, '2022-06-25 13:10:00', 19, 'Haley Secretan', 'celcat','2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 121, '2022-06-25 13:10:00', 19, 'Honoria Atthow','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 106, '2022-06-25 13:10:00', 19, 'Isabeau Thickpenny','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 111, '2022-06-25 13:10:00', 19, 'Janice Blackwell','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 116, '2022-06-25 13:10:00', 19, 'Jobie Malkin', 'celcat','2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 108, '2022-06-25 13:10:00', 19, 'Mariejeanne Kose','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 117, '2022-06-25 13:10:00', 19, 'Mordecai Lindholm','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 114, '2022-06-25 13:10:00', 19, 'Nickey De Hailes','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 123, '2022-06-25 14:10:00', 19, 'Rosmunda Dot','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 104, '2022-06-25 13:10:00', 19, 'Simon Penk','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 122, '2022-06-25 13:10:00', 19, 'Tom Dearan','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 105, '2022-06-25 13:10:00', 19, 'Udell Saint','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');


insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 119, '2022-06-25 13:10:00', 20, 'Cherie Barrowcliffe','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 113, '2022-06-25 13:10:00', 20, 'Dulcia West-Frimley','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 112, '2022-06-25 14:10:00', 20, 'Eleanore Karle','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 110, '2022-06-25 13:10:00', 20, 'Haley Secretan', 'celcat','2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 121, '2022-06-25 13:10:00', 20, 'Honoria Atthow','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 106, '2022-06-25 14:10:00', 20, 'Isabeau Thickpenny','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 111, '2022-06-25 14:10:00', 20, 'Janice Blackwell','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 116, '2022-06-25 13:10:00', 20, 'Jobie Malkin', 'celcat','2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 108, '2022-06-25 14:10:00', 20, 'Mariejeanne Kose','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 117, '2022-06-25 13:10:00', 20, 'Mordecai Lindholm','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 114, '2022-06-25 13:10:00', 20, 'Nickey De Hailes','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 123, '2022-06-25 13:10:00', 20, 'Rosmunda Dot','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 104, '2022-06-25 13:10:00', 20, 'Simon Penk','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('attended', 122, '2022-06-25 13:10:00', 20, 'Tom Dearan','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');
insert into attendance (mark, user_id, marked_at, session_id, username,source, created_at, updated_at) values ('not_attended', 105, '2022-06-25 14:10:00', 20, 'Udell Saint','celcat', '2022-06-25 20:00:00', '2022-06-25 20:00:00');




