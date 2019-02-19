<?php

require_once('boot.php');

$page_content = include_template('index.php', [
	'tasks' => $tasks,
	'show_complete_tasks' => $show_complete_tasks,
	'projects' => $projects
]);

$layout_content = include_template('layout.php', [
	'content' => $page_content,
	'projects' => $projects,
	'title' => 'Дела в порядке',
	'tasks' => $tasks
]);

print($layout_content);

?>
