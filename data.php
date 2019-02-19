<?php

$show_complete_tasks = rand(0, 1);

$projects = ['Входящие', 'Учеба', 'Работа', 'Домашние дела', 'Авто'];

$tasks = [
	[
		'name' => 'Собеседование в IT компании',
		'date_complete' => '01.12.2019',
		'category' => 2,
		'is_done' => false
	],
	[
		'name' => 'Выполнить тестовое задание',
		'date_complete' => '25.12.2019',
		'category' => 2,
		'is_done' => false
	],
	[
		'name' => 'Сделать задание первого раздела',
		'date_complete' => '21.12.2019',
		'category' => 1,
		'is_done' => true
	],
	[
		'name' => 'Встреча с другом',
		'date_complete' => '22.12.2019',
		'category' => 0,
		'is_done' => false
	],
	[
		'name' => 'Купить корм для кота',
		'date_complete' => 'Нет',
		'category' => 3,
		'is_done' => false
	],
	[
		'name' => 'Заказать пиццу',
		'date_complete' => 'Нет',
		'category' => 3,
		'is_done' => false
	]
];

?>
