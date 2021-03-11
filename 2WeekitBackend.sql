PRAGMA foreign_keys = ON;

CREATE TABLE Users (
	user_id INTEGER PRIMARY KEY,
	username VARCHAR(20),
	name VARCHAR(20),
	password VARCHAR(20),
	email VARCHAR(20),

);

CREATE TABLE Tasks(
	task_id INTEGER PRIMARY KEY,
	task_name varchar(20),
	task_def varchar(200),
);


CREATE Table Interests(
	interest_id INTEGER PRIMARY KEY,
	interest_name varchar(20),	
);


CREATE TABLE Dashboard(
	user_id INTEGER,
	task_notes VARCHAR(200),
	FOREIGN KEY (user_id) REFERENCES Users(user_id)
);


CREATE TABLE task_completed (
	user_id INTEGER,
	task_completed INTEGER,
	FOREIGN KEY (uer_id) REFERENCES Users(user_id)
);


CREATE TABLE task_prog (
	user_id INTEGER,
	task_in_prog INTEGER,
	FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE task_interest(
	interest_id INTEGER,
	task_id INTEGER,
	FOREIGN KEY (interest_id) REFERENCES Interests(interest_id),
	FOREIGN KEY (task_id) REFERENCES tasks(task_id)
);








