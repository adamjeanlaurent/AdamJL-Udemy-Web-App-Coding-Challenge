-- Europe Country Quiz 
INSERT INTO quizzes 
VALUES (2, 'European Countries', NOW());

-- Europe Q1
INSERT INTO questions 
VALUES (4, 'What country is highlighted in red?', 1, 'italy', NOW(), 2);

-- Europe Q1 A1
INSERT INTO answers 
VALUES (13, 'Italy', TRUE, NOW(), 4);

-- Europe Q1 A2
INSERT INTO answers 
VALUES (14, 'Germany', FALSE, NOW(), 4);

-- Europe Q1 A3
INSERT INTO answers 
VALUES (15, 'England', FALSE, NOW(), 4);

-- Europe Q1 A4
INSERT INTO answers 
VALUES (16, 'Russia', FALSE, NOW(), 4);

-- Europe Q2
INSERT INTO questions 
VALUES (5, 'What country is highlighted in red?', 2, 'netherlands', NOW(), 2);

-- Europe Q2 A1
INSERT INTO answers 
VALUES (17, 'Estonia', FALSE, NOW(), 5);

-- Europe Q2 A2
INSERT INTO answers 
VALUES (18, 'Ukraine', FALSE, NOW(), 5);

-- Europe Q2 A3
INSERT INTO answers 
VALUES (19, 'Netherlands', TRUE, NOW(), 5);

-- Europe Q2 A4
INSERT INTO answers 
VALUES (20, 'Ireland', FALSE, NOW(), 5);

-- Europe Q3
INSERT INTO questions 
VALUES (6, 'What country is highlighted in red?', 3, 'ukraine', NOW(), 2);

-- Europe Q3 A1
INSERT INTO answers 
VALUES (21, 'Latvia', FALSE, NOW(), 6);

-- Europe Q3 A2
INSERT INTO answers 
VALUES (22, 'Ukraine', TRUE, NOW(), 6);

-- Africa Q3 A3
INSERT INTO answers 
VALUES (23, 'Denmark', FALSE, NOW(), 6);

-- Africa Q3 A4
INSERT INTO answers 
VALUES (24, 'Finland', FALSE, NOW(), 6);
