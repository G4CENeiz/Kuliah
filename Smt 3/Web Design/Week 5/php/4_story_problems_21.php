<?php
$studentScore = [85, 92, 78, 64, 90, 75, 88, 79, 70, 96];
$studentScoreSum = 0;
$ignoreFirst = 2;
$ignoreLast = 2;

foreach ($studentScore as $score) {
    echo "$score, ";
}

echo "<br>";

sort($studentScore);

foreach ($studentScore as $score) {
    echo "$score, ";
}

echo "<br>";

for ($k = 0 + $ignoreFirst; $k < count($studentScore) - $ignoreLast; $k++) { 
    $studentScoreSum += $studentScore[$k];
}

$meanScore = $studentScoreSum / (count($studentScore) - $ignoreFirst - $ignoreLast);

echo "the mean score of studdent excluding the first two top student and bottom: $meanScore";
?>