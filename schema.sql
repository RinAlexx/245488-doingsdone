CREATE DATABASE doingsdone
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE doingsdone;

CREATE table projects (
	id INT AUTO_INCREMENT PRIMARY KEY,
	user_id INT NOT NULL,
	project_name VARCHAR(128) NOT NULL
);

CREATE table tasks (
	id INT AUTO_INCREMENT PRIMARY KEY,
	user_id INT NOT NULL,
	project_id INT NOT NULL,
	creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	complete_date TIMESTAMP,
	status TINYINT(1) DEFAULT 0,
	task_name VARCHAR(128) NOT NULL,
	file VARCHAR(128),
	deadline TIMESTAMP
);

CREATE table users (
	id INT AUTO_INCREMENT PRIMARY KEY,
	registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	email VARCHAR(128) NOT NULL UNIQUE,
	login VARCHAR(30) NOT NULL UNIQUE,
	password VARCHAR(128) NOT NULL
);

CREATE UNIQUE INDEX mail ON users(email);
CREATE UNIQUE INDEX user ON users(login);

CREATE INDEX status ON tasks(status);
CREATE INDEX project_id ON tasks(project_id);
CREATE INDEX deadline ON tasks(deadline);
