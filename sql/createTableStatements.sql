CREATE TABLE quizzes (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE questions (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	question VARCHAR(300) NOT NULL,
	number INT NOT NULL,
	image VARCHAR(100),
	created_at TIMESTAMP NOT NULL DEFAULT NOW(),
	quizId INT NOT NULL,
	FOREIGN KEY (quizId)
		REFERENCES quizzes(id)
		ON DELETE CASCADE
);

CREATE TABLE answers (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	answer VARCHAR(300) NOT NULL,
	correct BIT ,
	created_at TIMESTAMP NOT NULL DEFAULT NOW(),
	questionId INT NOT NULL,
	FOREIGN KEY (questionId)
		REFERENCES questions(id)
		ON DELETE CASCADE
);