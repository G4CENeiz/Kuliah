<?php
$capacity = 45.0;
$occupiedSeat = 28.0;
$occupationPercentage = (($capacity - $occupiedSeat) / $capacity) * 100.0;

echo "persentase kursi yang masih kosong {$occupationPercentage}%";
?>
