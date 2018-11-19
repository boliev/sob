-- Вывести список сотрудников, получающих максимальную заработную плату в своем отделе

CREATE TABLE employee (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  dep_id INT UNSIGNED DEFAULT NULL,
  name VARCHAR(30) NOT NULL ,
  salary DECIMAL(10, 2) NOT NULL
);

INSERT INTO  employee (id, dep_id, name, salary) VALUES
  (4, 1, 'Paul McCartney', 30000.00),
  (5, 1, 'Ringo Starr', 10000.00),
  (6, 1, 'John Lennon', 19000.00),

  (7, 2, 'Mick Jagger', 30000.00),
  (8, 2, 'Keith Richards', 80000.00),
  (9, 2, 'Charlie Watts', 10000.00),

  (10, 3, 'Freddie Mercury', 70000.00),
  (11, 3, 'Brian May', 90000.00),
  (12, 3, 'Roger Taylor', 60000.00);


SELECT e.name
FROM employee e
WHERE e.salary = (SELECT max(m.salary) FROM employee m WHERE m.dep_id = e.dep_id)