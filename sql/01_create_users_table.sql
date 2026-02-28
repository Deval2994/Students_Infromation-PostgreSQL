/*
Deval patel
01_create_users_table.sql
11 october 2024
*/

-- Script to create users table. 

-- it will drop the users table it exists to avoid duplication.
DROP TABLE IF EXISTS users;
DROP SEQUENCE IF EXISTS users_id_seq;
-- it will create a pgcrypto to encrypt the password.
DROP EXTENSION IF EXISTS pgcrypto;
CREATE EXTENSION IF NOT EXISTS pgcrypto;
-- will create a new sequence and make is auto-generated.
CREATE SEQUENCE users_id_seq START 100900000;
CREATE TABLE users(
	-- it is consists of used_id, primary key and auto-incrementing the users_id_seq.
	user_id INT PRIMARY KEY DEFAULT nextval('users_id_seq'),
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	email VARCHAR(255)UNIQUE NOT NULL,
	birth_date DATE,
	created_at DATE DEFAULT NOW(),
	last_access TIMESTAMP,
	password VARCHAR(255)

);


-- Script to insert data in users table.

INSERT INTO users(
 					user_id,
 					first_name, 
 					last_name,
 					email,
 					birth_date,
 					--created_at,
 					last_access,
 					password
 					)
 			VALUES(
 				100900035,
 				'Deval',
 				'Patel',
 				'deval.patel5@dcmail.ca',
 				'2004-09-29',
 				--'2024-10-04',
 				'2024-10-10 15:10:22',
 				crypt('password', gen_salt('bf'))
 			);

-- Script to insert data into users table for 50 users

