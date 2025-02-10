<?php
$score = 600;
echo "Total skor pemain adalah: $score <br>";

$prizeStatus = ($score > 500) ? "YA" : "TIDAK" ;
echo "Apakah pemain mendapatkan hadiah tambahan? $prizeStatus <br>";

$score = 500;
echo "Total skor pemain adalah: $score <br>";

$prizeStatus = ($score > 500) ? "YA" : "TIDAK" ;
echo "Apakah pemain mendapatkan hadiah tambahan? $prizeStatus <br>";
?>