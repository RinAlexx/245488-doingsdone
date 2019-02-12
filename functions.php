<?php

$show_complete_tasks = rand(0, 1);

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

?>
