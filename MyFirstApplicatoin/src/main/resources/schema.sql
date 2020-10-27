CREATE TABLE inquiry
(
   id INT NOT NULL AUTO_INCREMENT,
   name VARCHAR(100) NOT NULL,
   email VARCHAR(100) NOT NULL,
   contents VARCHAR(500) NOT NULL,
   created DATETIME NOT NULL,
   PRIMARY KEY(id)
);

CREATE TABLE questions
(
   uId INT NOT NULL AUTO_INCREMENT,
   categoryId INT NOT NULL,
   questionId INT NOT NULL,
   questionContent VARCHAR(1000) NOT NULL,
   answer VARCHAR(1000) NOT NULL,
   explanation VARCHAR(1000) NOT NULL,
   choice1 VARCHAR(1000) NOT NULL,
   choice2 VARCHAR(1000) NOT NULL,
   choice3 VARCHAR(1000) NOT NULL,
   choice4 VARCHAR(1000) NOT NULL,
   PRIMARY KEY(uId)
);


CREATE TABLE gQuestions
(
   questionNumber INT NOT NULL,
   question VARCHAR(1000) NOT NULL,
   choice1 VARCHAR(1000) NOT NULL,
   choice2 VARCHAR(1000) NOT NULL,
   choice3 VARCHAR(1000) NOT NULL,
   choice4 VARCHAR(1000) NOT NULL,
   answer INT(1000) NOT NULL,
   explanation VARCHAR(1000) NOT NULL,
   PRIMARY KEY(questionNumber)
);