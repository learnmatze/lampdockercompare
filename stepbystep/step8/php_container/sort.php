<?php

function bubbleSort($arr) {
    $n = count($arr);

    for ($i = 0; $i < $n-1; $i++) {
        for ($j = 0; $j < $n-$i-1; $j++) {
            if ($arr[$j] > $arr[$j+1]) {
                // Swap the elements
                $temp = $arr[$j];
                $arr[$j] = $arr[$j+1];
                $arr[$j+1] = $temp;
            }
        }
    }

    return $arr;
}

function quickSort($arr) {
    if (count($arr) < 2) {
        return $arr;
    }

    $left = $right = array();

    reset($arr);
    $pivot_key = key($arr);
    $pivot = array_shift($arr);

    foreach ($arr as $k => $v) {
        if ($v < $pivot)
            $left[$k] = $v;
        else
            $right[$k] = $v;
    }

    return array_merge(quickSort($left), array($pivot_key => $pivot), quickSort($right));
}
?>