INSERT INTO users(
    user_id,
    first_name, 
    last_name,
    email,
    birth_date,
    last_access,
    password
)
VALUES
    -- crypt is used to encrypt the password
    (100900001, 'Laura', 'Jackson', 'laura.jackson@gmail.com', '2001-11-28', '2024-10-06 13:30:22', crypt('password1', gen_salt('bf'))),
    (100900002, 'James', 'White', 'james.white@gmail.com', '2000-12-15', '2024-10-10 12:00:00', crypt('password2', gen_salt('bf'))),
    (100900003, 'Linda', 'Harris', 'linda.harris@gmail.com', '1997-01-22', '2024-10-09 10:45:38', crypt('password3', gen_salt('bf'))),
    (100900004, 'Paul', 'Martin', 'paul.martin@gmail.com', '2002-02-11', '2024-10-08 16:22:11', crypt('password4', gen_salt('bf'))),
    (100900005, 'Olivia', 'Thompson', 'olivia.thompson@gmail.com', '2001-03-29', '2024-10-07 09:35:16', crypt('password5', gen_salt('bf'))),
    (100900006, 'Mark', 'Garcia', 'mark.garcia@gmail.com', '1999-04-20', '2024-10-09 11:10:05', crypt('password6', gen_salt('bf'))),
    (100900007, 'Sophia', 'Martinez', 'sophia.martinez@gmail.com', '2003-05-17', '2024-10-08 15:40:12', crypt('password7', gen_salt('bf'))),
    (100900008, 'Chris', 'Robinson', 'chris.robinson@gmail.com', '2000-06-08', '2024-10-06 10:10:22', crypt('password8', gen_salt('bf'))),
    (100900009, 'Isabella', 'Clark', 'isabella.clark@gmail.com', '2002-07-26', '2024-10-05 12:55:50', crypt('password9', gen_salt('bf'))),
    (100900010, 'Ryan', 'Rodriguez', 'ryan.rodriguez@gmail.com', '2001-08-13', '2024-10-04 16:05:10', crypt('password10', gen_salt('bf'))),

    -- Continue with other names
    (100900011, 'Henry', 'Lewis', 'henry.lewis@gmail.com', '1999-09-19', '2024-10-10 14:05:18', crypt('password11', gen_salt('bf'))),
    (100900012, 'Ava', 'Lee', 'ava.lee@gmail.com', '1998-10-30', '2024-10-08 10:50:45', crypt('password12', gen_salt('bf'))),
    (100900013, 'Tyler', 'Walker', 'tyler.walker@gmail.com', '2003-11-02', '2024-10-07 09:15:33', crypt('password13', gen_salt('bf'))),
    (100900014, 'Grace', 'Hall', 'grace.hall@gmail.com', '2000-12-14', '2024-10-05 14:35:11', crypt('password14', gen_salt('bf'))),
    (100900015, 'Matthew', 'Allen', 'matthew.allen@gmail.com', '1997-01-23', '2024-10-06 11:20:59', crypt('password15', gen_salt('bf'))),
    (100900016, 'Ella', 'Young', 'ella.young@gmail.com', '2001-02-12', '2024-10-04 15:30:20', crypt('password16', gen_salt('bf'))),
    (100900017, 'Jack', 'King', 'jack.king@gmail.com', '2003-03-15', '2024-10-10 14:45:12', crypt('password17', gen_salt('bf'))),
    (100900018, 'Zoe', 'Scott', 'zoe.scott@gmail.com', '1999-04-19', '2024-10-08 10:15:05', crypt('password18', gen_salt('bf'))),
    (100900019, 'Ethan', 'Green', 'ethan.green@gmail.com', '2002-05-11', '2024-10-09 09:50:30', crypt('password19', gen_salt('bf'))),
    (100900020, 'Chloe', 'Baker', 'chloe.baker@gmail.com', '1998-06-30', '2024-10-07 16:15:45', crypt('password20', gen_salt('bf'))),

    (100900021, 'Benjamin', 'Adams', 'benjamin.adams@gmail.com', '2000-07-14', '2024-10-10 13:35:10', crypt('password21', gen_salt('bf'))),
    (100900022, 'Mia', 'Nelson', 'mia.nelson@gmail.com', '1997-08-29', '2024-10-05 11:40:45', crypt('password22', gen_salt('bf'))),
    (100900023, 'Noah', 'Carter', 'noah.carter@gmail.com', '2001-09-08', '2024-10-04 09:20:12', crypt('password23', gen_salt('bf'))),
    (100900024, 'Liam', 'Mitchell', 'liam.mitchell@gmail.com', '2002-10-16', '2024-10-06 08:10:00', crypt('password24', gen_salt('bf'))),
    (100900025, 'Emma', 'Perez', 'emma.perez@gmail.com', '2003-11-25', '2024-10-08 12:05:55', crypt('password25', gen_salt('bf'))),
    (100900026, 'Oliver', 'Roberts', 'oliver.roberts@gmail.com', '1999-12-06', '2024-10-09 10:30:11', crypt('password26', gen_salt('bf'))),
    (100900027, 'Amelia', 'Turner', 'amelia.turner@gmail.com', '2000-01-17', '2024-10-07 15:55:28', crypt('password27', gen_salt('bf'))),
    (100900028, 'Lucas', 'Phillips', 'lucas.phillips@gmail.com', '1998-02-27', '2024-10-05 14:20:22', crypt('password28', gen_salt('bf'))),
    (100900029, 'Harper', 'Campbell', 'harper.campbell@gmail.com', '2002-03-30', '2024-10-04 12:45:10', crypt('password29', gen_salt('bf'))),
    (100900030, 'Mason', 'Parker', 'mason.parker@gmail.com', '2001-04-13', '2024-10-06 09:00:05', crypt('password30', gen_salt('bf'))),
	(100900031, 'ironman', 'strack', 'strack.ironman@gmail.com', '2001-05-13', '2024-10-06 09:00:05', crypt('password30', gen_salt('bf'))),
	(100900032, 'levi', 'Parker', 'levis.parker@gmail.com', '2001-06-13', '2024-10-06 09:00:05', crypt('password30', gen_salt('bf'))),
	(100900033, 'chitiya', 'Parker', 'chutiya.parker@gmail.com', '2001-07-13', '2024-10-06 09:00:05', crypt('password30', gen_salt('bf'))),
	(100900034, 'lodu', 'Parker', 'lodu.parker@gmail.com', '2001-08-13', '2024-10-06 09:00:05', crypt('password30', gen_salt('bf'))),
    (100900036, 'Grace', 'Lee', 'grace.lee@gmail.com', '2000-03-02', '2024-10-04 14:10:12', crypt('password36', gen_salt('bf'))),
    (100900037, 'Mason', 'White', 'mason.white@gmail.com', '1998-04-07', '2024-10-10 10:55:05', crypt('password37', gen_salt('bf'))),
    (100900038, 'Sophia', 'King', 'sophia.king@gmail.com', '2002-01-12', '2024-10-08 15:30:42', crypt('password38', gen_salt('bf'))),
    (100900039, 'Henry', 'Carter', 'henry.carter@gmail.com', '1997-11-25', '2024-10-06 17:35:10', crypt('password39', gen_salt('bf'))),
    (100900040, 'Isabella', 'Adams', 'isabella.adams@gmail.com', '2001-08-29', '2024-10-09 10:40:33', crypt('password40', gen_salt('bf'))),
    (100900041, 'Ethan', 'Walker', 'ethan.walker@gmail.com', '2003-12-02', '2024-10-05 13:05:15', crypt('password41', gen_salt('bf'))),
    (100900042, 'Ava', 'Scott', 'ava.scott@gmail.com', '2002-04-15', '2024-10-10 09:25:50', crypt('password42', gen_salt('bf'))),
    (100900043, 'Zoe', 'Phillips', 'zoe.phillips@gmail.com', '2000-08-20', '2024-10-07 11:15:22', crypt('password43', gen_salt('bf'))),
    (100900044, 'Tyler', 'Mitchell', 'tyler.mitchell@gmail.com', '2001-09-05', '2024-10-04 15:50:18', crypt('password44', gen_salt('bf'))),
    (100900045, 'Chloe', 'Nelson', 'chloe.nelson@gmail.com', '1999-02-09', '2024-10-06 12:10:30', crypt('password45', gen_salt('bf'))),
    (100900046, 'Benjamin', 'Perez', 'benjamin.perez@gmail.com', '2003-07-10', '2024-10-09 14:45:00', crypt('password46', gen_salt('bf'))),
    (100900047, 'Liam', 'Harris', 'liam.harris@gmail.com', '2002-06-25', '2024-10-08 16:05:45', crypt('password47', gen_salt('bf'))),
    (100900048, 'Mia', 'Roberts', 'mia.roberts@gmail.com', '1998-05-18', '2024-10-07 09:50:50', crypt('password48', gen_salt('bf'))),
    (100900049, 'Jack', 'Johnson', 'jack.johnson@gmail.com', '2001-11-04', '2024-10-06 11:35:20', crypt('password49', gen_salt('bf'))),
    (100900050, 'Ryan', 'Davis', 'ryan.davis@gmail.com', '2000-12-03', '2024-10-09 17:10:15', crypt('password50', gen_salt('bf')));



            
 SELECT * 
 FROM users;