<?php
$daftarNilai = [
    'Matematika' => [
        ['Alice', 85],
        ['Bob', 92],
        ['Charlie', 78],
        ['David', 64],
        ['Eva', 90],
    ],
];

$mataKuliah = 'Matematika';

$studentCount = count($daftarNilai[$mataKuliah]);

$scoreSum = 0;

foreach ($daftarNilai[$mataKuliah] as $nilai) {
    $scoreSum += $nilai[1];
}

$averageScore = $scoreSum/$studentCount;

echo "Daftar mahasiswa dengan nilai lebih dari rata rata di mata kuliah $mataKuliah ($averageScore): <br>";

foreach ($daftarNilai[$mataKuliah] as $nilai) {
    if ($nilai[1] > $averageScore) {
        echo "Nama: {$nilai[0]}, Nilai: {$nilai[1]} <br>";
    }
}
?>