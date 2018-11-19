# Вывести список ID отделов, количество сотрудников в которых не превышает 3 человек

CREATE TABLE employee (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  dep_id INT UNSIGNED DEFAULT NULL,
  name VARCHAR(30) NOT NULL
);

INSERT INTO  employee (id, dep_id, name) VALUES
  (4, 1, 'Paul McCartney'),
  (5, 1, 'Ringo Starr'),

  (6, 2, 'John Lennon'),
  (7, 2, 'Mick Jagger'),
  (8, 2, 'Keith Richards'),
  (9, 2, 'Charlie Watts'),

  (10, 3, 'Freddie Mercury'),
  (11, 3, 'Brian May'),
  (12, 3, 'Roger Taylor'),
  (13, 3, 'John Richard Deacon'),

  (14, 4, 'James Hetfield'),
  (15, 4, 'Lars Ulrich'),
  (16, 4, 'Roberto Trujillo');

SELECT e.dep_id, count(id) as empl_cnt
FROM employee e
GROUP BY e.dep_id
HAVING empl_cnt <= 3;