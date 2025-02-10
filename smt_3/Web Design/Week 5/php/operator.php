<?php
$a = 10;
$b = 5;

$hasilTambah = $a + $b;
$hasilKurang = $a - $b;
$hasilKali = $a * $b;
$hasilBagi = $a / $b;
$sisaBagi = $a % $b;
$pangkat = $a ** $b;

echo "Hasil tambah dari {$a} dan {$b} adalah {$hasilTambah} <br>";
echo "Hasil kurang dari {$a} dan {$b} adalah {$hasilKurang} <br>";
echo "Hasil kali dari {$a} dan {$b} adalah {$hasilKali} <br>";
echo "Hasil bagi dari {$a} dan {$b} adalah {$hasilBagi} <br>";
echo "Hasil sisa bagi dari {$a} dan {$b} adalah {$sisaBagi} <br>";
echo "Hasil pangkat dari {$a} dan {$b} adalah {$pangkat} <br>";

$hasilSama = $a == $b;
$hasilTidakSama = $a != $b;
$hasilLebihKecil = $a < $b;
$hasilLebihBesar = $a > $b;
$hasilLebihKecilSama = $a <= $b;
$hasilLebihBesarSama = $a >= $b;

echo "Hasil komparatif sama dari {$a} dan {$b} adalah {$hasilSama} <br>";
echo "Hasil komparatif tidak sama dari {$a} dan {$b} adalah {$hasilTidakSama} <br>";
echo "Hasil komparatif lebih kecil dari {$a} dan {$b} adalah {$hasilLebihKecil} <br>";
echo "Hasil komparatif lebih besar dari {$a} dan {$b} adalah {$hasilLebihBesar} <br>";
echo "Hasil komparatif lebih kecil sama dengan dari {$a} dan {$b} adalah {$hasilLebihKecilSama} <br>";
echo "Hasil komparatif lebih besar sama dengan dari {$a} dan {$b} adalah {$hasilLebihBesarSama} <br>";

$hasilAnd = $a && $b;
$hasilOr = $a || $b;
$hasilNotA = !$a;
$hasilNotB = !$b;

echo "Hasil operasi logikal && dari {$a} dan {$b} adalah {$hasilAnd} <br>";
echo "Hasil operasi logikal || dari {$a} dan {$b} adalah {$hasilOr} <br>";
echo "Hasil operasi logikal ! dari {$a} adalah {$hasilNotA} <br>";
echo "Hasil operasi logikal ! dari {$b} adalah {$hasilNotB} <br>";

echo "Hasil operasi penugasan tambah dari {$a} dan {$b} ";
$a += $b;
echo "adalah {$a} <br>";
echo "Hasil operasi penugasan kurang dari {$a} dan {$b} ";
echo "";
$a -= $b;
echo "adalah {$a} <br>";
echo "Hasil operasi penugasan kali dari {$a} dan {$b} ";
$a *= $b;
echo "adalah {$a} <br>";
echo "Hasil operasi penugasan bagi dari {$a} dan {$b} ";
$a /= $b;
echo "adalah {$a} <br>";
echo "Hasil operasi penugasan sisa bagi dari {$a} dan {$b} ";
$a %= $b;
echo "adalah {$a} <br>";

$hasilIdentik = $a === $b;
$hasilTidakIdentik = $a !== $b;

echo "apakah {$a} dan {$b} identik? $hasilIdentik <br>";
echo "apakah {$a} dan {$b} tidak identik? $hasilTidakIdentik <br>";
?>