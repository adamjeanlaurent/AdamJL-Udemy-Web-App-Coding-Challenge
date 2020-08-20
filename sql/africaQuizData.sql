-- African Country Quiz 
INSERT INTO quizzes 
VALUES (1, 'African Countries', NOW());

-- Africa Q1
INSERT INTO questions 
VALUES (1, 'What country is highlighted in red?', 1, 'chad', NOW(), 1);

-- Africa Q1 A1
INSERT INTO answers 
VALUES (1, 'Chad', TRUE, NOW(), 1);

-- Africa Q1 A2
INSERT INTO answers 
VALUES (2, 'Libya', FALSE, NOW(), 1);

-- Africa Q1 A3
INSERT INTO answers 
VALUES (3, 'Sudan', FALSE, NOW(), 1);

-- Africa Q1 A4
INSERT INTO answers 
VALUES (4, 'Central Africa Republic', FALSE, NOW(), 1);

-- Africa Q2
INSERT INTO questions 
VALUES (2, 'What country is highlighted in red?', 2, 'mali', NOW(), 1);

-- Africa Q2 A1
INSERT INTO answers 
VALUES (5, 'Tanzania', FALSE, NOW(), 2);

-- Africa Q2 A2
INSERT INTO answers 
VALUES (6, 'South Sudan', FALSE, NOW(), 2);

-- Africa Q2 A3
INSERT INTO answers 
VALUES (7, 'Angola', FALSE, NOW(), 2);

-- Africa Q2 A4
INSERT INTO answers 
VALUES (8, 'Mali', TRUE, NOW(), 2);

-- Africa Q2
INSERT INTO questions 
VALUES (3, 'What country is highlighted in red?', 3, 'nigeria', NOW(), 1);

-- Africa Q3 A1
INSERT INTO answers 
VALUES (9, 'Congo', FALSE, NOW(), 3);

-- Africa Q3 A2
INSERT INTO answers 
VALUES (10, 'Sierra Leone', FALSE, NOW(), 3);

-- Africa Q3 A3
INSERT INTO answers 
VALUES (11, 'Nigeria', TRUE, NOW(), 3);

-- Africa Q3 A4
INSERT INTO answers 
VALUES (12, 'Mali', FALSE, NOW(), 3);
