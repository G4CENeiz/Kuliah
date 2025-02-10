<html>
<title>Peminjaman Ruangan</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="assets/w3.css">
<body>

<?php
require_once "src/Controller.php";
Controller::displayError();
$data = (new Controller())->index();
?>

<div>
    <div class="w3-container w3-teal">
        <div class="w3-cell"><img width="60" height="60" src="assets/logo-polinema.png" class="w3-image"/></div>
        <div class="w3-cell w3-padding"><h1>Sistem Peminjaman Ruangan</h1></div>
    </div>

    <form method="post" target="" class="w3-container w3-light-grey">
        <h2>Entri Data Peminjaman</h2>
        <p>Isilah dengan lengkap data-data yang diminta pada formulir ini. Pastikan Anda mengisi form ini dengan
            benar!</p>

        <p><label>Nama Peminjam</label>
            <input class="w3-input w3-border w3-round-large" name="nama_peminjam" type="text"></p>

        <p><label>Jurusan/Unit Kerja</label>
            <input class="w3-input w3-border w3-round-large" name="unit_kerja" type="text"></p>

        <p><label>Tanggal Peminjaman</label>
            <input class="w3-input w3-border w3-round-large" name="tanggal_peminjaman" type="date"></p>

        <p><label>Lama Peminjaman (Hari)</label>
            <input class="w3-input w3-border w3-round-large" name="lama_peminjaman" type="text"></p>

        <p><label>Ruangan yang Dipinjam</label>
            <input class="w3-input w3-border w3-round-large" name="ruangan_yang_dipinjam" type="text"></p>

        <p><label>Lantai</label>
            <input class="w3-input w3-border w3-round-large" name="lantai" type="text"></p>

        <p>
            <input type="reset" class="w3-button w3-pink" name="reset" value="Reset"/>
            <input type="submit" class="w3-button w3-green" name="submit" value="Submit"/>
        </p>
    </form>
    <div class="w3-container">
        <h2>Data Peminjaman</h2>
        <p>Berikut ini adalah data peminjaman ruangan yang aktif saat ini:</p>

        <table class="w3-table w3-striped">
            <tr>
                <th>Nama Peminjam</th>
                <th>Unit Kerja</th>
                <th>Tanggal Peminjaman</th>
                <th>Lama Peminjaman</th>
                <th>Ruangan yang Dipinjam</th>
                <th>Lantai</th>
            </tr>
            <?php if(!empty($data)) { ?>
                <?php foreach ($data as $row) { ?>
                    <tr>
                        <td><?php echo $row['nama_peminjam']; ?></td>
                        <td><?php echo $row['unit_kerja']; ?></td>
                        <td><?php echo $row['tanggal_peminjaman']; ?></td>
                        <td><?php echo $row['lama_peminjaman']; ?></td>
                        <td><?php echo $row['ruangan_yang_dipinjam']; ?></td>
                        <td><?php echo $row['lantai']; ?></td>
                    </tr>
                <?php } ?>
            <?php } ?>
        </table>
    </div>
    <hr class="w3-clear"/>
    <div class="w3-container w3-teal">
        <p>Copyright (c) 2023 Jurusan Teknologi Informasi Polinema</p>
    </div>
</div>

</body>
</html>