<?php
function unique_multidim_array($array, $key) {
    $temp_array = array();
    $i = 0;
    $key_array = array();

    for($n = 0; $n < count($array); $n++ ) {
        foreach($array[$n] as $val) {
        if (!in_array($val[$key], $key_array)) {
            $key_array[$i] = $val[$key];
            $temp_array[0][$i] = $val;
        }
        $i++;
        }
    }
    return $temp_array;
}