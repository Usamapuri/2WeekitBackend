PRAGMA foreign_keys = ON;

CREATE TABLE Users (
	user_id INTEGER PRIMARY KEY,
	username VARCHAR(20),
	name VARCHAR(20),
	password VARCHAR(20),
	email VARCHAR(20),
	interest_tag INTEGER(20),
	FOREIGN KEY (interest_tag) REFERENCES Interests(interest_id)
);


CREATE TABLE Users (
	user_id INTEGER PRIMARY KEY,
	username VARCHAR(20),
	name VARCHAR(20),
	password VARCHAR(20),
	email VARCHAR(20),
	interest_tag INTEGER(20),
	FOREIGN KEY (interest_tag) REFERENCES Interests(interest_id)
);

CREATE TABLE Users (
	user_id INTEGER PRIMARY KEY,
	username VARCHAR(20),
	name VARCHAR(20),
	password VARCHAR(20),
	email VARCHAR(20),
	interest_tag INTEGER(20),
	FOREIGN KEY (interest_tag) REFERENCES Interests(interest_id)
);


CREATE TABLE Tasks(
	task_id INTEGER PRIMARY KEY,
	task_name varchar(20),
	task_def varchar(200),
	interest_tag INTEGER(20),
	FOREIGN KEY (interest_tag) REFERENCES Interests(interest_id)
);


CREATE Table Interests(
	interest_id INTEGER PRIMARY KEY,
	interest_name varchar(20),
	interest_tasks INTEGER,
	FOREIGN KEY (interest_tasks) REFERENCES Tasks(task_id)
	
	
);


CREATE TABLE Dashboard(
	dash_id INTEGER,
	task_in_prog INTEGER,
	task_notes VARCHAR(200),
	tasks_completed INTEGER,
	FOREIGN KEY (tasks_completed) REFERENCES Tasks(task_id),
	FOREIGN KEY(task_in_prog) REFERENCES Tasks(task_id),
	FOREIGN KEY (dash_id) REFERENCES Users(user_id)
);


