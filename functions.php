<?php

function include_template($name, $data) {
    $name = 'templates/' . $name;
    $result = '';

    if (!is_readable($name)) {
        return $result;
    }

    ob_start();
    extract($data);
    require $name;

    $result = ob_get_clean();

    return $result;
}

function item_count ($task_array, $name_of_project) {
	$item_sum = 0;

	foreach ($task_array as $value) {
		if ($value['category'] == $name_of_project) {
			$item_sum++;
		}
	}
	return $item_sum;
}

function important_task ($task_done) {
    $date_done = date_create($task_done);
    $date_now = date_create("now");

    $diff = date_diff($date_done, $date_now);

	$time_to_complete = date_interval_format($diff, "%d");

    return $time_to_complete;
}
