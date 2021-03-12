PRAGMA foreign_keys = ON;

CREATE TABLE Users(
	user_id INTEGER PRIMARY KEY AUTOINCREMENT,
	username VARCHAR(20),
	name VARCHAR(20),
	password VARCHAR(20),
	email VARCHAR(20)

);

CREATE TABLE Tasks(
	task_id INTEGER PRIMARY KEY AUTOINCREMENT,
	task_name varchar(20),
	task_def varchar(200)
);


CREATE Table Interests(
	interest_id INTEGER PRIMARY KEY AUTOINCREMENT,
	interest_name varchar(20)
);


CREATE TABLE Dashboard(
	user_id INTEGER,
	task_notes VARCHAR(200),
	FOREIGN KEY (user_id) REFERENCES Users(user_id)
);


CREATE TABLE task_completed(
	user_id INTEGER,
	task_completed INTEGER,
	FOREIGN KEY (user_id) REFERENCES Users(user_id)
);


CREATE TABLE task_prog(
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

CREATE TABLE feed(
	user_id INTEGER,
	post_notes VARCHAR(500),
	FOREIGN KEY (interest_id) REFERENCES Interests(interest_id),
	FOREIGN KEY (task_id) REFERENCES tasks(task_id)
);


INSERT INTO Users VALUES(1,'usamapuri','Usama', 12345678, 'usamapuri@gmail.com');
INSERT INTO Users VALUES(2,'hanakasatio','Hanaka', 12345678, 'hanaka.saito@minerva.kgi.edu');
INSERT INTO Users VALUES(3,'chloego','Chloe', 12345678, 'go@minerva.kgi.edu');

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


INSERT INTO Interests VALUES(1, '#health');
INSERT INTO Interests VALUES(2, '#body');
INSERT INTO Interests VALUES(3, '#wellbeing');
INSERT INTO Interests VALUES(4, '#sports');
INSERT INTO Interests VALUES(5, '#friends');
INSERT INTO Interests VALUES(6, '#amily');
INSERT INTO Interests VALUES(7, '#food');
INSERT INTO Interests VALUES(8, '#dance');
INSERT INTO Interests VALUES(9, '#storytelling');
INSERT INTO Interests VALUES(11, '#videoediting');
INSERT INTO Interests VALUES(12, '#artsandcrafts');
INSERT INTO Interests VALUES(13, '#computerscience');
INSERT INTO Interests VALUES(14, '#academic');
INSERT INTO Interests VALUES(15, '#film' );

INSERT INTO task_interest VALUES(1,1);
INSERT INTO task_interest VALUES(4,1);
INSERT INTO task_interest VALUES(14,1);
INSERT INTO task_interest VALUES(2,1);
INSERT INTO task_interest VALUES(2,4);
INSERT INTO task_interest VALUES(2,15);
INSERT INTO task_interest VALUES(3,1);
INSERT INTO task_interest VALUES(3,2);
INSERT INTO task_interest VALUES(3,5);
INSERT INTO task_interest VALUES(3,10);
INSERT INTO task_interest VALUES(4,1);
INSERT INTO task_interest VALUES(4,15);
INSERT INTO task_interest VALUES(5,2);
INSERT INTO task_interest VALUES(6,2);
INSERT INTO task_interest VALUES(7,3);
INSERT INTO task_interest VALUES(8,4);
INSERT INTO task_interest VALUES(9,6);
INSERT INTO task_interest VALUES(9,10);
INSERT INTO task_interest VALUES(11,6);
INSERT INTO task_interest VALUES(11,10);
INSERT INTO task_interest VALUES(12,6);
INSERT INTO task_interest VALUES(12,7);
INSERT INTO task_interest VALUES(12,8);
INSERT INTO task_interest VALUES(12,13);
INSERT INTO task_interest VALUES(13,8);
INSERT INTO task_interest VALUES(14,8);
INSERT INTO task_interest VALUES(15,11);
INSERT INTO task_interest VALUES(15,13);
