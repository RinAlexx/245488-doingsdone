INSERT INTO users (registration_date, email, login, password)
VALUES ('2018.11.11', 'dr.jekyll@mail.ru', 'Джекил', 'strangestory'), ('2019.01.02', 'mr.hyde@mail.ru', 'Хайд', 'ffdp');

INSERT INTO projects (user_id, project_name)
VALUES ('1', 'Входящие'), ('1', 'Учеба'), ('2', 'Работа'), ('2', 'Домашние дела'), ('1', 'Авто');

INSERT INTO tasks (user_id, project_id, complete_date, status, task_name, file, deadline)
VALUES ('2', '3', NULL, DEFAULT, 'Собеседование в IT компании', '', '2019.03.01'),
	('2', '3', NULL, DEFAULT, 'Выполнить тестовое задание', '', '2019.12.25'),
	('1', '2', '2019.01.20', '1', 'Сделать задание первого раздела', '', '2019.12.21'),
	('1', '1', NULL, DEFAULT, 'Встреча с другом', '', '2019.12.22'),
	('2', '4', NULL, DEFAULT, 'Купить корм для кота', '', NULL),
	('2', '4', NULL, DEFAULT, 'Заказать пиццу', '', NULL);

SELECT * FROM tasks
WHERE user_id = 1;

SELECT * FROM tasks 
WHERE project_id = 3;

UPDATE tasks SET status = 1, complete_date = CURRENT_TIMESTAMP
WHERE task_name = 'Заказать пиццу';

UPDATE tasks SET task_name = 'Заказать вкусную пиццу', status = 0, complete_date = NULL
WHERE id = 6;
