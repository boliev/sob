# Вывести список сотрудников, не имеющих назначенного руководителя, работающего в том-же отделе

CREATE TABLE employee (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  dep_id INT UNSIGNED,
  chief_id INT UNSIGNED DEFAULT NULL,
  name VARCHAR(30) NOT NULL
);

INSERT INTO  employee (id, dep_id, chief_id, name) VALUES
  (1, 1, null, 'Bill Gates'),
  (2, 2, 1, 'Steve Jobs'),
  (3, 3, 1, 'Mark Zuckerberg'),

  (4, 1, 1, 'Paul McCartney'),
  (5, 1, 1, 'Ringo Starr'),
  (6, 1, 1, 'John Lennon'),

  (7, 2, 2, 'Mick Jagger'),
  (8, 2, 1, 'Keith Richards'),
  (9, 2, 2, 'Charlie Watts'),

  (10, 3, null, 'Freddie Mercury'),
  (11, 3, 3, 'Brian May'),
  (12, 3, 3, 'Roger Taylor'),
  (13, 3, 3, 'John Richard Deacon'),

  (14, 4, null, 'James Hetfield'),
  (15, 4, 14, 'Lars Ulrich'),
  (16, 4, 15, 'Roberto Trujillo');

SELECT e.name
FROM employee e
LEFT JOIN employee c ON (c.id = e.chief_id and c.dep_id = e.dep_id)
WHERE c.id IS NULL