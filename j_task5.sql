# Найти список ID отделов с максимальной суммарной зарплатой сотрудников

CREATE TABLE employee (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  dep_id INT UNSIGNED DEFAULT NULL,
  name VARCHAR(30) NOT NULL ,
  salary DECIMAL(10, 2) NOT NULL
);

INSERT INTO  employee (id, dep_id, name, salary) VALUES
  (1, 1, 'Bill Gates', 20000.00),
  (2, 1, 'Steve Jobs', 50000.00),
  (3, 1, 'Mark Zuckerberg', 80000.00), -- 150

  (4, 2, 'Paul McCartney', 30000.00),
  (5, 2, 'Ringo Starr', 10000.00),
  (6, 2, 'John Lennon', 19000.00), -- 59

  (7, 3, 'Mick Jagger', 30000.00),
  (8, 3, 'Keith Richards', 80000.00),
  (9, 3, 'Charlie Watts', 10000.00), -- 120

  (10, 4, 'Freddie Mercury', 90000.00),
  (11, 4, 'Brian May', 70000.00),
  (12, 4, 'Roger Taylor', 60000.00); -- 220

SELECT e.dep_id, sum(e.salary) as sl
FROM employee e
GROUP BY e.dep_id
ORDER BY sl DESC
LIMIT 1