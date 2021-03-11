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


INSERT INTO Tasks VALUES(1, 'Marathon' , 'Run a Marathon');
INSERT INTO Tasks VALUES(2, 'Letters' , 'Write 14 letters to Loved Ones');
INSERT INTO Tasks VALUES(3, 'Food' , 'Try food from 14 different countries');
INSERT INTO Tasks VALUES(4, 'Tiktok' , 'Make a Tiktok Dancing Video Everyday');
INSERT INTO Tasks VALUES(5, 'Gratitude' , 'Tell us what you are gratitude');
INSERT INTO Tasks VALUES(6, 'Social Media' , 'Repost an insta poetry');
INSERT INTO Tasks VALUES(7, 'Knitting Challenge', 'Knit a sweater in 14 days');
INSERT INTO Tasks VALUES(8, 'Coding' , 'Learn to Code');
INSERT INTO Tasks VALUES(9, 'Leet Code' , 'Do LeetCode Everyday');
INSERT INTO Tasks VALUES(10, 'Space' , 'Space for description');
INSERT INTO Tasks VALUES(11, 'Netflix' , 'Finish a Netflix Series');
INSERT INTO Tasks VALUES(12, 'Gymnastics' , 'Planking Challenge');
INSERT INTO Tasks VALUES(13, 'Videography' , 'Shoot your Story');
INSERT INTO Tasks VALUES(14, 'Splits', 'Do some splits for everyday');
INSERT INTO Tasks VALUES(15, 'Workout' , 'Workout Everyday for 15 days');


INSERT INTO Interests VALUES(11, '#health');
INSERT INTO Interests VALUES(22, '#body');
INSERT INTO Interests VALUES(33, '#wellbeing');
INSERT INTO Interests VALUES(44, '#sports');
INSERT INTO Interests VALUES(55, '#friends');
INSERT INTO Interests VALUES(66, '#amily');
INSERT INTO Interests VALUES(77, '#food');
INSERT INTO Interests VALUES(88, '#dance');
INSERT INTO Interests VALUES(99, '#storytelling');
INSERT INTO Interests VALUES(111, '#videoediting');
INSERT INTO Interests VALUES(122, '#artsandcrafts');
INSERT INTO Interests VALUES(133, '#computerscience');
INSERT INTO Interests VALUES(144, '#academic');
INSERT INTO Interests VALUES(155, '#film' );





