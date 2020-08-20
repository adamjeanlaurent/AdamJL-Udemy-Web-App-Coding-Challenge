-- South American Country Quiz 
INSERT INTO quizzes 
VALUES (3, 'South American Countries', NOW());

-- South American Q1
INSERT INTO questions 
VALUES (7, 'What country is highlighted in red?', 1, 'brazil', NOW(), 3);

-- South American Q1 A1
INSERT INTO answers 
VALUES (25, 'Brazil', TRUE, NOW(), 7);

-- South American  Q1 A2
INSERT INTO answers 
VALUES (26, 'Bolivia', FALSE, NOW(), 7);

-- South American Q1 A3
INSERT INTO answers 
VALUES (27, 'Guyana', FALSE, NOW(), 7);

-- South American Q1 A4
INSERT INTO answers 
VALUES (28, 'Chile', FALSE, NOW(), 7);

-- South American Q2
INSERT INTO questions 
VALUES (8, 'What country is highlighted in red?', 2, 'peru', NOW(), 3);

-- South American Q2 A1
INSERT INTO answers 
VALUES (29, 'Guyana', FALSE, NOW(), 8);

-- South American Q2 A2
INSERT INTO answers 
VALUES (30, 'Chile', FALSE, NOW(), 8);

-- South American Q2 A3
INSERT INTO answers 
VALUES (31, 'Peru', TRUE, NOW(), 8);

-- South American Q2 A4
INSERT INTO answers 
VALUES (32, 'Paraguay', FALSE, NOW(), 8);

-- South American Q3
INSERT INTO questions 
VALUES (9, 'What country is highlighted in red?', 3, 'venezuela', NOW(), 3);

-- South American Q3 A1
INSERT INTO answers 
VALUES (33, 'Venezuela', TRUE, NOW(), 9);

-- South American Q3 A2
INSERT INTO answers 
VALUES (34, 'Paraguay', FALSE, NOW(), 9);

-- South American Q3 A3
INSERT INTO answers 
VALUES (35, 'Columbia', FALSE, NOW(), 9);

-- South American Q3 A4
INSERT INTO answers 
VALUES (36, 'Chile', FALSE, NOW(), 9);
